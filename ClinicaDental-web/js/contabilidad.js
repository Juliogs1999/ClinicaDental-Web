var totalContabilidad = 0;
var totalIngresostotal = 0;
//let listaTratamientos = [];
var totalPorDoctorSeleccionado = 0; 
// Función para obtener y filtrar los datos según doctor y sede
function obtenerDatosFiltrados() {
    var doctorSeleccionado = $("#selectDoctor").val();
    var sedeSeleccionada = $("#selectSede").val();
    var rutaConta = "http://localhost/serviciosmiley/contabilidad/servicio-ver-conta.php";

    fetch(rutaConta)
        .then(response => response.json())
        .then(datos => {
            let datosFiltrados = datos;

            // Filtrar por doctor si se selecciona uno
            if (doctorSeleccionado) {
                datosFiltrados = datosFiltrados.filter(item => item.Doctorcont === doctorSeleccionado);
            }

            // Filtrar por sede si se selecciona una sede
            if (sedeSeleccionada) {
                datosFiltrados = datosFiltrados.filter(item => item.Sedecont === sedeSeleccionada);
            }

            // Ordenar por fecha
            datosFiltrados.sort((a, b) => new Date(a.Fechacont) - new Date(b.Fechacont));

            // Llenar la tabla con los datos filtrados
            llenarTabla1(datosFiltrados);

            // Calcular el total de los ingresos con los datos filtrados
            /*let totalIngresos = calcularTotalIngresos(datosFiltrados);
            $("#tbody-total-contabilidad").html(`<tr><td class='text-center bg-success'>S/. ${totalIngresos.toFixed(2)}</td></tr>`);*/
        });
}

// Evento para el cambio en el select del doctor
$("#selectDoctor").change(function () {
    obtenerDatosFiltrados();
});

// Evento para el cambio en el select de la sede
$("#selectSede").change(function () {
    obtenerDatosFiltrados();
});
leerConta = () => {
    var rutaConta = "http://localhost/serviciosmiley/contabilidad/servicio-ver-conta.php";
    fetch(rutaConta)
    .then(response => response.json())
    .then(datos => {
        console.log(datos);
        totalIngresostotal = calcularTotalIngresos(datos);

            // Actualizar el total en el DOM
        $("#tbody-total-contabilidad").html(`<tr><td class='text-center bg-success'>S/. ${totalIngresostotal.toFixed(2)}</td></tr>`);
        // Llenar la tabla inicialmente
        llenarTabla1(datos);
        
        // Llenar el select de doctores
        llenarSelectDoctores(datos);
        //totalContabilidad = calcularTotalContabilidad(datos);
        //$("#tbody-total-contabilidad").html("<tr><td class='text-center'>S/. " + totalContabilidad.toFixed(2) + "</td></tr>");
        llenarSelectSedes(datos);
    });
};
calcularTotalIngresos = (datos) => {
    return datos.reduce((acumulador, item) => {
        // Convertir valores a números (manejar NaN)
        const tecnico = parseFloat(item.Tecnico) || 0;
        const ingreso = parseFloat(item.Pagocont) || 0;
        const cantidad = parseFloat(item.Cantidadcont) || 0;

        // Calcular desVisa
        const desVisa = ["Visa", "Mastercard", "Link"].includes(item.Metodocont)
            ? ingreso * cantidad * 0.95
            : ingreso * cantidad;

        // Calcular impuesto
        const impuesto = ingreso * cantidad * 0.11;

        // Calcular total
        const total = desVisa - impuesto - tecnico;

        // Acumular el total
        return acumulador + total;
    }, 0);
};
llenarSelectDoctores = (datos) => {
    const doctores = [...new Set(datos.map(item => item.Doctorcont))];
    const select = $("#selectDoctor");
    
    // Limpiar el select
    select.empty();
    
    // Agregar una opción predeterminada
    select.append(`<option value="">Seleccionar Doctor</option>`);

    // Agregar las opciones de doctores
    doctores.forEach(doctor => {
        select.append(`<option value="${doctor}">${doctor}</option>`);
    });
};
llenarSelectSedes = (datos) => {
    const sedes = [...new Set(datos.map(item => item.Sedecont))];
    const select = $("#selectSede");

    // Limpiar el select
    select.empty();

    // Agregar una opción predeterminada
    select.append(`<option value="">Seleccione una Sede</option>`);

    // Agregar las opciones de sedes
    sedes.forEach(sede => {
        select.append(`<option value="${sede}">${sede}</option>`);
    });
};
buscarClientePorHistoria = (historia) => {
    var rutaCliente = "http://localhost/serviciosmiley/contabilidad/servicio-obtener-paciente.php"; // Ruta para buscar cliente

    return fetch(`${rutaCliente}?historia=${historia}`)
        .then(response => response.json())
        .then(datos => {
            if (datos.length > 0) {
                const cliente = datos[0];
                return cliente;
            } else {
                return null;
            }
        });
};
leerConta();
llenarTabla1 = (datos) => {
   
    $("#tbody-contabilidad").html(""); // Limpiar el contenido de ambas tablas
    
    totalPorDoctorSeleccionado = 0;
    //totalPagoSeleccionado = 0;
    //totalDescuentoSeleccionado = 0;
    totalContabilidad = 0;
 
    datos.sort((a, b) => new Date(a.Fechacont) - new Date(b.Fechacont));
    //let tratamientosPorHistoria = {};
    $(datos).each((index, value) => {
    
        var fila = "<tr id='fila-" + index + "'>";
        function formatDate(dateString) {
            // Verificar si la cadena de fecha es nula o vacía
            if (!dateString || dateString.trim() === "" || !/^\d{4}-\d{2}-\d{2}$/.test(dateString)) {
                return "dd/mm/aaaa"; // Devuelve "dd/mm/aaaa" si la cadena de fecha no es válida
            }
        
            // Dividir la cadena de fecha para obtener día, mes y año
            var parts = dateString.split('-');
        
            // Crear un nuevo objeto Date con los componentes de fecha obtenidos
            var date = new Date(parts[0], parts[1] - 1, parts[2]);
        
            // Validar si la fecha es válida
            if (isNaN(date.getTime()) || date.getFullYear() < 2000) {
                return "dd/mm/aaaa"; // Devuelve "dd/mm/aaaa" si la fecha es inválida
            }
        
            // Obtener el día del mes
            var day = String(date.getDate()).padStart(2, '0');
        
            // Obtener el nombre del mes
            var monthNames = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
                "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
            var monthIndex = date.getMonth();
            var month = monthNames[monthIndex];
        
            // Obtener el año
            var year = date.getFullYear();
        
            // Formatear la fecha como "dia de mes de año"
            return day + ' ' + month + ' ' + year;
        }
        
        let ingreso = parseFloat(value.Pagocont) || 0; 
        let cantidad = parseFloat(value.Cantidadcont) || 0; 
        ingresototal = ingreso * cantidad;
        let tecnico = parseFloat(value.Tecnico) || 0;
        //let totalfinal = calcularTotal(ingreso, value.Metodocont);
        
        fila += "<td class='contenedor-contabilidad' style='border: none;'><i class='bi bi-x-lg boton-eliminarcontabilidad'></i></td>";
        fila += `<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>${index + 1}</td>`;
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + formatDate(value.Fechacont) + "</td>";
      
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Historia + "</td>";
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" +  value.Clientecont + "</td>";
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" +  value.Dnicont + "</td>";
        
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Cantidadcont + "</td>";

       
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Tratamientocont + "</td>";
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Metodocont + "</td>";
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + "S/. " + ingreso.toFixed(2) + "</td>"; // Subtotal
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + "S/. " + ingresototal.toFixed(2) + "</td>"; // Subtotal
       // Calcular DESVISA
        let desVisa = (["Visa", "Mastercard", "Link"].includes(value.Metodocont)) ? ingresototal * 0.95 : ingresototal;
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + "S/. " + desVisa.toFixed(2) + "</td>"; // DESVISA

        // Calcular IMPUESTO
        let impuesto = ingresototal * 0.11; // 11% del ingreso
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + "S/. " + impuesto.toFixed(2) + "</td>"; // IMPUESTO

        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + "S/. " + tecnico.toFixed(2) + "</td>"; 
        let pagodoctor=0;
        const tratamientosEspeciales = [
            "Period Aid 0.12% (500ml)", "Period Aid 0.12% (150ml)", "Period Aid 0.05% (500ml)", "Period Aid 0.05% (150ml)",
            "Enjuague Junior", "Enjuague Ortodoncia", "Enjuague Encias", "Enjuague Halita", 
            "XEROS SPRAID", "Vitis CPC Protect", "Vitamina C", "Pasta Blanqueadora", 
            "Pasta Ortodoncia", "Pasta Junior", "Pasta Encias", "Pasta Aloe Vera", "Pasta CPC",
            "Cepillo InterProx Mini", "Cepillo InterProx SuperMicro", "Cepillo Vitis Baby", 
            "Cepillo Neceser Kids", "Cepillo Neceser Junior", "Cepillo Vitis Duro", "Cepillo Vitis Junior", 
            "Cepillo Vitis Ultrasuave", "Cepillo Vitis Perio", "Cepillo Vitis", "Cepillo Encias", 
            "Cepillo Orthodontic", "Coctel"
        ];
        
        // Calcular total final
        if (value.Tratamientocont === "Radiografia") {
            // Si el tratamiento es "Radiografía", el total es 5 soles fijos
            pagodoctor = 5;
        } else if (tratamientosEspeciales.includes(value.Tratamientocont)) {
            // Para los tratamientos especiales: (desVisa - impuesto) * 0.15
            pagodoctor = (desVisa - impuesto - tecnico) * 0.15;
        } else {
            if (value.Doctorcont === "Dra. Madelyn Placido") {
                // Condiciones específicas para la Dra. Madelyn Placido
                if (value.Tratamientocont === "Instalacion de Brackets Convencionales") {
                    pagodoctor = 0; // Total fijo para "Instalacion de Brackets Convencionales"
                } else if (value.Tratamientocont === "Instalacion de Brackets Autoligantes") {
                    pagodoctor = 700; // Total fijo para "Instalacion de Brackets Autoligantes"
                } else if (value.Tratamientocont === "Instalacion de Brackets Esteticos") {
                    pagodoctor = 1200; // Total fijo para "Instalacion de Brackets Esteticos"
                } else if (value.Tratamientocont === "Instalacion de Brackets Zafiro") {
                    pagodoctor = 1200; // Total fijo para "Instalacion de Brackets Zafiro"
                } else if (value.Tratamientocont === "Pegada de Brackets" || value.Tratamientocont === "Repegado de Brackets" || value.Tratamientocont === "Control de Ortodoncia") {
                    pagodoctor = desVisa * 0.50; // Para "Pegada de Brackets" y "Repegado de Brackets", es el 50% de "desVisa"
                } else {
                    // Si no es ninguno de estos tratamientos, aplicar porcentaje normal
                    pagodoctor = (desVisa - impuesto - tecnico) * 0.40;
                }
            } else if (value.Doctorcont === "Dr. Hans Gamarra") {
                // Condiciones específicas para el Dr. Hans Gamarra
                if (["Endodoncia Molares o Posterior", "Endodoncia Anteriores", "Endodoncia Premolar", "Retratamiento Molares", "Retratamiento Anterior"].includes(value.Tratamientocont)) {
                    // Para estos tratamientos específicos, usar el ingreso directamente
                    pagodoctor = ingresototal; 
                } else {
                    // Para el resto de tratamientos, aplicar el 35% de comisión
                    pagodoctor = (desVisa - impuesto - tecnico) * 0.40; // Puedes ajustar el porcentaje si es necesario
                }
            }
             else if (value.Doctorcont === "Dr. Jhon Zelada") {
                // Si el doctor es "Dr. Jhon Zelada", aplicar el 35% de comisión
                pagodoctor = (desVisa - impuesto - tecnico) * 0.35;
            } else {
                // Para los demás doctores, aplicar el 40% de comisión
                pagodoctor = (desVisa - impuesto - tecnico) * 0.40;
            }
        }
        pagodoctor *= value.Cantidadcont; 
        
        //totalPagodoctor += pagodoctor; 
        let total = desVisa - impuesto - tecnico;
        fila += "<td class='letra-oswald700 bg-success' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + total.toFixed(2) + "</td>";
        fila += "<td class='letra-oswald700 bg-warning' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + "S/. " + pagodoctor.toFixed(2) + "</td>"; // Total final
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Doctorcont + "</td>";
        fila += "<td class='letra-oswald700' style='font-size: 1.2em; padding-top: 0px; letter-spacing: -1px;'>" + value.Sedecont + "</td>";


        let filaId = 'fila-' + index;
        let confirmado = localStorage.getItem(filaId) === 'true'; // Recuperar si la fila fue confirmada
        let displayCheck = confirmado ? 'inline-block' : 'none';
        let displayX = confirmado ? 'none' : 'inline-block';
        fila += "<td class='contenedor-contabilidad2'><i class='bi bi-pencil-fill boton-actualizarcontabilidad' data-bs-toggle='modal' data-bs-target='#modal-actualizarse'></i></td>";

        fila += `<td class='contenedor-contabilidad2' style='border: none;'><i class='bi bi-x-circle-fill x-icon' style='color: red; cursor: pointer; display: ${displayX};'></i><i class='bi bi-check-circle-fill check-icon' style='color: green; cursor: pointer; display: ${displayCheck};'></i></td>`;
        //fila += `<td class='contenedor-contabilidad2' style='border: none;'></td>`;
     
        fila += "</tr>";     
        $("#tbody-contabilidad").append(fila);
        
        totalPorDoctorSeleccionado += pagodoctor;
        //totalPagoSeleccionado += ingresototal;
        //totalDescuentoSeleccionado += desVisa;
        totalContabilidad += total;
    });
    var filaTotal = "<tr><td colspan='14' style='text-align: right; font-weight: bold; border: none;'>Total:</td>";
    filaTotal += `<td class='letra-oswald700 bg-success' style='font-size: 1.2em;'>S/. ${totalContabilidad.toFixed(2)}</td>`;
    filaTotal += `<td class='letra-oswald700 bg-warning' style='font-size: 1.2em;'>S/. ${totalPorDoctorSeleccionado.toFixed(2)}</td>`;
    filaTotal += "<td colspan='2' style='border: none;'></td></tr>"; // Puedes dejar algunas columnas vacías
    $("#tbody-contabilidad").append(filaTotal);
   
    
    
    //$("#tbody-total-doctor").html("<tr><td class='bg-warning'>S/. " + totalPorDoctorSeleccionado.toFixed(2) + "</td></tr>");
    //$("#tbody-total-pago").html("<tr><td class='bg-info'>S/. " + totalPagoSeleccionado.toFixed(2) + "</td></tr>");
    //$("#tbody-total-descuento").html("<tr><td class='bg-info-subtle'>S/. " + totalDescuentoSeleccionado.toFixed(2) + "</td></tr>");
   // $("#tbody-total-contabilidad").html("<tr><td class='text-center bg-success'>S/. " + totalContabilidad.toFixed(2) + "</td></tr>");           
    actualizarDiferencia();
   
    let codigoContabilidadAEliminar = null;
    // Asignar evento de clic al botón de eliminar en ambas tablas
    $(".boton-eliminarcontabilidad").click(function() {
        var filaActual = $(this).parent().parent();
        var posicion = filaActual.index();
        codigoContabilidadAEliminar = datos[posicion].Codigocont;

    // Mostrar el modal de confirmación
    $("#modal-confirmar-eliminacion").modal('show');
 });
 $("#btnConfirmarEliminar").click(function() {
    // Obtener la contraseña ingresada
    var password = $("#inputPassword").val();

    if (password === "smiley.1234") {
        eliminarContabilidad(codigoContabilidadAEliminar);
        $("#modal-confirmar-eliminacion").modal('hide');
    } else {
        alert("Contraseña incorrecta. Inténtalo de nuevo.");
    }
});
 $(".boton-actualizarcontabilidad").click(function() {
    var filaActual = $(this).parent().parent();

    var posicion = filaActual.index();
    
    $("#txtCodigocontActualizar").val(datos[posicion].Codigocont);
    $("#txtSedecontActualizar").val(datos[posicion].Sedecont);
    $("#txtFechacontActualizar").val(datos[posicion].Fechacont);
    $("#txtHistoriacontActualizar").val(datos[posicion].Historia);
    $("#txtClientecontActualizar").val(datos[posicion].Clientecont);
    $("#txtDnicontActualizar").val(datos[posicion].Dnicont);
    $("#txtCantidadcontActualizar").val(datos[posicion].Cantidadcont);
    $("#txtTratamientocontActualizar").val(datos[posicion].Tratamientocont);
    $("#txtTipopagoActualizar").val(datos[posicion].Metodocont);
    $("#txtPagoActualizar").val(datos[posicion].Pagocont);
    $("#txtTecnicoActualizar").val(datos[posicion].Tecnico);
    $("#txtDoctorcontActualizar").val(datos[posicion].Doctorcont);

    //var filaId = filaActual.attr("id");
    //localStorage.setItem('filaActual', filaId);

   
});
$(".x-icon").click(function() {
    var filaActual = $(this).closest('tr');
    var checkIcon = filaActual.find(".check-icon");

    // Pedir contraseña para confirmar
    let password = prompt("Introduce la contraseña para confirmar:");

    // Verificar la contraseña
    if (password === "1234") {
        // Cambiar los íconos: mostrar el "check" y ocultar la "x"
        checkIcon.show();
        $(this).hide();

        // Guardar en localStorage que esta fila está confirmada
        let filaId = filaActual.attr("id");
        localStorage.setItem(filaId, 'true');
    } else {
        alert("Contraseña incorrecta.");
    }
});

// Función para manejar la acción del "check"
$(".check-icon").click(function() {
    alert("La fila ha sido confirmada.");
});

};




// Función para eliminar el paciente
eliminarContabilidad = (Codigocont) => {
    var ruta = "http://localhost/serviciosmiley/contabilidad/servicio-eliminar-conta.php";

    var formData = new FormData();
    formData.append("codigocont",Codigocont);
    

    fetch(ruta,{
        method: 'POST', 
        body: formData
    })
    .then(response => response.text())
    .then(() =>{
        leerConta();
    })
 }
 $("#txtHistoria").on('blur', function() {
    var historia = $(this).val();
    
    if (historia) {
        buscarClientePorHistoria(historia)
            .then(cliente => {
                if (cliente) {
                    var primerNombre = cliente.Nombre.split(' ')[0];
                    var primerApellido = cliente.Apellido.split(' ')[0];
                    var nombreCompleto = primerNombre + " " + primerApellido;
                    
                    
                    $("#txtClientecont").val(nombreCompleto); // Rellenar nombre completo del cliente
                    $("#txtClientecont").prop("readonly", true); // Establecer como solo lectura
                    $("#txtClientecont").removeClass('cliente-no-encontrado'); // Quitar clase de error
                    if (cliente.Dni) {
                        $("#txtDnicont").val(cliente.Dni); // Suponiendo que tienes un campo para el DNI
                        $("#txtDnicont").removeClass('cliente-no-encontrado'); // Quitar clase si se encuentra el DNI
                    } else {
                        $("#txtDnicont").val("Numero Documento no encontrado"); // Mensaje de error si no se encuentra el DNI
                        $("#txtDnicont").addClass('cliente-no-encontrado'); // Añadir clase de error
                    }
                } else {
                    $("#txtClientecont").val("Paciente no encontrado"); // Mostrar mensaje dentro del campo
                    $("#txtClientecont").prop("readonly", false); // Hacerlo editable de nuevo
                    $("#txtClientecont").addClass('cliente-no-encontrado'); // Añadir clase de error
                    $("#txtDnicont").val("Numero Documento no encontrado"); // Mensaje de error en DNI
                    $("#txtDnicont").addClass('cliente-no-encontrado');
                }
            })
            .catch(error => {
                console.error("Error:", error);
                $("#txtDnicont").val("Error en la búsqueda"); // Manejo de errores
                $("#txtDnicont").addClass('cliente-no-encontrado');
            });
    } else {
        $("#txtClientecont").val("");
        $("#txtDnicont").val("");
        $("#txtClientecont").prop("readonly", false); // Hacerlo editable si no hay número de historia
        $("#txtClientecont").removeClass('cliente-no-encontrado'); // Quitar clase de error
        $("#txtDnicont").removeClass('cliente-no-encontrado'); 
    }
});
$("#txtHistoriacontActualizar").on('blur', function() {
    var historia = $(this).val();

    if (historia) {
        buscarClientePorHistoria(historia)
            .then(cliente => {
                if (cliente) {
                    var primerNombre = cliente.Nombre.split(' ')[0];
                    var primerApellido = cliente.Apellido.split(' ')[0];
                    var nombreCompleto = primerNombre + " " + primerApellido;
                    
                    $("#txtClientecontActualizar").val(nombreCompleto); // Rellenar nombre completo del cliente
                    $("#txtClientecontActualizar").prop("readonly", true); // Establecer como solo lectura
                    $("#txtClientecontActualizar").removeClass('cliente-no-encontrado'); // Quitar clase de error
                    if (cliente.Dni) {
                        $("#txtDnicontActualizar").val(cliente.Dni); // Suponiendo que tienes un campo para el DNI
                        $("#txtDnicontActualizar").removeClass('cliente-no-encontrado'); // Quitar clase si se encuentra el DNI
                    } else {
                        $("#txtDnicontActualizar").val("Numero Documento no encontrado"); // Mensaje de error si no se encuentra el DNI
                        $("#txtDnicontActualizar").addClass('cliente-no-encontrado'); // Añadir clase de error
                    }
                } else {
                    $("#txtClientecontActualizar").val("Paciente no encontrado"); // Mostrar mensaje dentro del campo
                    $("#txtClientecontActualizar").prop("readonly", false); // Hacerlo editable de nuevo
                    $("#txtClientecontActualizar").addClass('cliente-no-encontrado'); // Añadir clase de error
                    $("#txtDnicontActualizar").val("Numero Documento no encontrado");
                    $("#txtDnicontActualizar").addClass('cliente-no-encontrado');
                }
            })
            .catch(error => {
                console.error("Error:", error);
                $("#txtDnicontActualizar").val("Error en la búsqueda"); // Manejo de errores
                $("#txtDnicontActualizar").addClass('cliente-no-encontrado');
            });
    } else {
        $("#txtClientecontActualizar").val("");
        $("#txtDnicontActualizar").val("");
        $("#txtClientecontActualizar").prop("readonly", false); // Hacerlo editable si no hay número de historia
        $("#txtClientecontActualizar").removeClass('cliente-no-encontrado'); // Quitar clase de error
        $("#txtDnicontActualizar").removeClass('cliente-no-encontrado'); 
    }
});


$("#btnAgregarCont").click((event) => {
    event.preventDefault();

    var historia = $("#txtHistoria").val();
    var dnicont = $("#txtDnicont").val();
    var sedecont = $("#txtSedecont").val();
    var fechacont = $("#txtFechacont").val();
    var cantidadcont = $("#txtCantidadcont").val();
    var tratamientocont = $("#txtTratamientocont").val();
    var metodocont = $("#txtTipopago").val();
    var pagocont = $("#txtPago").val();
    var tecnico = $("#txtTecnico").val();
    var doctorcont = $("#txtDoctorcont").val();

    if (historia === "" || sedecont === "" || fechacont === "" || cantidadcont === "" || tratamientocont === "" || metodocont === "" || pagocont === "" || doctorcont === "") {
        alert("Todos los campos son obligatorios");
        return;
    }
 // Limpiar los campos del formulario

    // Buscar cliente basado en el número de historia
    buscarClientePorHistoria(historia)
        .then(cliente => {
            if (cliente) {
                var primerNombre = cliente.Nombre.split(' ')[0]; // Asumir que el primer nombre está antes del primer espacio
                var primerApellido = cliente.Apellido.split(' ')[0]; // Asumir que el primer apellido está antes del primer espacio
                var nombreCompleto = primerNombre + " " + primerApellido;
                $("#txtClientecont").val(nombreCompleto); // Rellenar nombre completo del cliente
                $("#txtHistoria").val(cliente.Codigo); 
                // Preparar datos para enviar al servidor
                var rutacont = "http://localhost/serviciosmiley/contabilidad/servicio-agregar-conta.php";
                var formData = new FormData();
                formData.append("sedecont", sedecont);
                formData.append("fechacont", fechacont);
                formData.append("clientecont", nombreCompleto);
                formData.append("historiacont", cliente.Codigo);
                formData.append("cantidadcont", cantidadcont);
                formData.append("tratamientocont", tratamientocont);
                formData.append("metodocont", metodocont);
                formData.append("pagocont", pagocont);
                formData.append("tecnico", tecnico);
                formData.append("doctorcont", doctorcont);
                formData.append("dnicont", dnicont); 

                // Enviar datos al servidor
                return fetch(rutacont, {
                    method: 'POST',
                    body: formData
                })
                .then(response => response.text())
                .then(() => {
                  
                    leerConta(); // Refrescar la tabla
                    alert("Ingreso Exitoso para el Paciente: " + nombreCompleto);
                    
                    // Limpiar los campos del formulario después de la operación exitosa
                    $("#txtSedecont").val("");
                    $("#txtFechacont").val("");
                    $("#txtClientecont").val("");
                    $("#txtHistoria").val("");
                    $("#txtCantidadcont").val("");
                    $("#txtTratamientocont").val("");
                    $("#txtTipopago").val("");
                    $("#txtPago").val("");
                    $("#txtTecnico").val("");
                    $("#txtDoctorcont").val("");
                    $("#txtDnicont").val("");
                });
            } else {
                alert("Número de historia no encontrado");
                return Promise.reject("Número de historia no encontrado");
            }
        })
        .catch(error => {
            console.error("Error:", error);
        });
});
$("#btnActualizarConta").click((event) => {
    event.preventDefault();
    
    // Mostrar el modal de confirmación
    $("#modal-confirmar-actualizacion").modal('show');
});
$("#btnConfirmarActualizar").click(function() {
    // Obtener la contraseña ingresada
    var password = $("#inputPasswordActualizar").val();

    if (password === "smiley.1234") {
    var codigocont = $("#txtCodigocontActualizar").val();
    var sedecont = $("#txtSedecontActualizar").val();
    var fechacont = $("#txtFechacontActualizar").val();
    var historia = $("#txtHistoriacontActualizar").val();
    var dnicont = $("#txtDnicontActualizar").val();
    var cantidadcont= $("#txtCantidadcontActualizar").val();
    var tratamientocont = $("#txtTratamientocontActualizar").val();
    var metodocont = $("#txtTipopagoActualizar").val();
    var pagocont = $("#txtPagoActualizar").val();
    var tecnico = $("#txtTecnicoActualizar").val();
    var doctorcont = $("#txtDoctorcontActualizar").val();
    //var filaActual = JSON.parse(localStorage.getItem('filaActual'));


    buscarClientePorHistoria(historia)
    .then(cliente => {
        console.log('Paciente encontrado:', cliente); // Depuración
        if (cliente) {
            var primerNombre = cliente.Nombre.split(' ')[0]; // Asumir que el primer nombre está antes del primer espacio
            var primerApellido = cliente.Apellido.split(' ')[0]; // Asumir que el primer apellido está antes del primer espacio
            var nombreCompleto = primerNombre + " " + primerApellido;
            $("#txtClientecontActualizar").val(nombreCompleto); // Rellenar nombre completo del cliente
            $("#txtHistoriacontActualizar").val(cliente.Codigo); 
            
            // Confirmar actualización
            var ruta = "http://localhost/serviciosmiley/contabilidad/servicio-actualizar-conta.php";

            var formData = new FormData();
            formData.append("codigocont", codigocont);
            formData.append("sedecont", sedecont);
            formData.append("fechacont", fechacont);
            formData.append("clientecont", nombreCompleto);
            formData.append("historiacont", cliente.Codigo);
            formData.append("cantidadcont", cantidadcont);
            formData.append("tratamientocont", tratamientocont);
            formData.append("metodocont", metodocont);
            formData.append("pagocont", pagocont);
            formData.append("tecnico", tecnico);
            formData.append("doctorcont", doctorcont);
            formData.append("dnicont", dnicont); 

            // Enviar datos al servidor para actualización
            return fetch(ruta, {
                method: 'POST',
                body: formData
            })
            .then(response => response.text())
            .then(() => {
                
                leerConta(); // Refrescar la tabla
                //$("#modal-actualizarse").modal('hide');
                $("#modal-confirmar-actualizacion").modal('hide');
                $("#inputPasswordActualizar").val(""); // Limpiar el campo de contraseña

                // Obtener el ID de la fila actualizada
                var filaActualizada = $(".boton-actualizarcontabilidad").closest("tr");

                // Cambiar los íconos: ocultar el "check" y mostrar la "x"
                filaActualizada.find(".check-icon").hide(); // Ocultar "check" verde
                filaActualizada.find(".x-icon").show(); // Mostrar "x" roja

                // Actualizar el estado en el localStorage
                var filaId = filaActualizada.attr("id");
                localStorage.setItem(filaId, 'false');
            });
        } else {
            alert("Número de historia no encontrado");
            return Promise.reject("Número de historia no encontrado");
        }
    })
    .catch(error => {
        console.error("Error:", error);
    });
} else {
alert("Contraseña incorrecta. Inténtalo de nuevo.");
}
});


      

        
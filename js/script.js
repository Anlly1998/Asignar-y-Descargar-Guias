src="https://code.jquery.com/jquery-3.6.0.min.js"

integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="

crossorigin="anonymous"

src="./sweetalert2@11.js"
src="/css/main.css">

//Llamamos a las funciones
cargar();
mostrarTotalGuias();

//guardar las guias
$(document).ready(function(){
    $( "#form" ).on( "submit", function(e) {
        e.preventDefault(); 
        //Notificacion
        Swal.fire({
            html: '<b class="notificacion">¿Quieres guardar la guia?</b>',
            icon: 'question',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Guardar',
            cancelButtonText: 'Cancelar'
          }).then((resultado) => {
            //Si deseamos guardar la guia
            if (resultado.isConfirmed) {
                e.preventDefault();
                $.ajax({
                    url: "./php/guardarGuias.php",
                    type: "POST",
                    data:{'guia': $('#guia').val(),'idMensajero':$('#menuMensajero').val()},
                    success: function(result){
                        Swal.fire(result).then((resultado) => {
                            window.location.reload()
                        })
                    },
                    error: function(error){
                        Swal.fire('Error' + error)
                    }
                });
                e.preventDefault();
            }
            //Si cancelamos
            else{
                location.reload();
                return false;
            }
          })
    });
});

//Funcion para mostrar mensajeros
function cargar(){
    $.ajax({
        url: "./php/mostrarMensajeros.php",
        type: "POST",
        success: function(result){
            console.log(result)
            $('#menuMensajero').html(result);

        },
        error: function(error){
            console.log('Error '+ error)
        }
    })
}

//Funcion que muestra la cantidad de guias que hay asignadas
function mostrarTotalGuias(){
    $.ajax({
        url: "./php/mostrarTotalGuias.php",
        type: "POST",
        success: function(mostrarTotal){
            console.log(mostrarTotal)
            $('#totalGuias').html(mostrarTotal);
        },
        error: function(error){
            console.log('Error '+ error)
        }
    })
}



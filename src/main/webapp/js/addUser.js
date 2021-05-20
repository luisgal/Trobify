
function add_User() {

    var idUser = $('#idUser').val();
    var pass = $('#password').val();
    var nombre = $('#nombre').val();
    var app = $('#app').val();
    var apm = $('#apm').val();
    var privilegio = document.getElementById("privilegio").value;
    var grado = document.getElementById("grado").value;
    console.log(idUser + pass + nombre + app + apm + privilegio + grado);

    $.ajax({
        url: 'AddUserServlet',
        type: 'POST',
        data: {
            idUsuario: idUser,
            password: pass,
            nombre: nombre,
            app: app,
            apm: apm,
            privilegio: privilegio,
            grado: grado
        },
        cache: false,

        success: function (response) {

            $('#idUser').val("");
            $('#password').val("");
            $('#nombre').val("");
            $('#app').val("");
            $('#apm').val("");

            alert("Registro Exitoso");


        },
        error: function (req, status, err) {
            alert(status + "    \n\n " + err);

        }
    });



    return false;


}
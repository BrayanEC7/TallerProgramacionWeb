function login(){
    var user, pass;

    user = document.getElementById("nombre2").value;
    pass = document.getElementById("contraseña").value;

    if(user == "" || pass == ""){
        alert("Falta completar.");
    }

}
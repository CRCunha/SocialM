function pegarDia() {
    var d = new Date();
    var diaToCard = d.getDay();
    var dia = d.getDate();
    var mes = d.getMonth();
    var ano = d.getFullYear();

    if (dia < 10) {
        dia = "0" + dia;
    }

    if (mes < 10) {
        mes = "0" + (mes + 1);
    }

    var diaCard = document.querySelector("#info-top-dia");
    var dataCard = document.querySelector("#info-top-data");

    var elemento = document.querySelector("#card");
    var linha = document.querySelector("#linha");

    var str_data = dia + '/' + mes + '/' + ano;

    switch (diaToCard) {
        case 0:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #845ec2, #e65faa, #ff8080, #ffbb61, #f9f871)";
            diaCard.innerHTML = "Domingo";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #845ec2, #e65faa, #ff8080, #ffbb61, #f9f871)";
            break;
        case 1:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #845ec2, #9c5dc0, #b15dbc, #c55cb7, #d65db1)";
            diaCard.innerHTML = "Segunda";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #845ec2, #9c5dc0, #b15dbc, #c55cb7, #d65db1)";
            break;
        case 2:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #d65db1, #e35fa9, #ee63a1, #f86899, #ff6f91)";
            diaCard.innerHTML = "Terça";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #d65db1, #e35fa9, #ee63a1, #f86899, #ff6f91)";
            break;
        case 3:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #ff6f91, #ff7887, #ff817e, #ff8c76, #ff9671)";
            diaCard.innerHTML = "Quarta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #ff6f91, #ff7887, #ff817e, #ff8c76, #ff9671)";
            break;
        case 4:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #ff9671, #ffa16b, #ffad65, #ffba61, #ffc75f)";
            diaCard.innerHTML = "Quinta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #ff9671, #ffa16b, #ffad65, #ffba61, #ffc75f)";
            break;
        case 5:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #ffc75f, #ffd361, #fedf65, #fcec6a, #f9f871)";
            diaCard.innerHTML = "Sexta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #ffc75f, #ffd361, #fedf65, #fcec6a, #f9f871)";
            break;
        case 6:
            elemento.style.backgroundImage = "linear-gradient(to left top, #845ec2, #e65faa, #ff8080, #ffbb61, #f9f871)";
            diaCard.innerHTML = "Sabado";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to left top, #845ec2, #e65faa, #ff8080, #ffbb61, #f9f871)";
            break;
    }
}

function modalAvatar() {
    var elemento = document.querySelector(".modalAvatar");
    elemento.style.display = "block";
    var elementoBody = document.querySelector("header");
    elementoBody.style.filter = "blur(20px)";
    var elementoGrupo = document.querySelector(".grupo-container");
    elementoGrupo.style.filter = "blur(20px)";
}

function modalAvatarClose() {
    var elemento = document.querySelector(".modalAvatar");
    elemento.style.display = "none";
    var elementoBody = document.querySelector("header");
    elementoBody.style.filter = "blur(0px)";
    var elementoGrupo = document.querySelector(".grupo-container");
    elementoGrupo.style.filter = "blur(0px)";

    var elementoLog = document.querySelector(".container-form-log");
    var elementoReg = document.querySelector(".container-form-reg");
    elementoLog.style.display = "none";
    elementoReg.style.display = "none";
}

function login() {
    var elementoLog = document.querySelector(".container-form-log");
    var elementoReg = document.querySelector(".container-form-reg");

    elementoLog.style.display = "flex";
    elementoReg.style.display = "none";
}

function register() {
    var elementoLog = document.querySelector(".container-form-log");
    var elementoReg = document.querySelector(".container-form-reg");

    elementoLog.style.display = "none";
    elementoReg.style.display = "flex";
}
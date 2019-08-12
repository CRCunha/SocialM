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
    var linhaChat = document.querySelector("#linha-chat");

    var str_data = dia + '/' + mes + '/' + ano;

    switch (diaToCard) {
        case 0:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f14d8d, #e16cb8, #ca88d5, #b2a0e5)";
            diaCard.innerHTML = "Domingo";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f14d8d, #e16cb8, #ca88d5, #b2a0e5)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f14d8d, #e16cb8, #ca88d5, #b2a0e5)";
            break;
        case 1:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #9164ff, #009fff, #00c7ff, #00e6ff, #88fff4)";
            diaCard.innerHTML = "Segunda";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #9164ff, #009fff, #00c7ff, #00e6ff, #88fff4)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #9164ff, #009fff, #00c7ff, #00e6ff, #88fff4)";
            break;
        case 2:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f06947, #e59147, #d8b25e, #cdcd85)";
            diaCard.innerHTML = "Terça";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f06947, #e59147, #d8b25e, #cdcd85)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f06947, #e59147, #d8b25e, #cdcd85)";
            break;
        case 3:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            diaCard.innerHTML = "Quarta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            break;
        case 4:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #0e7354, #498a5c, #75a167, #a0b774, #cdcd85)";
            diaCard.innerHTML = "Quinta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #0e7354, #498a5c, #75a167, #a0b774, #cdcd85)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #0e7354, #498a5c, #75a167, #a0b774, #cdcd85)";
            break;
        case 5:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #d8b25e, #e59147, #f06947, #f33259)";
            diaCard.innerHTML = "Sexta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #d8b25e, #e59147, #f06947, #f33259)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #d8b25e, #e59147, #f06947, #f33259)";
            break;
        case 6:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f14d8d, #e16cb8, #ca88d5, #b2a0e5)";
            diaCard.innerHTML = "Sabado";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f14d8d, #e16cb8, #ca88d5, #b2a0e5)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #f33259, #f14d8d, #e16cb8, #ca88d5, #b2a0e5);";
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


function voltar() {
    window.location.href = "../index.php";
}

function modalBc() {

    var el = document.querySelector("#card-background");
    var el2 = document.querySelector("#card-nome");
    var el3 = document.querySelector("#card-avatar");

    if (el.style.display == 'none' || el.style.display == '') {
        el.style.display = 'flex';
        el2.style.display = 'none';
        el3.style.display = 'none';
    } else {
        el.style.display = 'none';
    }
}

function modalNm() {

    var el = document.querySelector("#card-nome");
    var el2 = document.querySelector("#card-background");
    var el3 = document.querySelector("#card-avatar");

    if (el.style.display == 'none' || el.style.display == '') {
        el.style.display = 'flex';
        el2.style.display = 'none';
        el3.style.display = 'none';
    } else {
        el.style.display = 'none';
    }
}

function modalAv() {

    var el = document.querySelector("#card-nome");
    var el2 = document.querySelector("#card-background");
    var el3 = document.querySelector("#card-avatar");

    if (el3.style.display == 'none' || el3.style.display == '') {
        el.style.display = 'none';
        el2.style.display = 'none';
        el3.style.display = 'flex';
    } else {
        el3.style.display = 'none';
    }
}
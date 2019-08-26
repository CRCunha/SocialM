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
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            diaCard.innerHTML = "Domingo";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            break;
        case 1:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            diaCard.innerHTML = "Segunda";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            break;
        case 2:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            diaCard.innerHTML = "Terça";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            break;
        case 3:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            diaCard.innerHTML = "Quarta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            break;
        case 4:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            diaCard.innerHTML = "Quinta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            break;
        case 5:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            diaCard.innerHTML = "Sexta";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            break;
        case 6:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            diaCard.innerHTML = "Sabado";
            dataCard.innerHTML = str_data;
            linha.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
            linhaChat.style.backgroundImage = "linear-gradient(to right bottom, #cdcd85, #bad582, #9ede87, #75e694, #12eeab)";
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
    var elementoPosts = document.querySelector(".posts");
    elementoPosts.style.filter = "blur(20px)";
    var elementoVaquinha = document.querySelector(".vaquinha");
    elementoVaquinha.style.filter = "blur(20px)";
}

function modalAvatarClose() {
    var elemento = document.querySelector(".modalAvatar");
    elemento.style.display = "none";
    var elementoBody = document.querySelector("header");
    elementoBody.style.filter = "blur(0px)";
    var elementoGrupo = document.querySelector(".grupo-container");
    elementoGrupo.style.filter = "blur(0px)";
    var elementoPosts = document.querySelector(".posts");
    elementoPosts.style.filter = "blur(0px)";
    var elementoVaquinha = document.querySelector(".vaquinha");
    elementoVaquinha.style.filter = "blur(0px)";

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


function openModalVaquinha() {
    var elementoModal = document.querySelector(".vaquinhaModal");
    elementoModal.style.display = "flex";
    var elementoBody = document.querySelector("header");
    elementoBody.style.filter = "blur(20px)";
    var elementoGrupo = document.querySelector(".grupo-container");
    elementoGrupo.style.filter = "blur(20px)";
    var elementoPosts = document.querySelector(".posts");
    elementoPosts.style.filter = "blur(20px)";
    var elementoVaquinha = document.querySelector(".vaquinha");
    elementoVaquinha.style.filter = "blur(20px)";

}

function closeModalVaquinha() {

    var elementoModal = document.querySelector(".vaquinhaModal");
    elementoModal.style.display = "none";
    var elementoBody = document.querySelector("header");
    elementoBody.style.filter = "blur(0px)";
    var elementoGrupo = document.querySelector(".grupo-container");
    elementoGrupo.style.filter = "blur(0px)";
    var elementoPosts = document.querySelector(".posts");
    elementoPosts.style.filter = "blur(0px)";
    var elementoVaquinha = document.querySelector(".vaquinha");
    elementoVaquinha.style.filter = "blur(0px)";


}

function openModalDoacoes() {
    var elementoModal = document.querySelector(".doacoesModal");
    elementoModal.style.display = "flex";
    var elementoBody = document.querySelector("header");
    elementoBody.style.filter = "blur(20px)";
    var elementoGrupo = document.querySelector(".grupo-container");
    elementoGrupo.style.filter = "blur(20px)";
    var elementoPosts = document.querySelector(".posts");
    elementoPosts.style.filter = "blur(20px)";
    var elementoVaquinha = document.querySelector(".vaquinha");
    elementoVaquinha.style.filter = "blur(20px)";
}

function closeModalDoacoes() {
    var elementoModal = document.querySelector(".doacoesModal");
    elementoModal.style.display = "none";
    var elementoBody = document.querySelector("header");
    elementoBody.style.filter = "blur(0px)";
    var elementoGrupo = document.querySelector(".grupo-container");
    elementoGrupo.style.filter = "blur(0px)";
    var elementoPosts = document.querySelector(".posts");
    elementoPosts.style.filter = "blur(0px)";
    var elementoVaquinha = document.querySelector(".vaquinha");
    elementoVaquinha.style.filter = "blur(0px)";
}
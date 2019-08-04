function pegarDia() {
    var d = new Date();
    var n = d.getDay();
    var dia = d.getDate();
    var mes = d.getMonth();
    var ano = d.getFullYear();

    var diaCard = document.querySelector("#info-top-dia");
    var dataCard = document.querySelector("#info-top-data");

    var elemento = document.querySelector("#card");

    var str_data = dia + '/' + (mes + 1) + '/' + ano;

    switch (n) {
        case 0:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #845ec2, #e65faa, #ff8080, #ffbb61, #f9f871)";
            diaCard.innerHTML = "Domingo";
            dataCard.innerHTML = str_data;
            break;
        case 1:
            elemento.style.backgroundColor = "linear-gradient(to right bottom, #845ec2, #9c5dc0, #b15dbc, #c55cb7, #d65db1)";
            diaCard.innerHTML = "Segunda";
            break;
        case 2:
            elemento.style.backgroundColor = "linear-gradient(to right bottom, #d65db1, #e35fa9, #ee63a1, #f86899, #ff6f91)";
            diaCard.innerHTML = "Terça";
            break;
        case 3:
            elemento.style.backgroundColor = "linear-gradient(to right bottom, #ff6f91, #ff7887, #ff817e, #ff8c76, #ff9671)";
            diaCard.innerHTML = "Quarta";
            break;
        case 4:
            elemento.style.backgroundColor = "linear-gradient(to right bottom, #ff9671, #ffa16b, #ffad65, #ffba61, #ffc75f)";
            diaCard.innerHTML = "Quinta";
            break;
        case 5:
            elemento.style.backgroundImage = "linear-gradient(to right bottom, #ffc75f, #ffd361, #fedf65, #fcec6a, #f9f871)";
            diaCard.innerHTML = "Sexta";
            break;
        case 6:
            elemento.style.backgroundImage = "linear-gradient(to left top, #845ec2, #e65faa, #ff8080, #ffbb61, #f9f871)";
            diaCard.innerHTML = "Sabado";
            break;
    }
}
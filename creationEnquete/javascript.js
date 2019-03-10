function ajouteEvent(objet, typeEvent, nomFonction, typePropagation) {
    if (objet.addEventListener) {
        objet.addEventListener(typeEvent, nomFonction, typePropagation);
    } else if (objet.attachEvent) {
        objet.attachEvent('on' + typeEvent, nomFonction);
    }
}

var lesId = [];
var x = 0;

function deleteId(monId) {
    var carre = document.getElementById(monId).id;
    changeCouleur(carre);
    for (var i = x; i >= 0; i--) {
        if (lesId[i] === monId) {
            lesId.splice(i, 1);
        }
    }
    document.getElementById("id_carre").innerHTML = lesId.join(" ");
}

function getCarre(monId) {
    var carre = document.getElementById(monId).id
    changeCouleur(carre);
    lesId.push(monId);
    document.getElementById("id_carre").innerHTML = lesId.join(" ");
}

function changeCouleur(monId) {
    elem = document.getElementById(monId);
    elem1 = document.getElementById(monId + " i");
    if (elem.style.fill === 'red') {
        elem.style.fill = 'black';
        elem1.checked = false;
    }
    else {
        elem.style.fill = 'red';
        elem1.checked = true;
    }
}

function appelFonctions(monId) {
    if (document.getElementById(monId).style.fill != 'red') {
        getCarre(monId);
        x = x + 1;
    }
    else {
        deleteId(monId);
        x = x - 1;
    }
}

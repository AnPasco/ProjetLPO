<script>
function ajouteEvent(objet, typeEvent, nomFonction, typePropagation){
  if (objet.addEventListener){
    objet.addEventListener(typeEvent, nomFonction, typePropagation);
  }else if (objet.attachEvent){
    objet.attachEvent('on'+ typeEvent, nomFonction);
  }
}

function displayId(id){
  document.getElementById("test").value =  id;
}

function deleteId(monId)
{
  var carre = document.getElementById(monId).id;
  changeCouleur(carre);
  document.getElementById("test").value =  "";
}


function getCarre(monId)
{
  var carre = document.getElementById(monId).id;
  changeCouleur(carre);
}

function changeCouleur(id){
  elem=document.getElementById(id);
	if(elem.style.fill==='red'){
		elem.style.fill = 'black';
	}
	else{
		elem.style.fill = 'red';
	}
}

var idTab = [];

function appelFonctions(monId)
{

  var contenant = document.getElementById("test").value;
  if (idTab[0] == null){
    getCarre(monId);
    displayId(monId);
  }
  else {
  if (idTab[idTab.length - 1] == monId) {
    deleteId(monId);
  }
  else {

    getCarre(idTab[idTab.length - 1]);
    getCarre(monId);
    displayId(monId);
  }
}
  idTab.push(monId);
}

</script>

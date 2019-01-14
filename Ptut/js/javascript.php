<script>
function ajouteEvent(objet, typeEvent, nomFonction, typePropagation){
  if (objet.addEventListener){
    objet.addEventListener(typeEvent, nomFonction, typePropagation);
  }else if (objet.attachEvent){
    objet.attachEvent('on'+ typeEvent, nomFonction);
  }
}

function getId(monId)
{
  var id = monId;
  document.getElementById("test").innerHTML = document.getElementById("test").innerHTML + " " + id + ",";
  document.getElementById("ids").value = document.getElementById("ids").value + id + ",";
}

function getCarre(monId)
{
  var carre = document.getElementById(monId).id;
  carre.addEventListener('click', changeCouleur(carre), false);
}

function changeCouleur(id){
  elem=document.getElementById(id);
  elem.style.fill = 'blue';
  alert(document.getElementById(id).style.fill);
}

function appel(monId)
{
  var id = monId;
  if (document.getElementById(id).style.fill != "blue") {
    getId(id);
    getCarre(id);
  }
}

function clickButton(){
}

window.onload = function(){
  clickButton();
}
</script>

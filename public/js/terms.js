//Make Sure users agree to terms and service befor signup
var btn_terms = document.getElementById("termsandcon");
var agree= document.getElementById("agree");
agree.addEventListener("change", function(){
    if(btn_terms.disabled==true){
btn_terms.disabled=false;
}else{
    btn_terms.disabled=true;
}
 })

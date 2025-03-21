var CSR2 = csrJoin?.data['0']
var CSRF
if((CSR2 == null) && (email?.value == null)){
modalFrame8.show()
}
if(email.value != null){
CSRF = email.value
email.clearValue()
return CSRF
}
if(CSR2 != null){
CSRF = CSR2.email
}

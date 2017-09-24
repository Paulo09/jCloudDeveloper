class Tela {

String nomeTela
String nomeCampo
String codigoTela
String validacao
Date criacao = new Date()

String id 
static mapping = {
id generator:'uuid'
}

static belogsTo = [aplicacao:Aplicacao]
Aplicacao aplicacao

String toString() {
        "${this.nomeTela}"
    }

static constraints ={
    nomeTela(unique:true,blank:false,minSize:5,maxSize:30)
	
}	

}

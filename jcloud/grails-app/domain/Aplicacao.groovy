class Aplicacao {

String nomeApp
String loginApp
String senhaApp
String descricao

String id 
static mapping = {
id generator:'uuid'
}

static hasMany = [tela:Tela]
static belogsTo = [usuario:Usuario]
Usuario usuario

String toString() {
        "${this.nomeApp}"
    }

static constraints ={

    nomeApp(blank:false,minSize:5,maxSize:12)
	loginApp(blank:false,minSize:5,maxSize:30,email:true)
	senhaApp(password:true,minSize:5,maxSize:12)
	
}

}

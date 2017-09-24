class Usuario {

String nome
String sobreNome
String loginEmail
String senha
String confirmaSenha
String permissao
Boolean deacordo = false
Date dataCadastro = new Date()
Date dataEdicao = new Date()

String id 
static mapping = {
id generator:'uuid'
}

static belogsTo = [plano:Plano]
Plano plano

static hasMany = [aplicacao:Aplicacao]

def beforeUpdate = {
		dataEdicao = new Date()
	}

String toString() {
        "${this.nome}"
    }

static constraints ={
    nome(blank:false,minSize:5,maxSize:20)
	sobreNome(blank:false,minSize:5,maxSize:20)
    loginEmail(unique:true,blank:false,email:true)
	senha(blank:false,minSize:5,maxSize:12) 
	confirmaSenha(blank:false,minSize:5,maxSize:12) 
	deacordo(nullable:false,blank:false)
	permissao(inList:['USUARIO','ADMIN','DESABILITADO'])
	plano(nullable:true)
}

}

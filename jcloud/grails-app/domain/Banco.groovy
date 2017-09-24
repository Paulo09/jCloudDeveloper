class Banco {

String nome
String descricao
String username
String senha

String id 
static mapping = {
id generator:'uuid'
}

String ipDesnvolvimento
String portaDesnvolvimento
String ipHomologacao
String portaHomologacao
String ipProducao
String portaProducao

Aplicacao aplicacao
static belongsTo = Aplicacao

static constraints ={
	
	nome(blank:false)
	senha(blank:false)
	username(blank:false)	
	ipDesnvolvimento(blank:false)
	portaDesnvolvimento(blank:false)
	ipHomologacao(blank:false)
	portaHomologacao(blank:false)
	ipProducao(blank:false)
	portaProducao(blank:false)
	
}

}

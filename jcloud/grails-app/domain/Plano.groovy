class Plano {

String nomePlano
String contrato
Integer quantDias
Float valor
String tipoCobranca
Date dataCadastro = new Date()
Date dataEdicao = new Date()

String id 
static mapping = {
id generator:'uuid'
}

static hasMany = [usuario:Usuario]

String toString() {
        "${this.nomePlano}"
    }

static constraints ={
    nomePlano(blank:false,minSize:5,maxSize:20)
	tipoCobranca(inList:['MENSAL - 1 MES','BIMESTRAL - 2 MESES','TRIMESTRAL - 3 MESES','SEMESTRAL - 6 MESES','ANUAL'])
	
}

}

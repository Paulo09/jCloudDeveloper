class AplicacaoController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ aplicacaoList: Aplicacao.list( params ) ]
    }

    def show = {
        def aplicacao = Aplicacao.get( params.id )

        if(!aplicacao) {
            flash.message = "Aplicacao not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ aplicacao : aplicacao ] }
    }

    def delete = {
        def aplicacao = Aplicacao.get( params.id )
        if(aplicacao) {
            aplicacao.delete()
            flash.message = "Aplicacao ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Aplicacao not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def aplicacao = Aplicacao.get( params.id )

        if(!aplicacao) {
            flash.message = "Aplicacao not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ aplicacao : aplicacao ]
        }
    }

    def update = {
        def aplicacao = Aplicacao.get( params.id )
        if(aplicacao) {
            aplicacao.properties = params
            if(!aplicacao.hasErrors() && aplicacao.save()) {
                flash.message = "Aplicacao ${params.id} updated"
                redirect(action:show,id:aplicacao.id)
            }
            else {
                render(view:'edit',model:[aplicacao:aplicacao])
            }
        }
        else {
            flash.message = "Aplicacao not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def aplicacao = new Aplicacao([usuario: Usuario.get(params.id)])
        aplicacao.properties = params
        return ['aplicacao':aplicacao]
    }

    def save = {
        def aplicacao = new Aplicacao(params)
        if(!aplicacao.hasErrors() && aplicacao.save()) {
            flash.message = "Aplicacao ${aplicacao.id} created"
            redirect(action:show,id:aplicacao.id)
        }
        else {
            render(view:'create',model:[aplicacao:aplicacao])
        }
    }
}

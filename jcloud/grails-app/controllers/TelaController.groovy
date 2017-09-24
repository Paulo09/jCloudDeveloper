class TelaController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ telaList: Tela.list( params ) ]
    }

    def show = {
        def tela = Tela.get( params.id )

        if(!tela) {
            flash.message = "Tela not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ tela : tela ] }
    }

    def delete = {
        def tela = Tela.get( params.id )
        if(tela) {
            tela.delete()
            flash.message = "Tela ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Tela not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def tela = Tela.get( params.id )

        if(!tela) {
            flash.message = "Tela not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ tela : tela ]
        }
    }

    def update = {
        def tela = Tela.get( params.id )
        if(tela) {
            tela.properties = params
            if(!tela.hasErrors() && tela.save()) {
                flash.message = "Tela ${params.id} updated"
                redirect(action:show,id:tela.id)
            }
            else {
                render(view:'edit',model:[tela:tela])
            }
        }
        else {
            flash.message = "Tela not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def tela = new Tela([aplicacao: Aplicacao.get(params.id)])
        tela.properties = params
        return ['tela':tela]
    }

    def save = {
        def tela = new Tela(params)
        if(!tela.hasErrors() && tela.save()) {
            flash.message = "Tela ${tela.id} created"
            redirect(action:show,id:tela.id)
        }
        else {
            render(view:'create',model:[tela:tela])
        }
    }
}

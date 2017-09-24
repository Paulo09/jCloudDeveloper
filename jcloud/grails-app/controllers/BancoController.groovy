class BancoController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ bancoList: Banco.list( params ) ]
    }

    def show = {
        def banco = Banco.get( params.id )

        if(!banco) {
            flash.message = "Banco not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ banco : banco ] }
    }

    def delete = {
        def banco = Banco.get( params.id )
        if(banco) {
            banco.delete()
            flash.message = "Banco ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Banco not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def banco = Banco.get( params.id )

        if(!banco) {
            flash.message = "Banco not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ banco : banco ]
        }
    }

    def update = {
        def banco = Banco.get( params.id )
        if(banco) {
            banco.properties = params
            if(!banco.hasErrors() && banco.save()) {
                flash.message = "Banco ${params.id} updated"
                redirect(action:show,id:banco.id)
            }
            else {
                render(view:'edit',model:[banco:banco])
            }
        }
        else {
            flash.message = "Banco not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def banco = new Banco([aplicacao: Aplicacao.get(params.id)])
        banco.properties = params
        return ['banco':banco]
    }

    def save = {
        def banco = new Banco(params)
        if(!banco.hasErrors() && banco.save()) {
            flash.message = "Banco ${banco.id} created"
            redirect(action:show,id:banco.id)
        }
        else {
            render(view:'create',model:[banco:banco])
        }
    }
}

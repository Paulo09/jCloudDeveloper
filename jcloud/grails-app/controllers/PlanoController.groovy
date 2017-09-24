class PlanoController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ planoList: Plano.list( params ) ]
    }

    def show = {
        def plano = Plano.get( params.id )

        if(!plano) {
            flash.message = "Plano not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ plano : plano ] }
    }

    def delete = {
        def plano = Plano.get( params.id )
        if(plano) {
            plano.delete()
            flash.message = "Plano ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Plano not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def plano = Plano.get( params.id )

        if(!plano) {
            flash.message = "Plano not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ plano : plano ]
        }
    }

    def update = {
        def plano = Plano.get( params.id )
        if(plano) {
            plano.properties = params
            if(!plano.hasErrors() && plano.save()) {
                flash.message = "Plano ${params.id} updated"
                redirect(action:show,id:plano.id)
            }
            else {
                render(view:'edit',model:[plano:plano])
            }
        }
        else {
            flash.message = "Plano not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def plano = new Plano()
        plano.properties = params
        return ['plano':plano]
    }

    def save = {
        def plano = new Plano(params)
        if(!plano.hasErrors() && plano.save()) {
            flash.message = "Plano ${plano.id} created"
            redirect(action:show,id:plano.id)
        }
        else {
            render(view:'create',model:[plano:plano])
        }
    }
}

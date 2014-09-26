package org.vinodh.boot



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AboutspageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Aboutspage.list(params), model:[aboutspageInstanceCount: Aboutspage.count()]
    }

    def show(Aboutspage aboutspageInstance) {
        respond aboutspageInstance
    }

    def create() {
        respond new Aboutspage(params)
    }

    @Transactional
    def save(Aboutspage aboutspageInstance) {
        if (aboutspageInstance == null) {
            notFound()
            return
        }

        if (aboutspageInstance.hasErrors()) {
            respond aboutspageInstance.errors, view:'create'
            return
        }

        aboutspageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'aboutspage.label', default: 'Aboutspage'), aboutspageInstance.id])
                redirect aboutspageInstance
            }
            '*' { respond aboutspageInstance, [status: CREATED] }
        }
    }

    def edit(Aboutspage aboutspageInstance) {
        respond aboutspageInstance
    }

    @Transactional
    def update(Aboutspage aboutspageInstance) {
        if (aboutspageInstance == null) {
            notFound()
            return
        }

        if (aboutspageInstance.hasErrors()) {
            respond aboutspageInstance.errors, view:'edit'
            return
        }

        aboutspageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Aboutspage.label', default: 'Aboutspage'), aboutspageInstance.id])
                redirect aboutspageInstance
            }
            '*'{ respond aboutspageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Aboutspage aboutspageInstance) {

        if (aboutspageInstance == null) {
            notFound()
            return
        }

        aboutspageInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Aboutspage.label', default: 'Aboutspage'), aboutspageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'aboutspage.label', default: 'Aboutspage'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

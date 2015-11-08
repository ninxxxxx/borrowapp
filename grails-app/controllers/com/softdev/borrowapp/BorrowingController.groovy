package com.softdev.borrowapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BorrowingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Borrowing.list(params), model:[borrowingInstanceCount: Borrowing.count()]
    }

    def show(Borrowing borrowingInstance) {
        respond borrowingInstance
    }

    def create() {
        respond new Borrowing(params)
    }

    @Transactional
    def save(Borrowing borrowingInstance) {
        if (borrowingInstance == null) {
            notFound()
            return
        }

        if (borrowingInstance.hasErrors()) {
            respond borrowingInstance.errors, view:'create'
            return
        }

        borrowingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'borrowing.label', default: 'Borrowing'), borrowingInstance.id])
                redirect borrowingInstance
            }
            '*' { respond borrowingInstance, [status: CREATED] }
        }
    }

    def edit(Borrowing borrowingInstance) {
        respond borrowingInstance
    }

    @Transactional
    def update(Borrowing borrowingInstance) {
        if (borrowingInstance == null) {
            notFound()
            return
        }

        if (borrowingInstance.hasErrors()) {
            respond borrowingInstance.errors, view:'edit'
            return
        }

        borrowingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Borrowing.label', default: 'Borrowing'), borrowingInstance.id])
                redirect borrowingInstance
            }
            '*'{ respond borrowingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Borrowing borrowingInstance) {

        if (borrowingInstance == null) {
            notFound()
            return
        }

        borrowingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Borrowing.label', default: 'Borrowing'), borrowingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'borrowing.label', default: 'Borrowing'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def borrowingMain(){
        // render "BORROWING_MAIN"
    }
}

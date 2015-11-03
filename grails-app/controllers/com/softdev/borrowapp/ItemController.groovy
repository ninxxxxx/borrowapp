package com.softdev.borrowapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Item.list(params), model:[itemInstanceCount: Item.count()]
    }

    def show(Item itemInstance) {
        respond itemInstance
    }

    def create() {
        respond new Item(params)
    }

    @Transactional
    def save(Item itemInstance) {
        if (itemInstance == null) {
            notFound()
            return
        }

        if (itemInstance.hasErrors()) {
            respond itemInstance.errors, view:'create'
            return
        }

        itemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'item.label', default: 'Item'), itemInstance.id])
                redirect itemInstance
            }
            '*' { respond itemInstance, [status: CREATED] }
        }
    }

    def edit(Item itemInstance) {
        respond itemInstance
    }

    @Transactional
    def update(Item itemInstance) {
        if (itemInstance == null) {
            notFound()
            return
        }

        if (itemInstance.hasErrors()) {
            respond itemInstance.errors, view:'edit'
            return
        }

        itemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Item.label', default: 'Item'), itemInstance.id])
                redirect itemInstance
            }
            '*'{ respond itemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Item itemInstance) {

        if (itemInstance == null) {
            notFound()
            return
        }

        itemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Item.label', default: 'Item'), itemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }


    def itemMain(){//
        // : show user's list
        [items: item.list(params)]

    }

    def addItem(){//
        //from usermain : add user
    }

    @Transactional
    def saveItem(){
        // print param
        def item = new Item(params)
        //def u = new item(itemname:itemname, password:password, firstName:firstName, lastName:lastName, tel:tel, passcode:passcode, rfidCode:rfidCode)
        u.save(flush: true)
        // print u.id
        redirect(action:"itemDetails", params:[itemId:u.id])
    }

    def deleteItem(){
        //action : delete
        def item = Item.get(params.itemId)
        question.delete()
        redirect(action:'itemMain')
    }

    def editItem(){//
        //from itemdetails : edit item's details & delete item
        [item: Item.get(params.itemId)]
    }

    @Transactional
    def updateItem(){
        //action : update item's details
        def item = Item.get(params.itemId)
        // print params.username
        item.username = params.title
        item.password = params.category
        item.firstName = params.least
        item.lastName = params.amount
        item.save()
        redirect(action:"itemDetails", params:[itemId: item.id])
    }
}

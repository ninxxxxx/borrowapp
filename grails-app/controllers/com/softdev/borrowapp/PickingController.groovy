package com.softdev.borrowapp


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PickingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Picking.list(params), model:[pickingInstanceCount: Picking.count()]
    }

    def show(Picking pickingInstance) {
        respond pickingInstance
    }

    def create() {
        respond new Picking(params)
    }

    @Transactional
    def save(Picking pickingInstance) {
        if (pickingInstance == null) {
            notFound()
            return
        }

        if (pickingInstance.hasErrors()) {
            respond pickingInstance.errors, view:'create'
            return
        }

        pickingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'picking.label', default: 'Picking'), pickingInstance.id])
                redirect pickingInstance
            }
            '*' { respond pickingInstance, [status: CREATED] }
        }
    }

    def edit(Picking pickingInstance) {
        respond pickingInstance
    }

    @Transactional
    def update(Picking pickingInstance) {
        if (pickingInstance == null) {
            notFound()
            return
        }

        if (pickingInstance.hasErrors()) {
            respond pickingInstance.errors, view:'edit'
            return
        }

        pickingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Picking.label', default: 'Picking'), pickingInstance.id])
                redirect pickingInstance
            }
            '*'{ respond pickingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Picking pickingInstance) {

        if (pickingInstance == null) {
            notFound()
            return
        }

        pickingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Picking.label', default: 'Picking'), pickingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'picking.label', default: 'Picking'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def pickingMain(){
        // render "PICKING_MAIN"
    }
    
    def addPicking(){

    }

    def pickingList(){
        def data = [:]
        data.pick = Picking.list()
      //  data.psequence = params.qsequence
      render(template: 'addPick')
  }

  def s(){

        def a = params.select.item
        def picks = []

        a.each{
            def q = new Pick(item:Item.get(it), amount: 0).save(flush:true)
            picks.add(q)
        }
        
        redirect action:"savePick", params:[pick:picks]
  }
  
  def savePick(){
        //[picks:params.picks]
        //println params.select 
        // print params.select.item
        //Item.get(params.select.item)
        //def am = params.a

        //println a
        //println a[0]

       // def test = Item.get(a)
       // println test

        //println b
        //println b[0]
        
        
    }
    
    def pickingResult(){

    }
    
}

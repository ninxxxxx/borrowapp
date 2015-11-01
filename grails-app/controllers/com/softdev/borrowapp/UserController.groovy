package com.softdev.borrowapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def userMain(){//
        // : show user's list
        [users: User.list(params)]

    }

    def userDetails(){//
        //from userMain : show user details
        [user: User.get(params.userId)]
    }

    def addUser(){//
        //from usermain : add user
    }

    @Transactional
    def saveUser(String firstName, String lastName, String username, String password, String tel, String passcode, String rfidCode){
        print params.firstName
        print params.lastName
        print params.username
        print params.password
        print params.tel
        print params.passcode
        print params.rfidCode
        def u = new User(username:username, password:password, firstName:firstName, lastName:lastName, tel:tel, passcode:passcode, rfidCode:rfidCode)
        u.save(flush: true)
        // print u.id
        // redirect(action:"userDetails", params:[userId:u.id])
    }

    def deleteUser(){
        //action : delete
        def user = User.get(params.userId)
        question.delete()
        redirect(action:'userMain')
    }

    def editUser(){//
        //from userdetails : edit user's details & delete user
        [user: User.get(params.userId)]
    }

    @Transactional
    def updateUser(){
        //action : update user's details
        def user = User.get(params.userId)
        print params.username
        user.username = params.username
        user.password = params.password
        user.firstName = params.firstName
        user.lastName = params.lastName
        user.tel = params.tel
        user.passcode = params.passcode
        user.save()
        redirect(action:"userDetails", params:[userId: user.id])
    }

    



}

import com.softdev.borrowapp.*
import grails.plugin.springsecurity.SecurityFilterPosition
import grails.plugin.springsecurity.SpringSecurityUtils


class BootStrap {

    def springSecurityService
    
    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def admin = new User(username: 'admin', password: '1234')
    	def user1 = new User(firstName:"pang", lastName:"DDk", username:"pangpang", password:"123456", tel:"0850680467", passcode:"5465", rfidCode:"98798784654")
    	def user2 = new User(firstName:"anchan", lastName:"si", username:"chunchun", password:"987654", tel:"0850680545", passcode:"3333", rfidCode:"9987545654")
    	def user3 = new User(firstName:"pungpond", lastName:"dekdek", username:"dekdek", password:"987987", tel:"08587840545", passcode:"3543", rfidCode:"99898795654")

        def i1 = new Item(title:"ปากกา ตราม้า", category:"เครื่องเขียน", least:10, amount:100)
        def i2 = new Item(title:"กระดาษA4", category:"กระดาษ", least:10, amount:1000)
        def i3 = new Item(title:"ชอร์ค(กล่อง)", category:"เครื่องเขียน", least:2, amount:25)

        admin.save(failOnError: true)
        user1.save(failOnError: true)
        user2.save(failOnError: true)
        user3.save(failOnError: true)
        def ur1 = new UserRole(user:admin, role:adminRole).save()
        def ur2 = new UserRole(user:user1, role:adminRole).save()
        def ur3 = new UserRole(user:user2, role:userRole).save()
        def ur4 = new UserRole(user:user3, role:userRole).save()


        i1.save()
        i2.save()
        i3.save()
        
    }
    def destroy = {
    }
}

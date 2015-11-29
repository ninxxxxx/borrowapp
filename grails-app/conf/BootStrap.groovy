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
        def user4 = new User(firstName:"prapass", lastName:"siri", username:"poppop", password:"111111", tel:"08587840544", passcode:"0000", rfidCode:"99898796654")
        def user5 = new User(firstName:"cookie", lastName:"cream", username:"cookies", password:"987604", tel:"0850600545", passcode:"3133", rfidCode:"9987545650")
        def user6 = new User(firstName:"yok", lastName:"green", username:"yokyok", password:"985654", tel:"0810680545", passcode:"3433", rfidCode:"9957545654")
        def user7 = new User(firstName:"Prae", lastName:"Lalitwadee", username:"praeprae", password:"987634", tel:"0850210545", passcode:"5533", rfidCode:"9987545634")
        def user8 = new User(firstName:"arnon", lastName:"arnon", username:"arnonarnon", password:"981654", tel:"0820680545", passcode:"3033", rfidCode:"1957545654")


        def i1 = new Item(title:"ปากกา ตราม้า", category:"เครื่องเขียน", least:10, amount:100, canBorrow:false)
        def i2 = new Item(title:"กระดาษA4", category:"กระดาษ", least:10, amount:1000, canBorrow:false)
        def i3 = new Item(title:"ชอร์ค(กล่อง)", category:"เครื่องเขียน", least:2, amount:25, canBorrow:false)
        def i4 = new Item(title:"ปากกาหมึกซึม", category:"เครื่องเขียน", least:8, amount:5, canBorrow:false)
        def i5 = new Item(title:"ปากกาลูกลื่น", category:"เครื่องเขียน", least:8, amount:6, canBorrow:false)
        def i6 = new Item(title:"แปรงลบกระดาน", category:"เครื่องเขียน", least:2, amount:0, canBorrow:false)
        def i7 = new Item(title:"ถุงขยะ", category:"เบ็ดเตล็ด", least:8, amount:30, canBorrow:false)
        def i8 = new Item(title:"ที่โกย", category:"เบ็ดเตล็ด", least:2, amount:8, canBorrow:true)
        def i9 = new Item(title:"ถุงมือยาง", category:"เบ็ดเตล็ด", least:8, amount:30, canBorrow:false)
        def i10 = new Item(title:"จอบ", category:"เบ็ดเตล็ด", least:2, amount:8, canBorrow:true)
        def i11 = new Item(title:"แปรงสี", category:"เบ็ดเตล็ด", least:2, amount:10, canBorrow:true)
        
        
        admin.save(failOnError: true)
        user1.save(failOnError: true)
        user2.save(failOnError: true)
        user3.save(failOnError: true)
        user4.save(failOnError: true)
        user5.save(failOnError: true)
        user6.save(failOnError: true)
        user7.save(failOnError: true)
        user8.save(failOnError: true)

        def ur1 = new UserRole(user:admin, role:adminRole).save()
        def ur2 = new UserRole(user:user1, role:adminRole).save()
        def ur3 = new UserRole(user:user2, role:userRole).save()
        def ur4 = new UserRole(user:user3, role:userRole).save()
        def ur5 = new UserRole(user:user4, role:userRole).save()
        def ur6 = new UserRole(user:user5, role:userRole).save()
        def ur7 = new UserRole(user:user6, role:userRole).save()
        def ur8 = new UserRole(user:user7, role:userRole).save()
        def ur9 = new UserRole(user:user8, role:userRole).save()


        i1.save()
        i2.save()
        i3.save()
        i4.save()
        i5.save()
        i6.save()
        i7.save()
        i8.save()
        i9.save()

        def p1 = new Picking(user:user4, isAccept:true, isBorrow:false, items:[i1, i2]).save()
        def p2 = new Picking(user:user2, isAccept:true, isBorrow:false, items:[i3, i4]).save()
        def p3 = new Picking(user:user3, isAccept:true, isBorrow:false, items:[i5, i6]).save()
        def p4 = new Picking(user:user5, isAccept:true, isBorrow:true, items:[i8, i10]).save()
        def p5 = new Picking(user:user6, isAccept:true, isBorrow:true, items:[i9]).save()
        

        def b1 = new Borrowing(item:i5,user:user7).save()
        def b2 = new Borrowing(item:i6,user:user8).save()
        def b3 = new Borrowing(item:i7,user:user5).save()


        
    }
    def destroy = {
    }
}
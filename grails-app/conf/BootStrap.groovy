import com.softdev.borrowapp.*

class BootStrap {

    def init = { servletContext ->

    	def user1 = new User(firstName:"pang", lastName:"DDk", username:"pangpang", password:"123456", tel:"0850680467", passcode:"5465", rfidCode:"98798784654")
    	def user2 = new User(firstName:"anchan", lastName:"si", username:"chunchun", password:"987654", tel:"0850680545", passcode:"3333", rfidCode:"9987545654")
    	def user3 = new User(firstName:"pungpond", lastName:"dekdek", username:"dekdek", password:"987987", tel:"08587840545", passcode:"3543", rfidCode:"99898795654")

    	user1.save()
    	user2.save()
    	user3.save()
    }
    def destroy = {
    }
}

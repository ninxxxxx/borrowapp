
package com.softdev.borrowapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MenuController{

	def home(){
	}
	
	def noti(){
		def peoples = Picking.createCriteria().list{
			eq("isBorrow", true)
		}
		def items = Item.createCriteria().list{
			leProperty("amount", "least")
		}
		// redirect action:"noti", params:[x:items]
		print items
		[items: items]
		// render "NOTIFICATION"
	}

	def test(){
		print params.myDate
	}

	def history(){
		// render "HISTORY"
	}
}
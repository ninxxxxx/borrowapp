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
			le("amount", least)
		}
		// redirect action:"noti", params:[x:items]
		print items
		// render "NOTIFICATION"
	}

	def history(){
		// render "HISTORY"
	}
}
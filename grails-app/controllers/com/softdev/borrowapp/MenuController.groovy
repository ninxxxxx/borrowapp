package com.softdev.borrowapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MenuController{

	def noti(){
		// render "NOTIFICATION"
	}

	def history(){
		// render "HISTORY"
	}
}
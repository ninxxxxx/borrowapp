package com.softdev.borrowapp

class Picking {

	User user
	static hasMany = [items: Item] 
	Date startDate
	Boolean isAccept
	Boolean isBorrow
	Date returnDate 
	Boolean isReturn

    static constraints = {
    	startDate nullable:true
    	isBorrow nullable:true
    	returnDate nullable:true
    	isReturn nullable:true
    	isAccept nullable:true
    }
}

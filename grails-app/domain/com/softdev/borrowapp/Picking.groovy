package com.softdev.borrowapp

class Picking {

	User user 
	Item item 
	Date pickDate
	Boolean isAccept 
    static constraints = {
    pickDate nullable:true,
    
    }
}

package com.softdev.borrowapp

class Borrowing {
	
	Item item
	User user
	Date borrowDate
	Date returnDate 
	Boolean isAccept
	Boolean isReturn  
    static constraints = {
    	borrowDate nullable:true
    	returnDate nullable:true
    	isAccept nullable:true
    	isReturn nullable:true
    }
}
 
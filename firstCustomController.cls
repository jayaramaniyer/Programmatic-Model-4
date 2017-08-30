public with sharing class firstCustomController {
	public string recid{
		get;
		set;
	}
	
	public list<Account> l1{
		get;
		set;
	}
	
	public List<Contact> contacts {
		get;
	 	set;
	}
	 	
	public List<Opportunity> opp {
		get;
	 	set;
	}
	
	//constructor which initailises the list and adds value to it
	public firstCustomController(){
		l1=[Select Name, AccountNumber, Phone, ShippingAddress from Account];
	}
	
	//adding values to the contact and opportunity list where account id = recId
	public void setupContacts()
    {
    	contacts=[select id, FirstName, LastName from Contact where AccountId=:recId];
    	opp=[Select Name,amount, id From Opportunity Where AccountId=:recId];
    }

}
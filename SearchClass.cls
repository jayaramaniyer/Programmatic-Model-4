//Controller for the SecondVFpage Visualforce page
public with sharing class SearchClass { 
	
	public list <Account> acc {
    	get;
    	set;
    } 
    
    public list <Contact> con {
    	get;
    	set;
    }
     
    public list <Lead> lead {
    	get;
    	set;
    }
     
    public list <Opportunity> opp {
    	get;
    	set;
    } 
    
	public string searchstring {
		get;
    	set;
    } 
    
	public SearchClass( ) { 
	}
	 
	public void search(){ 
		//Adding the query to the string
   		string searchqueryAcc='select name,id from Account where name like \'%'+searchstring+'%\'  Limit 20';
   		string searchqueryContact='select name,id from Contact where name like \'%'+searchstring+'%\' or FirstName like \'%' +searchstring+'%\' or LastName like \'%' +searchstring+'%\' Limit 20';
   		string searchqueryLead='select name,id from Lead where name like \'%'+searchstring+'%\' or FirstName like \'%' +searchstring+'%\' or LastName like \'%' +searchstring+'%\'  Limit 20';
   		string searchqueryOpp='select name,id from Opportunity where name like \'%'+searchstring+'%\' Limit 20'; 
   		
   		//Using the string variable to query and store the results in the list
   		acc= Database.query(searchqueryAcc);
   		con= Database.query(searchqueryContact);
   		lead= Database.query(searchqueryLead);
   		opp= Database.query(searchqueryOpp); 
   
  	} 
 
}
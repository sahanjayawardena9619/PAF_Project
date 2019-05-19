How to open and setup the Project

01. Open Eclipse IDE and set workspace to the downloaded GIT Hub Project folder like this.
	Ex : If your downloaded Project Folder is in drive 'C:\' then the path should set as below.
	
	'C:\PAF\PAF_Project\Main Project (Final)\PAF'
	
02. Now Open XAMPP Server Control Panel and then,
	- Start Apache Web Server
	- Start MySQL Server
	
03. Then click 'Admin' button next to 'MySQL' and go to PhpMyAdmin Control Panel.

04. Create a new Database named 'pafproject', select it and import the 'pafproject.sql' file which is
	located in 'C:\PAF\PAF_Project\Main Project (Final)\Project DB'
	
	- In the above path, 'C' should be replaced with your Drive Path where you have downloaded the Project.
	
05. Now Right Click the project and select, >> Run As >> Run on Server >> Choose an existing server >> Next >> Finish

06. Now the Sever will be started and the Index URL will be displayed on Eclipse Built-in Browser.

07. Copy the URL and paste it in your preferred Web Browser

08. You can get all the relevant details in the Project Database to Login into the System. 
	Note : Login information for Seller and Customer are stored in 'Customer' and 'Seller'
		   tables in the 'pafproject' database.
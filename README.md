# FundManager
https://www.greymanager.com/portal/fundmanager/ => Customer Login
https://www.greymanager.com/portal/fundadmin/  => Admin login

__________________________________________________________________________________________________________
How to: step to initiate new fund manager account in Fund Manager

1. create a managers account eg Managers > FundManager1 (2063)
2. create a master account eg Trading Accounts > Fund Master Account 1 (228711)
3. Copy Fund Master Account 1 logins into FundManager1 Bank Account Field : 2063 Bank Account = 228711
4. create an Client account  eg Clients > Fund 2063 Client (7832)
5. link Fund Master Account 1 (228711) to Client (7832)
__________________________________________________________________________________________________________

How to: step to add admin

1. go into CustomerServices.java (/portal/src/main/java/com/union/portal/common/CustomerServices.java)
2. add the manager account that wish to add admin into =>private static final int customerServicesUserArray[]; 
eg private static final int customerServicesUserArray[] = {3002,2063,(adminmanageraccount)};


__________________________________________________________________________________________________________




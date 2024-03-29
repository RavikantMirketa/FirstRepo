public class FinacastClientLookupController {
    @AuraEnabled
    public static List < sObject > fetchLookUpValues(String searchKeyWord, String ObjectName) {
        system.debug('ObjectName-->' + ObjectName);
        String searchKey = searchKeyWord + '%';
        
        List < sObject > returnList = new List < sObject > ();
        
        
        // Create a Dynamic SOQL Query For Fetch Record List with LIMIT 5   
        try{
            Id houseHoldRecTypeId =  Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('IndustriesHousehold').getRecordTypeId();
            String sQuery =  'select id, Name from ' +ObjectName + ' where Name LIKE: searchKey order by createdDate DESC limit 5';
            List < sObject > lstOfRecords = Database.query(sQuery);
            
            for (sObject obj: lstOfRecords) {
                returnList.add(obj);
            }
        }
        catch(Exception e){
            FinacastUtility.ExceptionHandle(e.getLineNumber(), e.getMessage(), e.getStackTraceString());
        }
        return returnList;
    }
   
}
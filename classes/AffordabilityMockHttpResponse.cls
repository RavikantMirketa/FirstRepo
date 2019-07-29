@isTest
global with sharing class AffordabilityMockHttpResponse implements HTTPCalloutMock
{
    global HTTPResponse respond(HTTPRequest req) {
        
        System.assertEquals('https://mytafi.herokuapp.com/rest/service/affordabilityAnalysis', req.getEndpoint());
        System.assertEquals('POST', req.getMethod());
        
        // Create a fake response
        HttpResponse res = new HttpResponse();
        
            res.setHeader('Content-Type', 'application/json');
            res.setBody('{"name" :"car","type" :"afford", "totalAmount" : 1.0E8,"downPayment" : 0.0,"installments" : 0.0,"startDate" :"7/2019","endDate" :"10/2019","isTaxBenefit" : false,"isPaymentPlan" : false,"rainyDayMonths" : 6}');
            res.setStatusCode(200);
        
        
        return res;
    }
}
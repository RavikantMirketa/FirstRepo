({
    myAction : function(component, event, helper) {
        
    },
    
    plotGraph: function(component, event, helper){
        console.log("cinsie fn");
        try{
        var chart = new CanvasJS.Chart("chartContainer",{
            animationEnabled: true,  
            //title:{
              //  text: "Predicted Values"
            //},
            data: [
                {    
                    type: "doughnut",
                    indexLabelPlacement: "outside",        
                    radius: "90%", 
                    innerRadius: "55%",  
                    dataPoints: [
                        { x: 10, y: 71, label: "first" },
                        { x: 20, y: 55, label: "second"},
                        { x: 30, y: 50, label: "third"},
                        { x: 40, y: 125, label: "fourth"},    
                        { x: 90, y: 14, label: "fifth"}     
                    ]
                }
            ]
        });
        console.log("insseide data");
            chart.render();}
        catch(e){
            console.log(e);
        }
    },
    
})
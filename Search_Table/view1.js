var employeeApp = angular.module("EmployeeApp",[]);
        employeeApp.controller("empCtrl",function($scope){
            $scope.employees = [
                {
                    "NAME" : "Exposed",
                    "CATEGORY" : "KylieLipKit by Kylie Jenner",
                    "PRICE" : "$29.00 USD",
                    "DESCRIPTION" : "Exposed is a light cool toned nude."
                },
                {
                    "NAME" : "Candy K",
                    "CATEGORY" : "KylieLipKit by Kylie Jenner ",
                    "PRICE" : "$29.00 USD",
                    "DESCRIPTION" : "Candy K is a soft, warm nude."
                },
                 {
                    "NAME" : "Mary Jo K",
                    "CATEGORY" : "KylieLipKit by Kylie Jenner ",
                    "PRICE" : "$29.00 USD",
                    "DESCRIPTION" : "Mary Jo K is a true blue red."
                }, 
                {
                    "NAME" : "Long-Wear Even Finish Foundation SPF 15",
                    "CATEGORY" : "Face Makeup",
                    "PRICE" : "$59.00 USD",
                    "DESCRIPTION" : "Fi-free formula never looks cakey or masky."
                },
                 {
                    "NAME" : "Shimmer Wash Eye Shadow",
                    "CATEGORY" : "Eye Makeup",
                    "PRICE" : "$25.00 USD",
                    "DESCRIPTION" : "A soft shimmer eye shadow that softly illuminates lids."
                },
                {
                    "NAME" : "Skin Moisture Compact Foundation",
                    "CATEGORY" : "Face Makeup",
                    "PRICE" : "$50.00 USD",
                    "DESCRIPTION" : "Provides luminous coverage for a polished, lit-from-within look."
                },
                      
                  
            ];
            $scope.orderProp="name";                
        });


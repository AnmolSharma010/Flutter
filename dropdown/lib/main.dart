import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropDown(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class DropDown extends StatefulWidget {
 
  final formKey = GlobalKey<FormState>();
  String? dropdownvalue;
// List of items in our dropdown menu
  var states = ["Rajasthan", "Karnataka"];
  String? dropdownvalue2;
// List of items in our dropdown menu
  var city = ["Alwar", "Hub"];

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final formKey = GlobalKey<FormState>();
  String? dropdownvalue;
// List of items in our dropdown menu
  var states = ["Rajasthan", "Karnataka"];
  String? dropdownvalue2;
// List of items in our dropdown menu
  var city = ["Alwar", "Hub"];
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
        padding: const EdgeInsets.only(left: 40,right: 40),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black)
                ),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "   School Name"),
                  
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Required";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              //  State Drop Down
               SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black)
                ),
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue,
                  isExpanded: true,
                  hint: Text("   Select State",style: TextStyle(fontSize: 20,color: Colors.red),),
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 20,),
                  // Array list of items
                  items: states.map((String states) {
                    return DropdownMenuItem(
                      value: states,
                      child: Text(states),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black)
                ),
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue2,
                  isExpanded: true,
                  hint: Text("   Select City",style: TextStyle(fontSize: 20,color: Colors.red),),
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // Array list of items
                  items: city.map((String city) {
                    return DropdownMenuItem(
                      value: city,
                     
                      child: Text(city),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue2 = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black)
                ),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "   Address"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Required";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black)
                ),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "   Director Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Required";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black)
                ),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "   Principal Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Required";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black)
                ),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "   Contact Number"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Required";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     primary: Colors.black, 
                     onPrimary: Colors.white,
                     side: BorderSide(width:3, color:Colors.brown),
                     elevation: 15, 
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                     ),
                       ),
                      onPressed: () => {
                            // if (formKey.currentState!.validate())
                            //   {
                            //     Navigator.pushNamed(context, Myroutes.loginRoute),
                            //   }
                          },
                      child: Text(
                        'Submit',
                      )),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
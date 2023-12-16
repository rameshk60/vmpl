import 'package:flutter/material.dart';
import 'package:varun_new_project/components/bookings/bookings_model.dart';

class VehicleDetails extends StatefulWidget {
  const VehicleDetails({super.key});

  @override
  State<VehicleDetails> createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
  int? _radioVal;
  int? _radioVehicle;
  int? _radioTrue;

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                vehicleDetails(),
                corporateScheme(),
                trueValueExchange(),
                vehicleType(),
                finance(),
                insuranceType(),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        //    Navigator.of(context).push(MaterialPageRoute(
                        // builder: (context) => ));
                      },
                      child: const Text(
                        "Update",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    )),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget vehicleDetails() {
    return Column(
      children: [
        Container(
          color: Colors.blue.shade50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: DropdownButton(
                        value: models[index],
                        hint: const Text("city"),
                        items: models.map((model mval) {
                          return DropdownMenuItem(
                            value: mval,
                            child: Row(
                              children: <Widget>[Text(mval.modelName)],
                            ),
                          );
                        }).toList(),
                        onChanged: (model? mval) {
                          print(mval);
                          setState(() {
                            index = models.indexOf(mval!);
                          });
                        })),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: DropdownButton(
                        value: cities[index],
                        hint: const Text("city"),
                        items: cities.map((city value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Row(
                              children: <Widget>[Text(value.cityName)],
                            ),
                          );
                        }).toList(),
                        onChanged: (city? value) {
                          print(value);
                          setState(() {
                            index = cities.indexOf(value!);
                          });
                        })),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.blue.shade50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: DropdownButton(
                        value: cities[index],
                        hint: const Text("city"),
                        items: cities.map((city value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Row(
                              children: <Widget>[Text(value.cityName)],
                            ),
                          );
                        }).toList(),
                        onChanged: (city? value) {
                          print(value);
                          setState(() {
                            index = cities.indexOf(value!);
                          });
                        })),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: DropdownButton(
                        value: cities[index],
                        hint: const Text("city"),
                        items: cities.map((city value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Row(
                              children: <Widget>[Text(value.cityName)],
                            ),
                          );
                        }).toList(),
                        onChanged: (city? value) {
                          print(value);
                          setState(() {
                            index = cities.indexOf(value!);
                          });
                        })),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget corporateScheme() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        children: [
          const Text(
            'Corporate Scheme: ',
            style: TextStyle(fontSize: 18),
          ),
          Radio(
            value: 0,
            groupValue: _radioVal,
            onChanged: (int? value) {
              print(value);

              if (value != null) {
                setState(() {
                  _radioVal = value;
                });
              }
            },
          ),
          const Text('Yes ', style: TextStyle(fontSize: 18)),
          Radio(
            value: 1,
            groupValue: _radioVal,
            onChanged: (int? value) {
              print(value);
              if (value != null) {
                setState(() {
                  _radioVal = value;
                });
              }
            },
          ),
          const Text('No ', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  Widget trueValueExchange() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        children: [
          const Text(
            'True value Exchange: ',
            style: TextStyle(fontSize: 18),
          ),
          Radio(
            value: 0,
            groupValue: _radioTrue,
            onChanged: (int? value) {
              print(value);

              if (value != null) {
                setState(() {
                  _radioTrue = value;
                });
              }
            },
          ),
          const Text('Yes ', style: TextStyle(fontSize: 18)),
          Radio(
            value: 1,
            groupValue: _radioTrue,
            onChanged: (int? value) {
              print(value);
              if (value != null) {
                setState(() {
                  _radioTrue = value;
                });
              }
            },
          ),
          const Text('No ', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  Widget vehicleType() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Vehicle Type: ',
            style: TextStyle(fontSize: 18),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: 0,
                    groupValue: _radioVehicle,
                    onChanged: (int? value) {
                      print(value);

                      if (value != null) {
                        setState(() {
                          _radioVehicle = value;
                        });
                      }
                    },
                  ),
                  const Text('Personal ', style: TextStyle(fontSize: 18)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioVehicle,
                    onChanged: (int? value) {
                      print(value);
                      if (value != null) {
                        setState(() {
                          _radioVehicle = value;
                        });
                      }
                    },
                  ),
                  const Text('taxi ', style: TextStyle(fontSize: 18)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioVehicle,
                    onChanged: (int? value) {
                      print(value);
                      if (value != null) {
                        setState(() {
                          _radioVehicle = value;
                        });
                      }
                    },
                  ),
                  const Text('Commercial ', style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget finance() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.3,
            child: DropdownButton(
                value: cities[index],
                hint: const Text("city"),
                items: cities.map((city value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Row(
                      children: <Widget>[Text(value.cityName)],
                    ),
                  );
                }).toList(),
                onChanged: (city? value) {
                  print(value);
                  setState(() {
                    index = cities.indexOf(value!);
                  });
                })),
      ),
    );
  }

  Widget insuranceType() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.3,
            child: DropdownButton(
                value: cities[index],
                hint: const Text("city"),
                items: cities.map((city value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Row(
                      children: <Widget>[Text(value.cityName)],
                    ),
                  );
                }).toList(),
                onChanged: (city? value) {
                  print(value);
                  setState(() {
                    index = cities.indexOf(value!);
                  });
                })),
      ),
    );
  }

  Widget paymentType() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.3,
          child: DropdownButton(
              value: cities[index],
              hint: const Text("city"),
              items: cities.map((city value) {
                return DropdownMenuItem(
                  value: value,
                  child: Row(
                    children: <Widget>[Text(value.cityName)],
                  ),
                );
              }).toList(),
              onChanged: (city? value) {
                print(value);
                setState(() {
                  index = cities.indexOf(value!);
                });
              })),
    );
  }

  Widget amountType() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.5,
      child: TextFormField(
          // controller: userName,
          decoration: const InputDecoration(
        labelText: "Amount",
        labelStyle: TextStyle(color: Colors.black, fontSize: 18),
        border: OutlineInputBorder(),
        // border: myInput(),
        // enabledBorder: myInput(),
        // focusedBorder: myFocus(),
      )),
    );
  }
}

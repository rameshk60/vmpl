import 'package:flutter/material.dart';

class NewEnquiry extends StatefulWidget {
  const NewEnquiry({super.key});

  @override
  State<NewEnquiry> createState() => _NewEnquiryState();
}

class _NewEnquiryState extends State<NewEnquiry> {
  String? dropdownValue;

  var items = ['Govt', 'Central', 'PVT. Ltd', 'Rtd. Employee'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Enquiry Details",
              style: TextStyle(
                  color: Colors.blue.shade800, fontWeight: FontWeight.w700),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            topBar(),
            heading(),

            // enquiryForm(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: firstName(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: lastName(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: phnName(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: officeNumber(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: emailID(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: occupation(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: company(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: dateOfBirth(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: dateOfAnniversary(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: address(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: district(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: state(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: pincode(),
                  )
                ],
              ),

              // newEnquiry()
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.blue.shade700,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "KYC Details",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: address(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: district(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: state(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: pincode(),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              color: Colors.blue.shade700,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Vehicle Details",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),

            SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: address(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: district(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: state(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: pincode(),
                  ),
                ],
              ),
            ),

            ElevatedButton(onPressed: () {}, child: const Text("Submit"))
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Container(
      height: 60,
      color: const Color.fromARGB(255, 189, 221, 236),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date: 22/11/2023"),
                    Text("Enquiry Id : VMS20542"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lead Status:Hot "),
                    Text("Enquiry Type : Walk-in"),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget heading() {
    return Container(
      color: Colors.blue.shade500,
      height: 50,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "Personal Details",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget newEnquiry() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            // controller: widget._nameController,
            // onChanged: (value) => widget.contactModel.name = value,
            // onSaved: (value) => widget.contactModel.name = value,

            // validator: (value) => value.length > 3 ? null : "Enter Name",/
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(),
              hintText: "First Name",
              labelText: "First Name",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            // controller: widget._nameController,
            // onChanged: (value) => widget.contactModel.name = value,
            // onSaved: (value) => widget.contactModel.name = value,

            // validator: (value) => value.length > 3 ? null : "Enter Name",/
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(),
              hintText: "Last Name",
              labelText: "Last Name",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            // controller: widget._nameController,
            // onChanged: (value) => widget.contactModel.name = value,
            // onSaved: (value) => widget.contactModel.name = value,

            // validator: (value) => value.length > 3 ? null : "Enter Name",/
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(),
              hintText: "Phone Number",
              labelText: "Phone",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            // controller: widget._nameController,
            // onChanged: (value) => widget.contactModel.name = value,
            // onSaved: (value) => widget.contactModel.name = value,

            // validator: (value) => value.length > 3 ? null : "Enter Name",/
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(),
              hintText: "e-Mail ID",
              labelText: "e-mail",
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButtonFormField<String>(
              hint: const Text('Occupation'),
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Govt', 'Private', 'Cantral', 'other']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Meaage",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey))),
              keyboardType: TextInputType.multiline,
              maxLines: 4),
        ),
      ],
    );
  }

  Widget firstName() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "First Name",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget lastName() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Last Name",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget phnName() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Phone Number",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget officeNumber() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Office Number",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget emailID() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Email ID :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget occupation() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Occupation :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget company() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Company :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget dateOfBirth() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Date of  Birth :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget dateOfAnniversary() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Date of Anniversary :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget address() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Address :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget district() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "District :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget state() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "State :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget pincode() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Pincode :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 450,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.amber,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget vehicleDetails() {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("data"), Text("data")],
          ),
        ),
      ],
    );
  }
}

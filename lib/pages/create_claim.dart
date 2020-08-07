import 'package:flutter/material.dart';
import '../models/claim.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import '../services/claimService.dart';

class Claim extends StatefulWidget {
  @override
  _ClaimState createState() => _ClaimState();
}

class _ClaimState extends State<Claim> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  ClaimModel _claimModel;
  ClaimService claimService;

  @override
  void initState() {
    super.initState();
    _claimModel = new ClaimModel();
    claimService = new ClaimService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Claim'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  FormBuilder(
                    key: _formKey,
                    initialValue: {
                      'date': DateTime.now(),
                      'accept_terms': false,
                    },
                    autovalidate: true,
                    child: Column(
                      children: <Widget>[
                        FormBuilderTextField(
                          attribute: 'Membership ID',
                          decoration:
                              InputDecoration(labelText: 'Membership ID'),
                          keyboardType: TextInputType.text,
                          validators: [
                            FormBuilderValidators.required(),
                          ],
                          onSaved: (val) =>
                              setState(() => _claimModel.membershipId = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'Policy Number',
                          decoration:
                              InputDecoration(labelText: 'Policy Number'),
                          keyboardType: TextInputType.text,
                          validators: [
                            FormBuilderValidators.required(),
                          ],
                          onSaved: (val) =>
                              setState(() => _claimModel.policyNumber = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'First Name',
                          decoration: InputDecoration(labelText: 'First Name'),
                          keyboardType: TextInputType.text,
                          validators: [
                            FormBuilderValidators.required(),
                          ],
                          onSaved: (val) =>
                              setState(() => _claimModel.firstName = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'Last Name',
                          decoration: InputDecoration(labelText: 'Last Name'),
                          keyboardType: TextInputType.text,
                          validators: [
                            FormBuilderValidators.required(),
                          ],
                          onSaved: (val) =>
                              setState(() => _claimModel.lastName = val),
                        ),
                        FormBuilderDateTimePicker(
                          attribute: "dob",
                          inputType: InputType.date,
                          validators: [FormBuilderValidators.required()],
                          format: DateFormat("dd-MM-yyyy"),
                          decoration:
                              InputDecoration(labelText: "Date of Birth"),
                          onChanged: (val) =>
                              setState(() => _claimModel.dob = val),
                        ),
                        FormBuilderDropdown(
                          attribute: "gender",
                          decoration: InputDecoration(labelText: "Gender"),
                          hint: Text('Select Gender'),
                          validators: [FormBuilderValidators.required()],
                          items: ['Male', 'Female', 'Other']
                              .map((gender) => DropdownMenuItem(
                                  value: gender, child: Text("$gender")))
                              .toList(),
                          onChanged: (val) =>
                              setState(() => _claimModel.gender = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'email',
                          decoration: InputDecoration(labelText: 'Email'),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (val) =>
                              setState(() => _claimModel.emailAddress = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'Address1',
                          decoration: InputDecoration(labelText: 'Address 1'),
                          keyboardType: TextInputType.text,
                          validators: [
                            FormBuilderValidators.required(),
                          ],
                          onSaved: (val) =>
                              setState(() => _claimModel.address1 = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'Address2',
                          decoration: InputDecoration(labelText: 'Address 2'),
                          keyboardType: TextInputType.text,
                          onSaved: (val) =>
                              setState(() => _claimModel.address2 = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'City',
                          decoration: InputDecoration(labelText: 'City'),
                          keyboardType: TextInputType.text,
                          onSaved: (val) =>
                              setState(() => _claimModel.city = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'State',
                          decoration: InputDecoration(labelText: 'State'),
                          keyboardType: TextInputType.text,
                          onSaved: (val) =>
                              setState(() => _claimModel.state = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'Pincode',
                          decoration: InputDecoration(labelText: 'Pincode'),
                          keyboardType: TextInputType.text,
                          validators: [
                            FormBuilderValidators.required(),
                          ],
                          onSaved: (val) =>
                              setState(() => _claimModel.pincode = val),
                        ),
                        FormBuilderSwitch(
                          attribute: 'isaccident',
                          label: Text('Are the injuries caused by accident?'),
                          onChanged: (val) =>
                              setState(() => _claimModel.isAccident = val),
                        ),
                        FormBuilderSwitch(
                          attribute: 'isJob',
                          label: Text('Are the injuries related to your job?'),
                          onChanged: (val) =>
                              setState(() => _claimModel.isJob = val),
                        ),
                        FormBuilderDateTimePicker(
                          attribute: "injuryDate",
                          inputType: InputType.date,
                          validators: [FormBuilderValidators.required()],
                          format: DateFormat("dd-MM-yyyy"),
                          decoration: InputDecoration(labelText: "Injury Date"),
                          onChanged: (val) =>
                              setState(() => _claimModel.injuryDate = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'diagnosis',
                          decoration: InputDecoration(labelText: 'Diagnosis'),
                          keyboardType: TextInputType.text,
                          onSaved: (val) =>
                              setState(() => _claimModel.diagnosis = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'treatment',
                          decoration: InputDecoration(labelText: 'Treatment'),
                          keyboardType: TextInputType.text,
                          onSaved: (val) =>
                              setState(() => _claimModel.treatment = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'medications',
                          decoration: InputDecoration(labelText: 'Medications'),
                          keyboardType: TextInputType.text,
                          onSaved: (val) =>
                              setState(() => _claimModel.medications = val),
                        ),
                        FormBuilderTextField(
                          attribute: 'totalAmount',
                          decoration:
                              InputDecoration(labelText: 'Total Amount'),
                          keyboardType: TextInputType.number,
                          validators: [
                            FormBuilderValidators.required(),
                          ],
                          onSaved: (val) =>
                              setState(() => _claimModel.totalAmount = val),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  Row(children: <Widget>[
                    FlatButton.icon(
                      textColor: Colors.white,
                      color: Colors.redAccent[200],
                      label: Text("Save"),
                      icon: Icon(Icons.save, size: 18),
                      onPressed: () async {
                        _formKey.currentState.save();
                        if (_formKey.currentState.validate()) {
                          print('save called');
                          await claimService.saveClaim(_claimModel);
                        }
                      },
                    ),
                    SizedBox(width: 20),
                    FlatButton.icon(
                      textColor: Colors.white,
                      label: Text("Reset"),
                      color: Colors.redAccent[200],
                      icon: Icon(Icons.clear, size: 18),
                      onPressed: () {
                        _formKey.currentState.reset();
                      },
                    ),
                  ])
                ],
              ),
            ),
          ),
        ));
  }
}

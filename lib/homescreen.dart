import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:mygrow_admin/FullScreenData.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final ref = FirebaseDatabase.instance.ref('PartnerData');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
        centerTitle: true,
      ),
      body: FirebaseAnimatedList(
    query: ref,
    itemBuilder: (context,snapshot,animation,index){
      return SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/50),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FullDetailsScreen(phoneNumber: snapshot.child('phoneNumber').value.toString(),
                  name:snapshot.child('username').value.toString(),
              email: snapshot.child('email').value.toString(),
              address: snapshot.child('address').value.toString(),
              category: snapshot.child('Category').value.toString(),
              subCategory:  snapshot.child('Passenger_Mobility_Type').value.toString(),
               vehicleType: snapshot.child('Vehicle_Type').value.toString(),
              vehicleNumber:  snapshot.child('Bike_Number_Plater').value.toString(),
              vehicleImage: snapshot.child('Bike_Image').value.toString(),
              vehicleRcTransportYear: snapshot.child('Bike_Transport_Year').value.toString(),
              vehicleRcFrontImage: snapshot.child('Front_RC_Image').value.toString(),
              vehicleRcBackImage: snapshot.child('Back_RC_Image').value.toString(),
              aadharCard: snapshot.child('aadhar_number').value.toString(),
              aadharCardFrontImage: snapshot.child('aadhar_front_image').value.toString(),
              aadharCardBackImage: snapshot.child('aadhar_back_image').value.toString(),
              drivingLicenseNumber:snapshot.child('driving_license_number').value.toString(),
              drivingLicenseFrontImage: snapshot.child('driving_license_front_image').value.toString(),
              drivingLicenseBackImage: snapshot.child('driving_license_back_image').value.toString(),
                /*Car Data */
                carBrand: snapshot.child('car_brand').value.toString(),
              carModel: snapshot.child('car_brand').value.toString(),
              carVehicleNumber: snapshot.child('car_number').value.toString(),
                carVehicleImage: snapshot.child('Car_Image').value.toString(),
                carRcTransportYear: snapshot.child('Car_Transport_Year').value.toString(),
                carRcFrontImage: snapshot.child('Car_Front_RC_Image').value.toString(),
                carRcBackImage: snapshot.child('car_Back_RC_Image').value.toString(),
                carAadharNumber: snapshot.child('car_aadhar_number').value.toString(),
                carAadharFrontImage: snapshot.child('car_aadhar_front_image').value.toString(),
                carAadharBackImage: snapshot.child('car_aadhar_back_image').value.toString(),
                carDrivingLicenseNumber: snapshot.child('car_driving_license_number').value.toString(),
                carDrivingLicenseFront: snapshot.child('car_driving_license_front_image').value.toString(),
                carDrivingLicenseBack: snapshot.child('car_driving_license_back_image').value.toString(),
                /* Auto Data */
                autoNumber: snapshot.child('auto_number').value.toString(),
                autoAadharNumber: snapshot.child('autorickshaw_aadhar_number').value.toString(),
                autoAadharCardFrontImage: snapshot.child('autorickshaw_aadhar_front_image').value.toString(),
                autoAadharCardBackImage: snapshot.child('autorickshaw_aadhar_back_image').value.toString(),
                autoDrivingLicenseNumber: snapshot.child('autorickshaw_driving_license_number').value.toString(),
                autoDrivingLicenseFrontImage: snapshot.child('autorickshaw_driving_license_front_image').value.toString(),
                autoDrivingLicenseBackImage: snapshot.child('autorickshaw_driving_license_back_image').value.toString(),
                /* Parcel Data */
                companyName: snapshot.child('company_name').value.toString(),
                companyGSTNumber: snapshot.child('gst_number').value.toString(),
                companyContact: snapshot.child('contact_number').value.toString(),
                companyAddress: snapshot.child('company_address').value.toString(),
                 ),
                ),
               );
            },
            child: Container(
              height: MediaQuery.of(context).size.height/15,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade400
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/80),
                              child: Text("User Name : ${snapshot.child('username').value.toString()}"),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.height/80 ),
                              child: Text("Contact Number : ${snapshot.child('phoneNumber').value.toString()}"),
                            )
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.height/6.5,),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    )

                ],
              ),
            ),
          ),
        ),
      );
    },
      ));
  }
}

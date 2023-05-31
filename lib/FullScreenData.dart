import 'package:flutter/material.dart';


class FullDetailsScreen extends StatefulWidget {
  ///Passenger Mobility BikeData
  String phoneNumber;
  String name;
  String email;
  String address;
  String category;
  String subCategory;
  String vehicleType;
  String vehicleNumber;
  String vehicleImage;
  String vehicleRcTransportYear;
  String vehicleRcFrontImage;
  String vehicleRcBackImage;
  String aadharCard;
  String aadharCardFrontImage;
  String aadharCardBackImage;
  String drivingLicenseNumber;
  String drivingLicenseFrontImage;
  String drivingLicenseBackImage;

  ///Passenger Mobility Car Data
  String carBrand;
  String carModel;
  String carVehicleNumber;
  String carVehicleImage;
  String carRcTransportYear;
  String carRcFrontImage;
  String carRcBackImage;
  String carAadharNumber;
  String carAadharFrontImage;
  String carAadharBackImage;
  String carDrivingLicenseNumber;
  String carDrivingLicenseFront;
  String carDrivingLicenseBack;

  ///Passenger Mobility Auto Data
  String autoNumber;
  String autoAadharNumber;
  String autoAadharCardFrontImage;
  String autoAadharCardBackImage;
  String autoDrivingLicenseNumber;
  String autoDrivingLicenseFrontImage;
  String autoDrivingLicenseBackImage;

  /// Passenger Parcel Data
   String companyName;
   String companyGSTNumber;
   String companyAddress;
   String companyContact;

   FullDetailsScreen({Key? key,required this.phoneNumber,required this.name,required this.email,required this.address,
   required this.category,required this.subCategory,required this.vehicleType, required this.vehicleNumber, required this.vehicleImage,
   required this.vehicleRcTransportYear,required this.vehicleRcFrontImage,required this.vehicleRcBackImage,required this.aadharCard,
   required this.aadharCardFrontImage,required this.aadharCardBackImage,required this.drivingLicenseNumber,required this.drivingLicenseFrontImage,
   required this.drivingLicenseBackImage,/*car data*/
     required this.carBrand,required this.carModel,
   required this.carVehicleNumber,required this.carVehicleImage,required this.carRcTransportYear,required this.carRcFrontImage,
   required this.carRcBackImage,required this.carAadharNumber,required this.carAadharFrontImage,required this.carAadharBackImage,
   required this.carDrivingLicenseNumber,required this.carDrivingLicenseFront,required this.carDrivingLicenseBack,
   /*Auto data */
   required this.autoNumber, required this.autoAadharNumber,required this.autoAadharCardFrontImage,required this.autoAadharCardBackImage,
   required this.autoDrivingLicenseNumber,required this.autoDrivingLicenseFrontImage,required this.autoDrivingLicenseBackImage,
   /*Parcel Data */
   required this.companyName,required this.companyGSTNumber,required this.companyContact,required this.companyAddress}) : super(key: key);

  @override
  State<FullDetailsScreen> createState() => _FullDetailsScreenState();
}

class _FullDetailsScreenState extends State<FullDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Partner Full Details"),
       ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if(widget.vehicleType == "Bike")
              ///Bike Container
            Container(
              height: MediaQuery.of(context).size.height/0.561,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Column(

                children: [
                  NameContainer(name: "Name :",dataName: widget.name, ),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  NameContainer(name: "Contact Number :",dataName: widget.phoneNumber, ),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  NameContainer(name: "Email :",dataName: widget.email, ),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                 NameContainer(name: "Address :", dataName: widget.address),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  NameContainer(name: "Category :", dataName: widget.category),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  NameContainer(name: "SubCategory :", dataName: widget.subCategory),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  NameContainer(name: "Vehicle Type :", dataName: widget.vehicleType),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  NameContainer(name: "Vehicle Number :", dataName: widget.vehicleNumber),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  ImageContainer(name: "Vehicle Image :",imageName: widget.vehicleImage),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                 NameContainer(name: "Vehicle Rc TranportYear :", dataName: widget.vehicleRcTransportYear),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                 ImageContainer(name: "Vehicle Rc Front Image :", imageName: widget.vehicleRcFrontImage),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  ImageContainer(name: "Vehicle Rc Back Image :", imageName: widget.vehicleRcBackImage),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  NameContainer(name: "AadharCard Number :", dataName: widget.aadharCard),
                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                 ImageContainer(name: "AadharCard Front Image :", imageName: widget.aadharCardFrontImage),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  ImageContainer(name: "AadharCard Back Image :", imageName: widget.aadharCardBackImage),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  NameContainer(name: "Driving License Number :", dataName: widget.drivingLicenseNumber),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                 ImageContainer(name: "Driving License Front Image :", imageName: widget.drivingLicenseFrontImage),

                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  ImageContainer(name: "Driving License Back Image :", imageName: widget.drivingLicenseBackImage),

                ],
              ),
            ),
            if(widget.vehicleType == "Car")
              ///Car Container
              Container(
                height:  MediaQuery.of(context).size.height/0.52,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Column(

                  children: [
                    NameContainer(name: "Name :",dataName: widget.name, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Contact Number :",dataName: widget.phoneNumber, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Email :",dataName: widget.email, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Address :", dataName: widget.address),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Category :", dataName: widget.category),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "SubCategory :", dataName: widget.subCategory),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Vehicle Type :", dataName: widget.vehicleType),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Car Brand :", dataName: widget.carBrand),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Car Model :", dataName: widget.carModel),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Car Number :", dataName: widget.carVehicleNumber),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "Car Image :",imageName: widget.carVehicleImage),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Car Rc TranportYear :", dataName: widget.carRcTransportYear),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "Car Rc Front Image :", imageName: widget.carRcFrontImage),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "Car Rc Back Image :", imageName: widget.carRcBackImage),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "AadharCard Number :", dataName: widget.carAadharNumber),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "AadharCard Front Image :", imageName: widget.carAadharFrontImage),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "AadharCard Back Image :", imageName: widget.carAadharBackImage),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Driving License Number :", dataName: widget.carDrivingLicenseNumber),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "Driving License Front Image :", imageName: widget.carDrivingLicenseFront),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "Driving License Back Image :", imageName: widget.carDrivingLicenseBack),

                  ],
                ),
              ),
            if(widget.vehicleType == "AutoRickShaw")
              Container(
                height:  MediaQuery.of(context).size.height/0.780,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Column(

                  children: [
                    NameContainer(name: "Name :",dataName: widget.name, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Contact Number :",dataName: widget.phoneNumber, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Email :",dataName: widget.email, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Address :", dataName: widget.address),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Category :", dataName: widget.category),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "SubCategory :", dataName: widget.subCategory),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Vehicle Type :", dataName: widget.vehicleType),


                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Auto Number :", dataName: widget.autoNumber),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "AadharCard Number :",dataName: widget.autoAadharNumber),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "AadharCard Front Image :", imageName: widget.autoAadharCardFrontImage),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "AadharCard Back Image :", imageName: widget.autoAadharCardBackImage),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Driving License Number :", dataName: widget.autoDrivingLicenseNumber),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "Driving License Front Image :", imageName: widget.autoDrivingLicenseFrontImage),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    ImageContainer(name: "Driving License Back Image :", imageName: widget.autoDrivingLicenseBackImage),


                  ],
                ),
              ),
            if(widget.subCategory == "Parcel")
              Container(
                height:  MediaQuery.of(context).size.height/1.41,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Column(

                  children: [
                    NameContainer(name: "Name :",dataName: widget.name, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Contact Number :",dataName: widget.phoneNumber, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Email :",dataName: widget.email, ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Address :", dataName: widget.address),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Category :", dataName: widget.category),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "SubCategory :", dataName: widget.subCategory),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Company Name :", dataName: widget.companyName),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Company GST Number :", dataName: widget.companyGSTNumber),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Company Contact Number :", dataName: widget.companyContact),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    NameContainer(name: "Company Address :", dataName: widget.companyAddress),

                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
 final String name;
 final String imageName;
   const ImageContainer({
    super.key,
    required this.name,
    required this.imageName
  });



  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height/8,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.height/50),
              child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
            ),
            SizedBox(width: MediaQuery.of(context).size.height/50,),
            Container(
              height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.height/7,
                child: Image.network(imageName,fit: BoxFit.fill,)),
          ],
        ));
  }
}

class NameContainer extends StatelessWidget {
 final String name;
  final String dataName;
   const NameContainer({
    super.key,required this.name,
    required this.dataName,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/20,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.height/50),
              child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
            ),
            SizedBox(width: MediaQuery.of(context).size.height/50,),
            Text(dataName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
          ],
        ));
  }
}

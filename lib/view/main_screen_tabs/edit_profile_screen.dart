import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<EditProfileScreen> {

  final leaveDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildProfile(),
            const SizedBox(
              height: 10,
            ),
            buildContainer(),
          ],
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: true,
      title: const Text('Edit Profile',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      elevation: 0,
    );
  }

  buildProfile(){
    return Column(
      children: [
        Container(
          height: 150,width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            image: const DecorationImage(image: NetworkImage('https://phantom-marca.unidadeditorial.es/9279e8039b9040209f07a16f0201dd63/resize/828/f/jpg/assets/multimedia/imagenes/2023/01/12/16735402991293.jpg',),fit: BoxFit.cover
            )
          ),
        )
      ],
    );
  }

buildContainer(){
    return Container(
      height: 500,width: Get.width,
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
      ),
      child: buildContent(),
    );
}

buildContent(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Personal Details',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
          const SizedBox(height: 10,),
          buildField(),
          const SizedBox(height: 10,),
          buildBirthday(),
          const SizedBox(height: 10,),
          buildMobile()
        ],
      ),
    );
}


buildField(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('First name',style: TextStyle(fontSize: 15),),
        const SizedBox(height: 10,),
        TextFormField(
          cursorColor: Colors.white,
          decoration:  InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                const BorderSide(color: Colors.white, width: 2)),
            // labelText: 'First Name',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            // hintText: 'Enter first name here',
          ),
        ),
        const SizedBox(height: 10,),
        const Text('Last name',style: TextStyle(fontSize: 15),),
        const SizedBox(height: 10,),
        TextFormField(
          cursorColor: Colors.white,
          decoration:  InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                const BorderSide(color: Colors.white, width: 2)),
            // labelText: 'Last Name',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            // hintText: 'Enter last name here',
          ),
        ),
      ],
    );
}

  buildBirthday(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Date of birth',style: TextStyle(fontSize: 15),),
        const SizedBox(height: 10,),
        TextFormField(
          cursorColor: Colors.white,
          decoration:  InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                const BorderSide(color: Colors.white, width: 2)),
            // labelText: 'Last Name',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            // hintText: 'Enter last name here',
          ),
        ),
      ],
    );
    // Container(
    //     height: 110,width: Get.width,
    //     decoration:  BoxDecoration(
    //       color: Colors.white.withOpacity(0.5),
    //       borderRadius: const BorderRadius.only(
    //           topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
    //     ),
    //     child:
    //     Padding(
    //       padding: const EdgeInsets.all(10),
    //       child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children:[
    //             const Text('Date of birth',style: TextStyle(fontSize: 15,color: Colors.black),),
    //             TextFormField(
    //               controller: leaveDate,
    //               textAlign: TextAlign.center,
    //               style: const TextStyle(fontSize: 20,color: Colors.black),
    //               decoration: const InputDecoration(
    //                   enabledBorder: UnderlineInputBorder(
    //                     borderSide: BorderSide(color: Colors.grey),),
    //                   focusedBorder: UnderlineInputBorder(
    //                       borderSide: BorderSide(color: Colors.black)),
    //                   contentPadding: EdgeInsets.all(10),
    //                   hintText: 'DD/MM/YYYY',
    //                   hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
    //               readOnly: true,
    //               onTap: () async {
    //                 DateTime? pickedDate = await showDatePicker(
    //                     context: context,
    //                     initialDate: DateTime.now(),
    //                     firstDate: DateTime(1900),
    //                     lastDate: DateTime(2100));
    //                 if (pickedDate != null) {
    //                   print(pickedDate);
    //                   String formattedDate =
    //                   DateFormat('dd-MM-yyyy').format(pickedDate);
    //                   print(formattedDate);
    //
    //                   setState(() {
    //                     leaveDate.text = formattedDate;
    //                   });
    //                 } else {
    //                   print('Date is not selected');
    //                 }
    //               },
    //               validator: (value) {
    //                 if (value!.isEmpty) {
    //                   return 'Enter a valid date';
    //                 }
    //                 return null;
    //               },
    //             ),
    //           ]
    //       ),
    //     )
    // );
  }

  buildMobile(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mobile Number',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.black),
        ),
        SizedBox(height: 10,),
        IntlPhoneField(
          style: TextStyle(fontSize: 17,color: Colors.black),
          decoration : InputDecoration(
              labelText: 'Phone Number',
              labelStyle: TextStyle(fontSize: 15,color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black
                  )
              )
          ),
          initialCountryCode: 'IN',
        ),
      ],
    );
  }

}

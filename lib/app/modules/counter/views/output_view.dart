import 'package:get/get.dart';
import '../../../data/biodata_model.dart';
import 'package:flutter/material.dart';

class OutputView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil data yang dikirim dari Formulir
    final BiodataModel formData = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Output'),
        centerTitle: true,
        backgroundColor:  Color.fromARGB(255, 255, 0, 0),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.person, color:  Color.fromARGB(255, 255, 0, 0)), // Ikon untuk Nama
                    SizedBox(width: 10),
                    Text(
                      'Nama:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:  Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.nama,
                  style: TextStyle(fontSize: 18, color: Colors.red[800]),
                ),
                Divider(height: 20, thickness: 1),
                Row(
                  children: [
                    Icon(Icons.wc, color:  Color.fromARGB(255, 74, 78, 78)), // Ikon untuk Jenis Kelamin
                    SizedBox(width: 10),
                    Text(
                      'Jenis Kelamin:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:   Color.fromARGB(255, 74, 78, 78),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.jenisKelamin,
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
                Divider(height: 20, thickness: 1),
                Row(
                  children: [
                    Icon(Icons.emoji_people, color:  Color.fromARGB(255, 204, 249, 3)), // Ikon untuk Agama
                    SizedBox(width: 10),
                    Text(
                      'Agama:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:  Color.fromARGB(255, 204, 249, 3),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.agama,
                  style: TextStyle(fontSize: 18, color:  Color.fromARGB(255, 204, 249, 3)),
                ),
                Divider(height: 20, thickness: 1),
                Row(
                  children: [
                    Icon(Icons.calendar_today, color:  Color.fromARGB(255, 19, 11, 251)), // Ikon untuk Tanggal Lahir
                    SizedBox(width: 10),
                    Text(
                      'Tanggal Lahir:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 19, 11, 251),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.tanggalLahir.toString().split(' ')[0],
                  style: TextStyle(fontSize: 18, color: Colors.blue[800]),
                ),
                Divider(height: 20, thickness: 1),
                Row(
                  children: [
                    Icon(Icons.home, color:   Color.fromARGB(255, 255, 0, 0)), // Ikon untuk Alamat
                    SizedBox(width: 10),
                    Text(
                      'Alamat:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.alamat,
                  style: TextStyle(fontSize: 18, color: Colors.red[800]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

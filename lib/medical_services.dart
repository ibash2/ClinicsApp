import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MedicalServises extends StatelessWidget {
  const MedicalServises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed:() {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black,size: 28,),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Медицинские сервисы',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
        ),

      ),

      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(children: [
              ServicesRow(
                name: 'Консультация',
                icon: 'public/images/cons.png',
              ),
              ServicesRow(
                name: 'Пакет услуг',
                icon: 'public/images/chem.png',
              ),
              ServicesRow(
                name: 'Анализ',
                icon: 'public/images/analiz.png',
              ),
              ServicesRow(
                name: 'Диагностика',
                icon: 'public/images/daig.png',
              ),
              ServicesRow(
                name: 'Процедура',
                icon: 'public/images/proc.png',
              ),
        ]),
      ),
    );
  }
}




class ServicesRow extends StatelessWidget {
  final String name;
  final String ?icon;
  const ServicesRow({super.key, required this.name, this.icon = null});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Color.fromRGBO(198, 198, 200, 1)))
        ),
        height: 46,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              icon == null
                  ?const SizedBox()
                  :Image.asset(icon!,scale: 3.5,),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(name,
                style: const TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(33, 29, 29, 1)
                ),),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromRGBO(60, 60, 67, 0.3),
                    size: 19,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
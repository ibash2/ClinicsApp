import 'package:flutter/material.dart';

import 'medical_services.dart';

class ConsultaitionPage extends StatefulWidget {
  const ConsultaitionPage({super.key});

  @override
  State<ConsultaitionPage> createState() => _ConsultaitionPageState();
}

class _ConsultaitionPageState extends State<ConsultaitionPage> {
  List<String> items = [
    'Терапевт',
    'Гинеколог',
    'Невролог',
    'Гастроэнтеролог',
    'Уролог',
    'Дерматолог',
    'Мамолог',
    'Отоларинголог',
    'Диетолог',
    'Аллерголог',
    'Иммунолог',
    'Трихолог',
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    filteredItems.addAll(items);
    super.initState();
  }

  void filterItems(String query) {
    query = query.toLowerCase();
    setState(() {
      filteredItems = items.where((item) => item.toLowerCase().contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          'Консультация врача',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
        ),

      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(children: [
               Padding(
                padding: const EdgeInsets.only(bottom:16),
                child: SizedBox(
                  height: 44,
                  child: TextField(
                    onChanged: (value) => filterItems(value),
                    textAlignVertical: TextAlignVertical.bottom,
                    scrollPadding: const EdgeInsets.only(bottom: 0),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      filled: true,
                      prefixIconColor: Color.fromRGBO(124, 124, 124, 1),
                      prefixIcon: Icon(
                        Icons.search
                      ),
                      hintText: 'Поиск'
                    ),
                
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ServicesRow(
                      name: filteredItems[index],
                    );

                },
              )
              ),
        ]),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_01/Widget/simple_input_widget.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  final formKey = GlobalKey<FormState>();
  final totalBillController = TextEditingController();
  final totalTipController = TextEditingController();
  final totalPeopleController = TextEditingController();

  static const Color containerColor = Color(0xffF5F8F8);
  static const Color textBlock = Color(0xff232323);
  static const Color textLightBlack = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffFF7511);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calculator",
          style: TextStyle(color: Colors.black87,fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black54,
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Top section
                  Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        padding: const EdgeInsets.all(15),
                        child:  Column(
                          children: [
                            const Text("Total Bill", style: TextStyle(color: textLightBlack)),
                            Text("\$ ${totalBillController.text}", style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: textBlock),),
                         const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Persons", style: TextStyle(color: textLightBlack)),
                              Text("Tip Amount", style: TextStyle(color: textLightBlack))
                            ],
                          ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(totalPeopleController.text, style: const TextStyle(color: textBlock,fontSize: 16, fontWeight: FontWeight.w700)),
                                Text("\$ ${double.parse(totalBillController.text)*(double.parse(totalTipController.text)/100)}", style: const TextStyle(color: textBlock, fontSize: 16, fontWeight: FontWeight.w700))
                              ],
                            )
                          ],
                        ),
                      ),
                  ///Gap
                  const SizedBox(
                    height: 10,
                  ),
                  ///Per person amount
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    padding: const EdgeInsets.all(15),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Amount per person", style: TextStyle(color: textLightBlack)),
                        Text("\$ 20.0", style: TextStyle(color: textBlock, fontSize: 18, fontWeight: FontWeight.w900))
                      ],
                    ),
                  ),
                  // const Spacer(),
                   SizedBox(
                    height: size.height*0.25,
                  ),

                  SimpleInputField(
                      controller: totalBillController,
                      title: "Total Bill",
                      hintText: "Please enter total bill",
                  ),
                  SimpleInputField(
                      controller: totalTipController,
                      title: "Tip percentage",
                      iconData: Icons.attach_money,
                      hintText: "Please enter tip percentage",
                  ),SimpleInputField(
                      controller: totalPeopleController,
                      title: "Number of people",
                      hintText: "Please enter total number of people",
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                            formKey.currentState!.validate();
                             });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 45
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Calculator", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 45
                          ),
                          decoration: BoxDecoration(
                              color: clearButtonColor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Text("Clear", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

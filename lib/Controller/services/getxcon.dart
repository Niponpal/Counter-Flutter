
import 'package:counter/Controller/UiServices/ui.dart';
import 'package:get/get.dart';

class ProductGetXcontroller extends GetxController{
   RxList data = [].obs;

   getdata() async {
     data.value = await ProudctController().getProduct();
   }

   @override
  void onInit() {
   getdata();
    super.onInit();
  }
}
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/contacts_page/models/contacts_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ContactsPage.
///
/// This class manages the state of the ContactsPage, including the
/// current contactsModelObj
class ContactsController extends GetxController {
  ContactsController(this.contactsModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ContactsModel> contactsModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

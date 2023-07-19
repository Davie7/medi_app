import 'package:flutter/material.dart';
import 'package:medi_app/models/medic.dart';

class MedicalTeamProvider extends ChangeNotifier {
  final List<Medic> _medicList = [
    Medic(
      id: 'i1',
      img: 'lib/icons/tooth.png',
      name: 'Dentist',
    ),
    Medic(
      id: 'i2',
      img: 'lib/icons/surgeon.png',
      name: 'Surgeon',
    ),
    Medic(
      id: 'i3',
      img: 'lib/icons/medicine.png',
      name: 'Pharmacist',
    ),
    Medic(
      id: 'i4',
      img: 'lib/icons/doctor.png',
      name: 'Dentist',
    ),
    Medic(
      id: 'i5',
      img: 'lib/icons/clinician.png',
      name: 'Physician(Doctor)',
    ),
    Medic(
      id: 'i6',
      img: 'lib/icons/nurse.png',
      name: 'Nurse',
    ),
  ];

  List<Medic> get medicList {
    return [..._medicList];
  }

  Medic findById(String id) {
    return _medicList.firstWhere((prod) => prod.id == id);
  }
}

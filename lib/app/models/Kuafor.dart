import 'package:biberberapp/app/models/kuafor_tipi.dart';

import 'kordinat.dart';

class Kuafor {
  final String name;
  final KuaforTipleri kuaforTipi;
  final Kordinat kordinat;
  final String telefonNumarasi;
  final String aciklama;

  Kuafor(
      {required this.name,
      required this.kordinat,
      required this.telefonNumarasi,
      required this.aciklama,
      required this.kuaforTipi});
}

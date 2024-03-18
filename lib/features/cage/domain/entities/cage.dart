import 'package:equatable/equatable.dart';

class Cage extends Equatable {
  final String? namaKandang;
  final String? alamatKandang;
  final bool? statusAktif;
  final dynamic clientName;
  final String? jenisPeternak;
  final String? periode;
  final String? umur;
  final String? populasi;
  final String? bodyWeight;
  final String? jenisKandang;
  final String? tanggalDoc;

  const Cage({
    this.namaKandang,
    this.alamatKandang,
    this.statusAktif,
    this.clientName,
    this.jenisPeternak,
    this.periode,
    this.umur,
    this.populasi,
    this.bodyWeight,
    this.jenisKandang,
    this.tanggalDoc,
  });

  @override
  List<Object?> get props => [
        namaKandang,
        alamatKandang,
        statusAktif,
        clientName,
        jenisPeternak,
        periode,
        umur,
        populasi,
        bodyWeight,
        jenisKandang,
        tanggalDoc,
      ];
}

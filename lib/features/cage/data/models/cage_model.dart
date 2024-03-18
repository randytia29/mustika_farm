import 'package:mustika_farm/features/cage/domain/entities/cage.dart';

class CageModel extends Cage {
  const CageModel({
    required super.namaKandang,
    required super.alamatKandang,
    required super.statusAktif,
    required super.clientName,
    required super.jenisPeternak,
    required super.periode,
    required super.umur,
    required super.populasi,
    required super.bodyWeight,
    required super.jenisKandang,
    required super.tanggalDoc,
  });

  factory CageModel.fromJson(Map<String, dynamic> json) => CageModel(
        namaKandang: json["nama_kandang"],
        alamatKandang: json["alamat_kandang"],
        statusAktif: json["status_aktif"],
        clientName: json["client_name"],
        jenisPeternak: json["jenis_peternak"],
        periode: json["periode"],
        umur: json["umur"],
        populasi: json["populasi"],
        bodyWeight: json["body_weight"],
        jenisKandang: json["jenis_kandang"],
        tanggalDoc: json["tanggal_doc"],
      );

  Map<String, dynamic> toJson() => {
        "nama_kandang": namaKandang,
        "alamat_kandang": alamatKandang,
        "status_aktif": statusAktif,
        "client_name": clientName,
        "jenis_peternak": jenisPeternak,
        "periode": periode,
        "umur": umur,
        "populasi": populasi,
        "body_weight": bodyWeight,
        "jenis_kandang": jenisKandang,
        "tanggal_doc": tanggalDoc,
      };
}

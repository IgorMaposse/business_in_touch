import 'package:flutter/foundation.dart';
import 'package:flutter_firebase/models/Categoria.dart';

class Servicos {
  int id;
  Categoria categoria;
  String descrisao;
  String created_at;
  String updated_at;
  String deleted_at;

  Servicos(this.id, this.categoria, this.descrisao, this.created_at,
      this.updated_at, this.deleted_at);
}

class UserModel {
  final String? id;
  //final String profil;
  final String fulName;
  final String role;
  final String email;
  final String tlephone;
  final String password;
  //final String code;

  UserModel({
    this.id,
    //required this.profil,
    required this.fulName,
    required this.role,//Admin secretair or employés
    required this.email,
    required this.tlephone,
    required this.password,
    //required this.code,
  });

  toJson() {
    return {
      //"profil": profil,
      "fulName": fulName,
      "role": role,
      "email": email,
      "phone": tlephone,
      "password": password,
      //"code": code,
    };
  }
}


/*class Employes {
  final String? id;
  //final String profil;
  final String fulName;
  final String fonction;
  final String email;
  final String tlephone;
  final String password;
  final String code;

  const Employes({
    this.id,
   //required this.profil,
    required this.fulName,
    required this.fonction,
    required this.email,
    required this.phone,
    required this.password,
    //required this.code,
  });

  toJson() {
    return {
      //"profil": profil,
      "name": name,
      "fonction": fonction,
      "email": email,
      "phone": tlephone,
      "password": password,
      //"code": code,
    };
  }
}
*/
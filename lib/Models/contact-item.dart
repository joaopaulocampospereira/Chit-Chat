class Contact {
  int? id;
  String? name;
  String? lastName;
  String? birthday;
  String? email;
  String? tell;

  Contact({
     required this.id,
     required this.name,
     required this.lastName,
     required this.birthday,
     required this.email,
     required this.tell,
  });

  static List<Contact> contacList() {
    return [
      Contact(id: 01, name: 'Pai', lastName: '', birthday: '31/05', email: 'josaphat.campos@yahoo.com.br', tell: '(16) 99999-9999'),
      Contact(id: 02, name: 'Milly', lastName: '', birthday: '04/12', email: 'jamillyvitoria@gmail.com', tell: '(16) 99999-9999'),
      Contact(id: 03, name: 'JV', lastName: '', birthday: '08/07', email: 'joaovitorchristianogomes@gmail.com', tell: '(16) 99999-9999'),
      Contact(id: 04, name: 'Caitlyn', lastName: 'Konstantin', birthday: '01/01', email: 'ckamaterasu@gmail.com', tell: '(16) 99999-9999'),
      Contact(id: 05, name: 'Violet', lastName: 'Vanhalein', birthday: '31/10', email: 'violetvanhalein@hotmail.com', tell: '(16) 99999-9999'),
      Contact(id: 06, name: 'Klauz', lastName: 'Konstantin', birthday: '29/02', email: 'christmashunter@gmail.com', tell: '(16) 99999-9999'),
      Contact(id: 07, name: 'Letícia', lastName: 'Sanchez', birthday: '01/03', email: 'docleticiaasanchez@outlook.com', tell: '(16) 99999-9999'),
    ];
  }
}
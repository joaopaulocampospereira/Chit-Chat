class Contact {
  final String id;
  final String name;
  final String birthday;
  final String email;
  final String tell;

  Contact(
     this.id,
     this.name,
     this.birthday,
     this.email,
     this.tell,
  );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
    'uid': id,
    'name': name,
    'birthday': birthday,
    'email': email,
    'tell': tell,
    };
  }

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
        json['id'],
        json['name'],
        json['birthday'],
        json['email'],
        json['tell'],
    );
  }

  // static List<Contact> contacList() {
  //   return [
  //     Contact(id: 01, name: 'Pai', birthday: '31/05', email: 'josaphat.campos@yahoo.com.br', tell: '(16) 99999-9999'),
  //     Contact(id: 02, name: 'Milly', birthday: '04/12', email: 'jamillyvitoria@gmail.com', tell: '(16) 99999-9999'),
  //     Contact(id: 03, name: 'JV', birthday: '08/07', email: 'joaovitorchristianogomes@gmail.com', tell: '(16) 99999-9999'),
  //     Contact(id: 04, name: 'Caitlyn Konstantin', birthday: '01/01', email: 'ckamaterasu@gmail.com', tell: '(16) 99999-9999'),
  //     Contact(id: 05, name: 'Violet Vanhalein', birthday: '31/10', email: 'violetvanhalein@hotmail.com', tell: '(16) 99999-9999'),
  //     Contact(id: 06, name: 'Klauz Konstantin', birthday: '29/02', email: 'christmashunter@gmail.com', tell: '(16) 99999-9999'),
  //     Contact(id: 07, name: 'Letícia Sanchez', birthday: '01/03', email: 'docleticiaasanchez@outlook.com', tell: '(16) 99999-9999'),
  //   ];
  // }
}
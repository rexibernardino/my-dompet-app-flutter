import '../entities/entities.dart';

class MyUser {
  String userId;
  String email;
  String name;
  String phoneNumber;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.phoneNumber,
  });

  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    phoneNumber: '',
  );

  MyUserEntity toEntity(){
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      phoneNumber: phoneNumber,
    );
  }

  static MyUser fromEntity(MyUserEntity entity){
    return MyUser(
      userId: entity.userId,
      email: entity.email,
      name: entity.name,
      phoneNumber: entity.phoneNumber,
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'MyUser: $userId, $email, $name, $phoneNumber';
  }
}
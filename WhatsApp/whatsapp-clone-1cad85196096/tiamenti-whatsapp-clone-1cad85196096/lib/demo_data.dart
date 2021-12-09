import 'package:whatsapp/models/chat_message.dart';
import 'package:whatsapp/models/profile.dart';

List<ChatMessage> demoMessages = [
  ChatMessage(text: "Доброе утро! 👋", isSender: false),
  ChatMessage(text: "Знаешь который час?", isSender: true),
  ChatMessage(text: "В токио ещё утро 😎", isSender: false),
];

List<Profile> demoProfiles = [
  Profile(name: 'Олег Чернышев', image: 'assets/images/demo/chats/amir-seilsepour-5vg_SarQimA.jpg'),
  Profile(name: 'Анна Логинова', image: 'assets/images/demo/chats/art-hauntington-jzY0KRJopEI.jpg'),
  Profile(name: 'Кирилл Васильев', image: 'assets/images/demo/chats/cesar-rincon-XHVpWcr5grQ.jpg'),
  Profile(name: 'Елизавета Смирнова', image: 'assets/images/demo/chats/conor-obrien-nKZuhvCGGQU.jpg'),
  Profile(name: 'Александра Филимонова', image: 'assets/images/demo/chats/daniil-lobachev-u3pi6HhSYew.jpg'),
  Profile(name: 'Алиса Трифонова', image: 'assets/images/demo/chats/daniil-lobachev-XAo09LtQiAQ.jpg'),
  Profile(name: 'Виктория Прохорова', image: 'assets/images/demo/chats/devn-53ouhY5koKY.jpg'),
  Profile(name: 'Адиль Токенов', image: 'assets/images/demo/chats/imansyah-muhamad-putera-n4KewLKFOZw.jpg'),
  Profile(name: 'Даниэль Алексеев', image: 'assets/images/demo/chats/jonathan-cooper-ViyA5myhBVw.jpg'),
  Profile(name: 'Мирослав Антонов', image: 'assets/images/demo/chats/julian-wan-WNoLnJo7tS8.jpg'),
  Profile(name: 'Ульяна Филатова', image: 'assets/images/demo/chats/seth-doyle-BZ2PNGD5Emw.jpg'),
];

Profile demoProfile = Profile(name: 'Эрик Маклин', image: 'assets/images/demo/chats/erik-mclean-DGjL0PFQK60.jpg');
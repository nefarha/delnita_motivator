import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes_model.freezed.dart';
part 'quotes_model.g.dart';

@freezed
class QuotesModel with _$QuotesModel {
  const factory QuotesModel(
      {required String id,
      required String author,
      required String quote,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
      required DateTime createdAt}) = _QuotesModel;

  factory QuotesModel.fromJson(Map<String, dynamic> json) =>
      _$QuotesModelFromJson(json);

  static final List<QuotesModel> quotesList = [
    QuotesModel(
        id: '1',
        author: 'Farhan Febryan',
        quote: 'Selamat pagi, sayangku, ingat selalu bahwa kamu luar biasa.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '2',
        author: 'Farhan Febryan',
        quote:
            'Hari ini adalah hari yang penuh kesempatan, hadapilah dengan senyuman.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '3',
        author: 'Farhan Febryan',
        quote: 'Jangan lupa, aku selalu mendukung setiap langkahmu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '4',
        author: 'Farhan Febryan',
        quote: 'Aku percaya kamu bisa menghadapi apa pun yang datang hari ini.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '5',
        author: 'Farhan Febryan',
        quote: 'Bersinar terang, sayang, dunia menunggu kehebatanmu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '6',
        author: 'Farhan Febryan',
        quote: 'Mulailah hari ini dengan hati penuh syukur dan semangat.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '7',
        author: 'Farhan Febryan',
        quote: 'Apa pun yang terjadi, aku ada di sini untukmu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '8',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah alasan aku percaya pada keajaiban setiap hari.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '9',
        author: 'Farhan Febryan',
        quote: 'Percayalah pada dirimu sendiri seperti aku percaya padamu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '10',
        author: 'Farhan Febryan',
        quote: 'Semoga harimu penuh kebahagiaan dan keberhasilan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '11',
        author: 'Farhan Febryan',
        quote: 'Setiap hari adalah hadiah, jadi nikmati setiap momennya.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '12',
        author: 'Farhan Febryan',
        quote: 'Aku selalu bangga padamu, apa pun yang kamu lakukan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '13',
        author: 'Farhan Febryan',
        quote: 'Cintaku akan selalu menjadi kekuatanmu, sayang.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '14',
        author: 'Farhan Febryan',
        quote: 'Tak peduli sesulit apa harimu, ingatlah aku selalu bersamamu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '15',
        author: 'Farhan Febryan',
        quote: 'Jangan lupa tersenyum, itu membuat segalanya lebih mudah.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '16',
        author: 'Farhan Febryan',
        quote: 'Bangkitlah dengan semangat baru untuk mencapai mimpimu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '17',
        author: 'Farhan Febryan',
        quote: 'Aku percaya pada keberanianmu, sayang.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '18',
        author: 'Farhan Febryan',
        quote: 'Setiap langkah kecil adalah bagian dari perjalanan besar kita.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '19',
        author: 'Farhan Febryan',
        quote: 'Jangan takut mencoba, kesuksesan dimulai dari langkah pertama.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '20',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah cahaya dalam hidupku, teruslah bersinar.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '21',
        author: 'Farhan Febryan',
        quote: 'Aku mencintaimu lebih dari kata-kata bisa menjelaskan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '22',
        author: 'Farhan Febryan',
        quote: 'Pagi ini adalah awal baru untuk semua yang indah.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '23',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah sumber inspirasiku setiap hari.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '24',
        author: 'Farhan Febryan',
        quote: 'Semangat pagimu adalah energi untukku juga.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '25',
        author: 'Farhan Febryan',
        quote: 'Aku berjanji akan selalu ada untukmu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '26',
        author: 'Farhan Febryan',
        quote: 'Bangun dan jalani hari ini dengan percaya diri.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '27',
        author: 'Farhan Febryan',
        quote: 'Aku yakin kamu mampu mengatasi apa pun.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '28',
        author: 'Farhan Febryan',
        quote: 'Setiap pagi adalah kesempatan untuk menjadi lebih baik.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '29',
        author: 'Farhan Febryan',
        quote: 'Senyumanmu adalah penyemangatku hari ini.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '30',
        author: 'Farhan Febryan',
        quote: 'Cinta kita adalah fondasi dari setiap hariku.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '31',
        author: 'Farhan Febryan',
        quote: 'Tidak ada batasan untuk apa yang bisa kita capai bersama.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '32',
        author: 'Farhan Febryan',
        quote: 'Hari ini adalah hari yang indah, nikmati sepenuhnya.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '33',
        author: 'Farhan Febryan',
        quote: 'Kamu membuat dunia ini menjadi tempat yang lebih baik.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '34',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah kebahagiaan dalam hidupku.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '35',
        author: 'Farhan Febryan',
        quote: 'Bersamamu, aku merasa bisa menghadapi apa saja.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '36',
        author: 'Farhan Febryan',
        quote: 'Jangan biarkan apa pun merusak harimu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '37',
        author: 'Farhan Febryan',
        quote: 'Aku selalu memikirkanmu, apa pun yang aku lakukan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '38',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah bagian terbaik dari hidupku.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '39',
        author: 'Farhan Febryan',
        quote: 'Semua akan baik-baik saja selama kita bersama.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '40',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah alasan aku bersyukur setiap pagi.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '41',
        author: 'Farhan Febryan',
        quote: 'Hari ini, jangan lupa bahwa kamu dicintai dan dihargai.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '42',
        author: 'Farhan Febryan',
        quote: 'Setiap tantangan adalah peluang untuk tumbuh lebih kuat.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '43',
        author: 'Farhan Febryan',
        quote: 'Aku bangga memiliki seseorang seperti kamu dalam hidupku.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '44',
        author: 'Farhan Febryan',
        quote: 'Kamu membawa kebahagiaan ke setiap sudut hariku.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '45',
        author: 'Farhan Febryan',
        quote: 'Percaya diri adalah kunci kesuksesan hari ini, sayang.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '46',
        author: 'Farhan Febryan',
        quote: 'Langit cerah hari ini adalah pertanda keberuntunganmu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '47',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah semangatku, kekuatanku, dan segalanya.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '48',
        author: 'Farhan Febryan',
        quote: 'Hadapi harimu dengan hati yang penuh keberanian.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '49',
        author: 'Farhan Febryan',
        quote: 'Aku selalu di sini untuk mendukung setiap langkahmu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '50',
        author: 'Farhan Febryan',
        quote: 'Jadikan harimu produktif dan penuh makna.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '51',
        author: 'Farhan Febryan',
        quote: 'Cinta kita adalah kekuatan yang tak tergoyahkan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '52',
        author: 'Farhan Febryan',
        quote: 'Apa pun yang terjadi, aku akan selalu mencintaimu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '53',
        author: 'Farhan Febryan',
        quote: 'Keajaiban selalu datang kepada mereka yang berani bermimpi.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '54',
        author: 'Farhan Febryan',
        quote: 'Pagi ini adalah anugerah, manfaatkan sebaik mungkin.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '55',
        author: 'Farhan Febryan',
        quote: 'Semoga langkahmu hari ini dipenuhi keberhasilan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '56',
        author: 'Farhan Febryan',
        quote: 'Ingatlah, aku selalu ada untukmu dalam suka maupun duka.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '57',
        author: 'Farhan Febryan',
        quote: 'Setiap detik bersamamu adalah kebahagiaan yang tak ternilai.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '58',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah alasan aku tersenyum setiap hari.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '59',
        author: 'Farhan Febryan',
        quote: 'Bersama kita bisa mengatasi segala tantangan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '60',
        author: 'Farhan Febryan',
        quote: 'Percayalah, hari ini akan menjadi hari yang luar biasa.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '61',
        author: 'Farhan Febryan',
        quote: 'Jangan biarkan kegagalan menghalangi perjalananmu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '62',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah keajaiban yang membuat hidupku lebih indah.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '63',
        author: 'Farhan Febryan',
        quote: 'Hari ini adalah kesempatan lain untuk menunjukkan potensimu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '64',
        author: 'Farhan Febryan',
        quote: 'Aku sangat mencintai caramu menghadapi dunia.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '65',
        author: 'Farhan Febryan',
        quote: 'Bangkit dan buat hari ini menjadi luar biasa, sayang.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '66',
        author: 'Farhan Febryan',
        quote: 'Kamu selalu menjadi kebanggaanku, apa pun yang terjadi.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '67',
        author: 'Farhan Febryan',
        quote: 'Aku akan selalu berada di sisimu, sepanjang waktu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '68',
        author: 'Farhan Febryan',
        quote: 'Cintaku padamu semakin kuat setiap hari.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '69',
        author: 'Farhan Febryan',
        quote: 'Hari ini adalah langkah baru untuk mencapai impian kita.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '70',
        author: 'Farhan Febryan',
        quote: 'Semoga harimu penuh dengan kebahagiaan yang tulus.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '71',
        author: 'Farhan Febryan',
        quote: 'Aku berdoa agar langkahmu selalu diberkati hari ini.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '72',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah bintang yang selalu bersinar di hidupku.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '73',
        author: 'Farhan Febryan',
        quote: 'Bersyukurlah atas setiap hal kecil yang membawa kebahagiaan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '74',
        author: 'Farhan Febryan',
        quote: 'Aku tak sabar mendengar cerita hebatmu nanti malam.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '75',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah bukti bahwa cinta sejati itu ada.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '76',
        author: 'Farhan Febryan',
        quote: 'Jadikan setiap kesalahan sebagai pelajaran berharga.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '77',
        author: 'Farhan Febryan',
        quote: 'Hari ini adalah panggungmu, sayang.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '78',
        author: 'Farhan Febryan',
        quote: 'Cinta kita adalah cerita yang ingin kujalani selamanya.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '79',
        author: 'Farhan Febryan',
        quote: 'Aku sangat mencintai semangatmu, sayang.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '80',
        author: 'Farhan Febryan',
        quote: 'Jangan lupa beristirahat sejenak di tengah kesibukan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '81',
        author: 'Farhan Febryan',
        quote: 'Hari ini adalah awal yang baik untuk hal-hal luar biasa.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '82',
        author: 'Farhan Febryan',
        quote: 'Apa pun yang kamu lakukan, lakukanlah dengan cinta.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '83',
        author: 'Farhan Febryan',
        quote: 'Bersamamu, hidupku terasa lengkap.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '84',
        author: 'Farhan Febryan',
        quote: 'Aku sangat mencintaimu, lebih dari yang bisa kukatakan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '85',
        author: 'Farhan Febryan',
        quote: 'Bersyukurlah untuk setiap peluang yang datang padamu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '86',
        author: 'Farhan Febryan',
        quote: 'Setiap hari adalah peluang untuk mencintaimu lebih dalam.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '87',
        author: 'Farhan Febryan',
        quote: 'Percaya pada dirimu sendiri adalah kunci menuju kesuksesan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '88',
        author: 'Farhan Febryan',
        quote: 'Semoga harimu penuh kebahagiaan dan cinta.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '89',
        author: 'Farhan Febryan',
        quote: 'Aku selalu berdoa agar kamu diberkati dalam setiap langkah.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '90',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah semangat hidupku, sayang.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '91',
        author: 'Farhan Febryan',
        quote: 'Hadapilah hari ini dengan senyuman terbaikmu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '92',
        author: 'Farhan Febryan',
        quote: 'Cintaku adalah energi yang selalu bersamamu.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '93',
        author: 'Farhan Febryan',
        quote: 'Jangan lupa, aku selalu mencintaimu tanpa syarat.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '94',
        author: 'Farhan Febryan',
        quote: 'Jadikan setiap momen sebagai kenangan indah.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '95',
        author: 'Farhan Febryan',
        quote: 'Percayalah, aku selalu mendukungmu, apa pun yang terjadi.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '96',
        author: 'Farhan Febryan',
        quote: 'Setiap pagi adalah awal dari kisah yang baru.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '97',
        author: 'Farhan Febryan',
        quote: 'Cinta kita adalah perjalanan yang tak pernah selesai.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '98',
        author: 'Farhan Febryan',
        quote: 'Aku sangat mencintai cara kamu mencintai hidup.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '99',
        author: 'Farhan Febryan',
        quote:
            'Hari ini adalah hari yang luar biasa untuk cinta dan kebahagiaan.',
        createdAt: DateTime(1990)),
    QuotesModel(
        id: '100',
        author: 'Farhan Febryan',
        quote: 'Kamu adalah alasan aku bangun setiap pagi dengan senyuman.',
        createdAt: DateTime(1990)),
  ];
}

DateTime _fromTimestamp(Timestamp timestamp) => timestamp.toDate();

Timestamp _toTimestamp(DateTime dateTime) => Timestamp.fromDate(dateTime);

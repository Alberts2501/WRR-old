import 'package:angel3_framework/angel3_framework.dart';
import 'package:angel3_framework/http.dart';
import 'package:angel3_orm_postgres/angel3_orm_postgres.dart';
import 'package:postgres/postgres.dart';
import 'package:we_are_remebering/models/userModel.dart';

void main() async {
  var app = Angel();

  var connection = PostgreSQLConnection(
    'localhost',
    5432,
    'WRR',
  );

  app.post('/register', (RequestContext req, ResponseContext res) async {
    var body = req.bodyAsMap;
    var username = body['username'];
    var email = body['email'];
    var password = body['password'];

    var partsOfUserInsertion = await connection.query(
      'INSERT INTO users (username, email, password) VALUES (@username, @email, @password)',
      substitutionValues: {'username': username, 'email': email, 'password': password},
    );


    app.get('/login', (req, res) {
      res.render('login_page.dart');
    });

    app.post('/login', (req, res) {
      var username = req.bodyAsMap['username'];
      var password = req.bodyAsMap['password'];

    app.get('/', (req, res) {
      res.render('homepage.dart');
    });

    await AngelHttp(app).startServer('localhost', 3000);
}
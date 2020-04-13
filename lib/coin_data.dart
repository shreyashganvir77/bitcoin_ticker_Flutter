import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  getCoinData(String currency, String cryptoCurrency) async{
    http.Response response = await http.get(
        'https://rest.coinapi.io/v1/exchangerate/$cryptoCurrency/$currency?apikey=1924A24A-E87F-49A5-BB5A-9AD286F0DF38');
    if (response.statusCode == 200) {
      String body = response.body;
      return body;
    }
    else {
      return response.statusCode;
    }
  }
}

/**
 * Dart函数-异步函数
 * JS当中，异步调用通过promise来实现
 * - async函数返回一个promise，await用于等待promise
 * Dart当中，异步调用通过Future来实现
 * - async函数返回一个Future，await用于等待Future
 */

import "package:http/http.dart" as http;
import "dart:convert";

void main() async {
  // then写法
  Future getIPAddress1() {
    const url = "https://httpbin.org/ip";
    return http.get(url).then((response) {
      String ip = jsonDecode(response.body)["origin"];
      return ip;
    });
  }

  getIPAddress1().then((res) {
    print("getIPAddress1 ${res}");
  }).catchError((err) {
    print(err);
  });

  // async和await写法
  Future<String> getIPAddress2() async {
    const url = "https://httpbin.org/ip";
    final response = await http.get(url);
    String ip = jsonDecode(response.body)["origin"];
    return ip;
  }

  try {
    String ip = await getIPAddress2();
    print("getIPAddress2 ${ip}");
  } catch (err) {
    print(err);
  }
}

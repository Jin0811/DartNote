/**
 * 第三方库网站：https://pub.dev
 * pub命令：flutter目录/bin/cache/dart-sdk/bin
 * 依赖管理文件：pubspec.yaml
 */

import "package:http/http.dart" as http;
import "dart:convert";

void main() async {
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

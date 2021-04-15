import 'network.dart';

const urlOpen =
    'https://dsc-session3-task.herokuapp.com/restuarant/getItem?ingr=';

class MenuData {
  Future getMenu(String type) async {
    Network network = Network(urlOpen + type);
    var menuItems = await network.getData();
    return menuItems;
  }
}

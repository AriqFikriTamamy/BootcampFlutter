import 'human.dart';
import 'beast_titan.dart';
import 'attack_titan.dart';
import 'armor_titan.dart';

void main(List<String> args) {
  var human = Human();
  var beastTitan = BeastTitan();
  var attackTitan = Attack_titan();
  var armorTitan = ArmorTitan();

  human.setPowerPoint(7.0);
  beastTitan.setPowerPoint(4.0);
  attackTitan.setPowerPoint(8.0);
  armorTitan.setPowerPoint(6.0);

  print('Power Point untuk Human adalah: ${human.getPowerPoint()}');
  print('Power Point untuk Beast Titan adalah: ${beastTitan.getPowerPoint()}');
  print(
      'Power Point untuk Attack Titan adalah: ${attackTitan.getPowerPoint()}');
  print('Power Point untuk Armor Titan adalah: ${armorTitan.getPowerPoint()}');
  print('');
  print('Aksi Human: ${human.killAllTitan()}');
  print('Aksi Beast Titan: ${beastTitan.lempar()}');
  print('Aksi Attack Titan: ${attackTitan.punch()}');
  print('Aksi Armor Titan: ${armorTitan.terjang()}');
}

import 'package:angular/angular.dart';
import 'dart:async';
import 'src/hero.dart';
import 'src/hero_detail_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  providers: const [HeroService]
)
class AppComponent implements OnInit {
  final title = 'Tour of Heroes';
  final HeroService _heroService; //  private property on AppComponent

  List<Hero> heroes;
  Hero selectedHero;
  AppComponent(this._heroService); //  constructor to initialize service

  Future<Null> getHeroes() async => heroes = await _heroService.getHeroes();
  void ngOnInit() => getHeroes();
  void onSelect(Hero hero) => selectedHero = hero;



}

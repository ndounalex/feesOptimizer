import 'package:country_pickers/country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'dart:convert';
import 'package:flutter_localizations/flutter_localizations.dart';
import './localization/AppLanguage.dart';
import './localization/app_localization.dart';
import 'package:provider/provider.dart';
import './rates.dart';
// TODO: Import ad_helper.dart
import './ad_helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:developer';

const int maxFailedLoadAttempts = 3;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(MyApp(
    appLanguage: appLanguage,
  ));
}

class MyApp extends StatelessWidget {
  final AppLanguage appLanguage;

  MyApp({required this.appLanguage});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
      create: (_) => appLanguage,
      child: Consumer<AppLanguage>(builder: (context, model, child) {
        return MaterialApp(
          title: 'Fees Optimizer',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          locale: model.appLocal,
          supportedLocales: [
            Locale('en', ''),
            Locale('fr', ''),
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          home: MyHomePage(title: 'Fees Optimizer'),
        );
      }),
    );
  }
}

class MobileMoneyOperator {
  const MobileMoneyOperator(this.name, this.icon);
  final String name;
  final Icon icon;
}

class OperatorItem {
  const OperatorItem(this.name, this.icon);
  final String name;
  final Image icon;
}

class TransactionItem {
  const TransactionItem(this.name, this.icon, this.code);
  final String name;
  final FaIcon icon;
  final String code;
}

class AppBarChoice {
  const AppBarChoice(this.title, this.icon, this.code);
  final String title;
  final IconData icon;
  final String code;
}

class ReceiverItem {
  const ReceiverItem(this.name, this.code);
  final String name;
  final String code;
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title = ""}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<AppBarChoice> choices = <AppBarChoice>[
    const AppBarChoice('update', Icons.directions_car, 'update'),
    const AppBarChoice('change_language', Icons.directions_bike, 'language'),
  ];
  AppBarChoice? _selectedChoice; // The app's "state".
  var _selectedCountry = null;

  void _select(AppBarChoice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    if (choice.code == "language") {
      showLanguageAlertDialog(context);
    }
    setState(() {
      _selectedChoice = choice;
    });
  }

  InterstitialAd? _interstitialAd;
  int _numInterstitialLoadAttempts = 0;

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              // _moveToHome();
            },
          );
          print('$ad loaded');
          _interstitialAd = ad;
          _numInterstitialLoadAttempts = 0;
          _interstitialAd!.setImmersiveMode(true);

          /* setState(() {
            _interstitialAd = ad;
          });*/
        },
        onAdFailedToLoad: (err) {
          print('Failed to load an interstitial ad: ${err.message}');
          print('InterstitialAd failed to load: $err.');
          _numInterstitialLoadAttempts += 1;
          _interstitialAd = null;
          if (_numInterstitialLoadAttempts < maxFailedLoadAttempts) {
            _loadInterstitialAd();
          }
        },
      ),
    );
  }

  void _showInterstitialAd(context) {
    if (_interstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      if (context != null) feesOptimizer(context);
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _loadInterstitialAd();
        if (context != null) feesOptimizer(context);
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _loadInterstitialAd();
        if (context != null) feesOptimizer(context);
      },
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  }

  Future<InitializationStatus> _initGoogleMobileAds() {
    // TODO: Initialize Google Mobile Ads SDK
    return MobileAds.instance.initialize();
  }

  int languageValue = 2;

  // TODO: Add _bannerAd
  BannerAd? _bannerAd;

  // TODO: Add _isBannerAdReady
  bool _isBannerAdReady = false;

  // BannerAd myBanner;

  /* BannerAd buildBannerAd() {
    return BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.loaded) {
            myBanner..show();
          }
        });
  }

  BannerAd buildLargeBannerAd() {
    return BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.largeBanner,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.loaded) {
            myBanner
              ..show(
                  anchorType: AnchorType.top,
                  anchorOffset: MediaQuery.of(context).size.height * 0.15);
          }
        });
  }*/

  void _selectCountry(country) {
    var operator = countryOperators[country]?[0];
    setState(() {
      _selectedCountry = country;
      selectedOperator = operator?['name']!.toString();
    });
  }

// ['CM', 'TD', 'CI', 'GA','SN','BF','TG']
  /* var countryOperators = {
    'CI': ['ora', 'mtn', 'moov', 'yup'],
    'CM': ['ora', 'mtn', 'exp', 'yup', 'yoo'],
    'SN': ['ora', 'yup'],
    'BF': ['ora', 'yup'],
    'ma': ['ora'],
    'ni': ['ora'],
    'GA': ['air', 'moov', 'gat'],
    'TD': ['tigo', 'air'],
    'TG': ['moov', 'tmon'],
    'MG': ['air', 'ora', "mvo"],
    'CD': ['ora', 'air_cdf', 'air_usd']
  };*/

  var countryOperators = {
    'CI': [
      {'icon': 'ora', 'name': 'ora', 'currency': 'FCFA'},
      {'icon': 'mtn', 'name': 'mtn', 'currency': 'FCFA'},
      {'icon': 'moov', 'name': 'moov', 'currency': 'FCFA'},
      // 'yup'
    ],
    'CM': [
      {'icon': 'ora', 'name': 'ora', 'currency': 'FCFA'},
      {'icon': 'mtn', 'name': 'mtn', 'currency': 'FCFA'},
      {'icon': 'exp', 'name': 'exp', 'currency': 'FCFA'},
      // 'yup',
      {'icon': 'yoo', 'name': 'yoo', 'currency': 'FCFA'}
    ],
    'SN': [
      {'icon': 'ora', 'name': 'ora', 'currency': 'FCFA'},
      // 'yup'
    ],
    'BF': [
      {'icon': 'ora', 'name': 'ora', 'currency': 'FCFA'},
      // 'yup'
    ],
    'ma': [
      {'icon': 'ora', 'name': 'ora', 'currency': 'FCFA'}
    ],
    'ni': [
      {'icon': 'ora', 'name': 'ora', 'currency': 'FCFA'}
    ],
    'GA': [
      {'icon': 'air', 'name': 'air', 'currency': 'FCFA'},
      {'icon': 'moov', 'name': 'moov', 'currency': 'FCFA'},
      {'icon': 'gat', 'name': 'gat', 'currency': 'FCFA'}
    ],
    'TD': [
      {'icon': 'tigo', 'name': 'tigo', 'currency': 'FCFA'},
      {'icon': 'air', 'name': 'air', 'currency': 'FCFA'}
    ],
    'TG': [
      {'icon': 'moov', 'name': 'moov', 'currency': 'FCFA'},
      {'icon': 'tmon', 'name': 'tmon', 'currency': 'FCFA'}
    ],
    'MG': [
      {'icon': 'air', 'name': 'air', 'currency': 'FCFA'},
      {'icon': 'ora', 'name': 'ora', 'currency': 'FCFA'},
      {'icon': "mvo", 'name': 'mvo', 'currency': 'FCFA'}
    ],
    'CD': [
      {'icon': 'ora', 'name': 'ora_east_cdf', 'currency': 'CDF'},
      {'icon': 'ora', 'name': 'ora_east_usd', 'currency': 'USD'},
      {'icon': 'ora', 'name': 'ora_west_cdf', 'currency': 'CDF'},
      {'icon': 'ora', 'name': 'ora_west_usd', 'currency': 'USD'},
      {'icon': 'air', 'name': 'air_cdf', 'currency': 'CDF'},
      {'icon': 'air', 'name': 'air_usd', 'currency': 'USD'},
      {'icon': 'mpesa', 'name': 'mpesa_usd', 'currency': 'USD'},
      {'icon': 'mpesa', 'name': 'mpesa_cdf', 'currency': 'CDF'}
    ],
    'HT': [
      {'icon': 'mn_cash', 'name': 'mn_cash', 'currency': 'HTG'},
    ]
  };
  var feesRateValues = {
    // 'CI':['ora', 'mtn', 'moov', 'yup'],
    'CM': {'ora': cm_orange, 'mtn': cm_mtn, 'exp': cm_exp, 'yup': cm_yup},
    'TD': {'air': td_air},
    'MG': {'air': mg_air, 'mvo': mg_mvo, 'ora': mg_ora},
    'CD': {
      'ora': cm_orange,
      'air_cdf': cd_air_cdf,
      'air_usd': cd_air_usd,
      'mpesa_cdf': cd_mpesa_cdf,
      'mpesa_usd': cd_mpesa_usd,
      'cd_ora_west_cdf': cd_ora_west_cdf,
      'cd_ora_west_usd': cd_ora_west_usd,
      'cd_ora_east_cdf': cd_ora_east_cdf,
      'cd_ora_east_usd': cd_ora_east_usd,
    },
    'HT': {'mn_cash': ht_mn_cash},
    /* 'SN':['ora', 'yup'],
    'BF':['ora', 'yup'],
    'ma':['ora'],
    'ni':['ora'],
    'GA':['air', 'moov', 'gat'],
    'TD':['tigo'],
    'TG':['moov','tmon']*/
  };

  var internationalOperators = ['CI', 'SN', 'BF', 'TG', 'CM'];
  var operators = {
    'mtn': 'MTN Mobile Money',
    'ora': 'Orange Money',
    'yup': 'YUP',
    'moov': 'MOOV Money',
    'exp': 'Express Union Mobile Money',
    'air': 'Airtel Money',
    'mn_cash': 'Mon Cash',
    'air_cdf': 'Airtel Money (Transaction CDF)',
    'air_usd': 'Airtel Money (Transaction USD)',
    'mpesa_cdf': 'M-Pesa (Transaction CDF)',
    'mpesa_usd': 'M-Pesa (Transaction USD)',
    'ora_west_cdf': 'OM Region Ouest (Transaction CDF)',
    'ora_west_usd': 'OM Region Ouest (Transaction USD)',
    'ora_east_cdf': 'OM Region Est (Transaction CDF)',
    'ora_east_usd': 'OM Region Est (Transaction USD)',
    'gat': 'Gabon Telecom',
    'tigo': 'Tigo Cash',
    'tmon': 'TMoney',
    'yoo': 'Yoomee Money',
    'mvo': 'Mvola Mobile Money'
  };

  bool findString(String searched) {
    for (var index = 0; index < internationalOperators.length; index++) {
      if (internationalOperators[index] == searched) {
        return true;
      }
    }
    return false;
  }

  int _counter = 0;
  TextEditingController? _controller;
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _loadInterstitialAd();
    // TODO: Initialize _bannerAd
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );

    _bannerAd!.load();
  }

  void showLanguageAlertDialog(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle = theme.textTheme.subtitle1!
        .copyWith(color: theme.textTheme.caption!.color);
    showDialog(context: context, builder: (_) => MyChooseLanguageDialog());
  }

  void showAlertDialog(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle = theme.textTheme.subtitle1!
        .copyWith(color: theme.textTheme.caption!.color);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Resultat de l'optimisation"),
              content: Text("mes que un club", style: dialogTextStyle),
              actions: [
                FlatButton(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop("OK");
                    })
              ]);
        });
  }

  void showOptimizationNotificationAlertDialog(
      BuildContext context, title, content) {
    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle = theme.textTheme.subtitle1!
        .copyWith(color: theme.textTheme.caption!.color);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(title),
              content: Text(content, style: dialogTextStyle),
              actions: [
                FlatButton(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop("OK");
                    })
              ]);
        });
  }

  void dispose() {
    _controller!.dispose();
    _bannerAd!.dispose();
    super.dispose();
  }

  // String feeType = null;
  Map<dynamic, dynamic> optimizationSolution = {};

  void feesOptimizer(context) {
    var action = null;
    if (selectedTransaction != null) {
      action = selectedTransaction;
    }
    String operator = selectedOperator;
    /* if(selectedOperator!=null){
      operator = selectedOperator.name;
    }*/
    var country = _selectedCountry;
    var receiver = null;
    if (selectedReceiver != null) {
      receiver = selectedReceiver;
    }
    var currency = null;
    var feeType = 'in';
    log('data =================== 1:');
    print("data ====================== 1");
    print(operator + " " + country + " " + receiver);
    log(operator);
    log(country);
    log(receiver);
    for (var index = 0; index < countryOperators[country]!.length; index++) {
      if (countryOperators[country]![index]['name'] == operator) {
        currency = countryOperators[country]![index]['currency'];
        break;
      }
    }

    if (selectedTransaction == null) {
      showOptimizationNotificationAlertDialog(
          context,
          AppLocalizations.of(context)!.translate("error"),
          AppLocalizations.of(context)!.translate("mandatoryAction"));
      return;
    } else if (operator == null) {
      showOptimizationNotificationAlertDialog(
          context,
          AppLocalizations.of(context)!.translate("error"),
          AppLocalizations.of(context)!.translate("mandatoryOperator"));
      return;
    } else if (findString(country) && action == 'send' && feeType == null) {
      showOptimizationNotificationAlertDialog(
          context,
          AppLocalizations.of(context)!.translate("error"),
          AppLocalizations.of(context)!.translate("mandatoryTransferType"));
      return;
    } else if (receiver == null && !(findString(country) && feeType == 'out')) {
      showOptimizationNotificationAlertDialog(
          context,
          AppLocalizations.of(context)!.translate("error"),
          AppLocalizations.of(context)!.translate("mandatoryReceiverStatus"));
      return;
    } else if (_controller == null || _controller!.text == "") {
      showOptimizationNotificationAlertDialog(
          context,
          AppLocalizations.of(context)!.translate("error"),
          AppLocalizations.of(context)!.translate("enterAmount"));
      return;
    }
    int amount = int.parse(_controller!.text);
    print("==================== amount ============ " + amount.toString());
    var intervalIndex = null;
    var feesRate = null;
    if (findString(country)) {
      if (action == 'out') feeType = 'in';
      feesRate = feesRateValues[country]?['$operator']; // [feeType];
      if (feeType == 'out') {
        receiver = 'customer';
      }
    } else {
      feesRate = feesRateValues[country]?[operator];
    }
    print(feesRate);
    for (var index = 0; index < feesRate[action].length; index++) {
      var interval = feesRate[action][index];
      if ((interval["max"] == null && interval["min"] <= amount) ||
          (interval["min"] <= amount && interval["max"] >= amount)) {
        print("================ interval ============ ");
        print(interval["min"].toString() + "   " + interval["min"].toString());
        print(interval);
        intervalIndex = index;
        break;
      }
    }
    /* if (intervalIndex == null) {
      // afficher un dialog pour dire que le montant n'est pas correct
      showOptimizationNotificationAlertDialog(
          context,
          AppLocalizations.of(context)!.translate("information"),
          AppLocalizations.of(context)!.translate("invalidAmount"));
      return;
    }*/
    var iterationIndex = null;
    if (intervalIndex != null) {
      iterationIndex = intervalIndex;
    }
    bool inverseOptimisation = false;
    if ((iterationIndex != null) &&
        (iterationIndex < (feesRate[action].length - 1))) {
      double currentFeesWithoutOptimization = 0.0;
      double nextFeesWithoutOptimisation = 0.0;
      if (feesRate[action][iterationIndex][selectedReceiver] is String) {
        currentFeesWithoutOptimization = double.parse(feesRate[action]
                    [iterationIndex][selectedReceiver]
                .split('%')[0]) *
            amount /
            100;
      } else {
        currentFeesWithoutOptimization =
            feesRate[action][iterationIndex][selectedReceiver].toDouble();
      }
      if (feesRate[action][iterationIndex + 1][selectedReceiver] is String) {
        nextFeesWithoutOptimisation = double.parse(feesRate[action]
                    [iterationIndex + 1][selectedReceiver]
                .split('%')[0]) *
            feesRate[action][iterationIndex + 1]['min'] /
            100;
      } else {
        nextFeesWithoutOptimisation =
            feesRate[action][iterationIndex + 1][selectedReceiver].toDouble();
      }
      if (currentFeesWithoutOptimization > nextFeesWithoutOptimisation) {
        inverseOptimisation = true;
      }
    }
    int extraStep = -2;
    if (inverseOptimisation == true) {
      extraStep = iterationIndex + 1;
      iterationIndex++;
    } else if (intervalIndex == null) {
      iterationIndex = feesRate[action].length - 1;
    }
    // maximize_transfert(iterationIndex,feesRate, amount);
    List<Map<dynamic, dynamic>> allOptimizations = [];
    while (iterationIndex != -1) {
      if (inverseOptimisation == true && (iterationIndex == extraStep)) {
        maximize_transfert(iterationIndex, feesRate[action],
            feesRate[action][iterationIndex]['min']);
      } else {
        maximize_transfert(iterationIndex, feesRate[action], amount);
      }
      if (optimizationSolution.keys.length != 0)
        allOptimizations.add(optimizationSolution);
      optimizationSolution = {};
      print("====================== all optimization =============== ");
      print(allOptimizations);
      iterationIndex--;
    }
    print("====================== all optimization =============== ");
    print(allOptimizations);
    log('data ================= 2: $optimizationSolution');
    log('data ================= 4: $allOptimizations');
    var minItemAmount = 0.0;
    for (var i = 0; i < allOptimizations.length; i++) {
      Map<dynamic, dynamic> optimizationItem = allOptimizations[i];
      if (i == 0) {
        optimizationItem.forEach((key, value) {
          if (value['rate'] is String) {
            var rate = double.parse(value['rate'].split('%')[0]) *
                value['toSend'] /
                100;
            minItemAmount = minItemAmount + rate;
          } else {
            minItemAmount = minItemAmount + value['rate'];
          }
        });
        optimizationSolution = optimizationItem;
      } else {
        var currentItemAmount = 0.0;
        optimizationItem.forEach((key, value) {
          if (value['rate'] is String) {
            var rate = double.parse(value['rate'].split('%')[0]) *
                value['toSend'] /
                100;
            currentItemAmount = currentItemAmount + rate;
          } else {
            currentItemAmount = currentItemAmount + value['rate'];
          }
        });
        log('data ================= 2: $optimizationItem');
        if ((currentItemAmount < minItemAmount) ||
            (currentItemAmount == minItemAmount &&
                optimizationItem.keys.length <
                    optimizationSolution.keys.length)) {
          minItemAmount = currentItemAmount;
          optimizationSolution = optimizationItem;
        }
      }
    }
    log('data ================= 3: $optimizationSolution');
    var optimizationAmount = 0.0;
    var tips = '';
    var tipsAccount = 1;
    print("================== optimizationSolution =================");
    print(optimizationSolution);
    optimizationSolution.forEach((key, value) {
      if (optimizationSolution[key]['rate'] is String) {
        var rate =
            double.parse(optimizationSolution[key]['rate'].split('%')[0]) *
                optimizationSolution[key]['toSend'] /
                100;
        optimizationAmount = optimizationAmount + rate;
        var optimizationSend = optimizationSolution[key]["toSend"];
        tips = tips +
            '$tipsAccount - ' +
            AppLocalizations.of(context)!.translate("sendOptimizationInstance",
                params: {
                  "transferAmount": '$optimizationSend',
                  "feeAmount": rate.toStringAsFixed(2)
                }) +
            "\r\n"; /*`<li> Faire un transfert de ${this.optimizationSolution[item]['toSend']} FCFA qui vous coutera ${rate} FCFA comme frais </li>`*/
      } else {
        var optimizationSend = optimizationSolution[key]["toSend"];
        var optimizationRate = optimizationSolution[key]["rate"];
        optimizationAmount =
            optimizationAmount + optimizationSolution[key]['rate'];
        tips = tips +
            '$tipsAccount - ' +
            AppLocalizations.of(context)!
                .translate("sendOptimizationInstance", params: {
              "transferAmount": '$optimizationSend',
              "feeAmount": optimizationRate.toStringAsFixed(2)
            }) +
            "\r\n"; /*`<li> Faire un transfert de ${this.optimizationSolution[item]['toSend']} FCFA qui vous coutera ${this.optimizationSolution[item]['rate']} FCFA comme frais </li>`*/
      }
      tipsAccount++;
    });
    // this.loader.dismiss();
    var standardAmount = 0.0;
    if (feesRate[action][intervalIndex][receiver] is String) {
      standardAmount = double.parse((double.parse(
                  feesRate[action][intervalIndex][receiver].split('%')[0]) *
              amount /
              100)
          .toStringAsFixed(2));
    } else {
      standardAmount = feesRate[action][intervalIndex][receiver].toDouble();
    }
    print("============standard amount ============ " +
        standardAmount.toString());
    print("================ optimizationAmount ============ " +
        optimizationAmount.toString());
    int optimizationLength = optimizationSolution.keys.length;
    showOptimizationNotificationAlertDialog(
        context,
        AppLocalizations.of(context)!.translate("optimizationTip"),
        optimizationSolution.keys.length != 0 &&
                standardAmount > optimizationAmount
            ? AppLocalizations.of(context)!
                .translate("optimizationFee", params: {
                "optimizationAmount": /* '$optimizationAmount'*/ optimizationAmount
                    .toStringAsFixed(2),
                "standardAmount": '$standardAmount',
                "tips": tips,
                "currency": currency,
                "optimizationSolutionLength": '$optimizationLength'
              })
            : AppLocalizations.of(context)!.translate("optimizationNotFound"));
    optimizationSolution = {};
  }

  maximize_transfert(intervalIndex, operatorFeesRate, amount) {
    var action = selectedTransaction;
    var operator = selectedOperator;
    var country = _selectedCountry;
    var receiver = selectedReceiver;
    var index = null;
    if (intervalIndex == null) {
      index = operatorFeesRate.length - 1;
    } else {
      index = intervalIndex - 1;
    }
    double currentIntervalAmount = 0.0;
    if (intervalIndex == null ||
        operatorFeesRate[intervalIndex][receiver] == -1) {
      currentIntervalAmount = amount;
    } else if (operatorFeesRate[intervalIndex][receiver] is String) {
      currentIntervalAmount = double.parse(
              operatorFeesRate[intervalIndex][receiver].split('%')[0]) *
          amount /
          100;
    } else {
      print("================ my interval ============ " +
          intervalIndex.toString());
      currentIntervalAmount =
          operatorFeesRate[intervalIndex][receiver].toDouble();
    }
    while (index >= 0) {
      if (operatorFeesRate[index][receiver] == -1) {
        index--;
        continue;
      }
      double previousIntervalAmount = 0;
      if (operatorFeesRate[index][receiver] is String) {
        previousIntervalAmount =
            double.parse(operatorFeesRate[index][receiver].split('%')[0]) *
                amount /
                100;
      } else {
        previousIntervalAmount = operatorFeesRate[index][receiver].toDouble();
      }
      if (previousIntervalAmount >= currentIntervalAmount) {
        index--;
      } else {
        break;
      }
    }
    print("=============== my index ============== " +
        index.toString() +
        " " +
        intervalIndex.toString());
    if ((index < 0) && (intervalIndex != 0)) {
      optimizationSolution[optimizationSolution.keys.length] = {
        'index': intervalIndex - 1,
        'rate': currentIntervalAmount,
        'toSend': amount
      };
      return;
    } else {
      print("================iteration================= " +
          amount.toString() +
          "  " +
          intervalIndex.toString());
      if (intervalIndex == 0) {
        index = 0;
        /* optimizationSolution[optimizationSolution.keys.length]={'index':0,'rate':operatorFeesRate[0][receiver][action], 'toSend':amount};
        return;*/
      }
      var maxIndex = intervalIndex;
      intervalIndex = null;
      var retained = 0.0;
      var newAmount = amount - operatorFeesRate[index]['max'];
      print(
          '=================== my new amout ========= ' + newAmount.toString());
      if ((newAmount > 0) && (newAmount < operatorFeesRate[0]['min'])) {
        if (operatorFeesRate[0][receiver] is String) {
          retained = operatorFeesRate[index]['max'] -
              (operatorFeesRate[0]['min'] - newAmount);
          newAmount = operatorFeesRate[0]['min'];
        } else {
          /* retained = operatorFeesRate[index]['max'] -
              (operatorFeesRate[0]['max'] - newAmount);
          newAmount = operatorFeesRate[0]['max'];*/
          retained = operatorFeesRate[index]['max'] -
              (operatorFeesRate[0]['min'] - newAmount);
          newAmount = operatorFeesRate[0]['min'];
        }
      }
      optimizationSolution[optimizationSolution.keys.length] = {
        'index': index,
        'rate': operatorFeesRate[index][receiver],
        'toSend': retained != 0
            ? retained
            : (newAmount < 0 ? amount : operatorFeesRate[index]['max'])
      };
      print(
          "================== amount ================ " + newAmount.toString());
      print(optimizationSolution);
      if (newAmount <= 0) return;
      if (operatorFeesRate[maxIndex]['max'] <= newAmount) {
        intervalIndex = maxIndex;
      } else {
        for (var i = 0; i < operatorFeesRate.length; i++) {
          var interval = operatorFeesRate[i];
          if ((interval['max'] == null && interval['min'] <= newAmount) ||
              (interval['min'] <= newAmount && interval['max'] >= newAmount)) {
            intervalIndex = i;
            break;
          }
        }
      }

      maximize_transfert(
        intervalIndex,
        operatorFeesRate,
        newAmount,
      );
    }
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  var selectedOperator;

  String? selectedTransaction;

  String? selectedReceiver;

  //FaIcon(FontAwesomeIcons.gamepad)
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    /* List<OperatorItem> operatorsList = <OperatorItem>[
    const OperatorItem('Android',Icon(Icons.android,color:  const Color(0xFF167F67),)),
    const OperatorItem('Flutter',Icon(Icons.flag,color:  const Color(0xFF167F67),)),
    const OperatorItem('ReactNative',Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)),
    const OperatorItem('iOS',Icon(Icons.mobile_screen_share,color:  const Color(0xFF167F67),)),
  ];*/
    var appLanguage = Provider.of<AppLanguage>(context);
    List<OperatorItem> operatorsList = <OperatorItem>[];
    if (_selectedCountry != null) {
      var operatorsKeys = countryOperators[_selectedCountry];
      operatorsList = operatorsKeys!
          .map((operator) => OperatorItem(
                operator['name']!.toString(),
                Image.asset(
                  'assets/' + operator['icon']!.toString() + '.png',
                  height: 65,
                  width: 65,
                ),
              ))
          .toList();
    }

    List<ReceiverItem> receivers = <ReceiverItem>[
      ReceiverItem(
          AppLocalizations.of(context)!.translate("mobileMoneyAccountHolder"),
          'customer'),
      ReceiverItem(
          AppLocalizations.of(context)!.translate("noMobileMoneyAccountHolder"),
          'no_customer'),
    ];

    List<TransactionItem> transactions = <TransactionItem>[
      TransactionItem(AppLocalizations.of(context)!.translate("send"),
          FaIcon(FontAwesomeIcons.exchangeAlt), 'send'),
      TransactionItem(AppLocalizations.of(context)!.translate("withDrawal"),
          FaIcon(FontAwesomeIcons.moneyBill), 'out'),
    ];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          // overflow menu
          PopupMenuButton<AppBarChoice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((AppBarChoice choice) {
                return PopupMenuItem<AppBarChoice>(
                  value: choice,
                  child: Text(
                      AppLocalizations.of(context)!.translate(choice.title)),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment(-0.8, -0.8),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Stack(children: <Widget>[
          ListView(
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context)!
                        .translate("chooseCountry")),
                    ListTile(
                        title: _buildCountryPickerDropdown(
                            _selectCountry, context)),
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context)!
                        .translate("chooseOperator")),
                    new Container(
                        margin: const EdgeInsets.only(left: 3.0, right: 4.0),
                        child: DropdownButton<String>(
                          hint: Text(AppLocalizations.of(context)!
                              .translate("chooseOperator")),
                          value: selectedOperator,
                          underline: Container(
                            height: 0,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedOperator = value;
                            });
                          },
                          items: operatorsList.map((OperatorItem op) {
                            return DropdownMenuItem<String>(
                              value: op.name,
                              child: Row(
                                children: <Widget>[
                                  op.icon,
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    operators[op.name]!.toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ))
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context)!
                        .translate("chooseAction")),
                    new Container(
                        margin: const EdgeInsets.only(left: 12.0, right: 20.0),
                        child: DropdownButton<String>(
                          hint: Text(AppLocalizations.of(context)!
                              .translate("chooseAction")),
                          value: selectedTransaction,
                          underline: Container(
                            height: 0,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              selectedTransaction = value;
                            });
                          },
                          items: transactions.map((TransactionItem op) {
                            return DropdownMenuItem<String>(
                              value: op.code,
                              child: Row(
                                children: <Widget>[
                                  op.icon,
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    op.name,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ))
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context)!
                        .translate("receiverStatus")),
                    new Container(
                        margin: const EdgeInsets.only(left: 12.0, right: 20.0),
                        child: DropdownButton<String>(
                          hint: Text(AppLocalizations.of(context)!
                              .translate("receiverStatus")),
                          value: selectedReceiver,
                          underline: Container(
                            height: 0,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              selectedReceiver = value;
                            });
                          },
                          items: receivers.map((ReceiverItem op) {
                            return DropdownMenuItem<String>(
                              value: op.code,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    op.name,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ))
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context)!
                        .translate("transferAmount")),
                    new Container(
                      margin: const EdgeInsets.only(
                          left: 12.0, right: 20.0, bottom: 5.0),
                      child: new TextField(
                        keyboardType: TextInputType.number,
                        controller: _controller,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only numbers can be entered
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              new Container(
                  margin: const EdgeInsets.only(left: 12.0, right: 12.0),
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      //showAlertDialog(context);
                      _showInterstitialAd(context);
                      // feesOptimizer(context);
                    },
                    color: Colors.blue,
                    child: Text(
                        AppLocalizations.of(context)!.translate("launchSearch"),
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  )),
              // TODO: Display a banner when ready
            ],
          ),
          if (_isBannerAdReady)
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: _bannerAd!.size.width.toDouble(),
                  height: _bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd!),
                ),
              ),
            )
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

_buildCountryPickerDropdown(_selectCountry, context,
        {bool filtered = false,
        bool sortedByIsoCode = false,
        bool hasPriorityList = false}) =>
    Row(
      children: <Widget>[
        CountryPickerDropdown(
          initialValue: 'CM',
          itemBuilder: (Country country) =>
              _buildDropdownItem(country, context),
          itemFilter: (c) => [
            'CM',
            'TD',
            'CI',
            'GA',
            'SN',
            'BF',
            'TG',
            'MG',
            'CD',
            'HT'
          ].contains(c.isoCode),
          priorityList: hasPriorityList
              ? [
                  CountryPickerUtils.getCountryByIsoCode('GB'),
                  CountryPickerUtils.getCountryByIsoCode('CN'),
                ]
              : null,
          sortComparator: (Country a, Country b) => a.name.compareTo(b.isoCode),
          onValuePicked: (Country country) {
            _selectCountry(country.isoCode);
          },
        )
      ],
    );

Widget _buildDropdownItem(Country country, context) => Container(
      child: Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(
            width: 8.0,
          ),
          Text(AppLocalizations.of(context)!.translate(country.isoCode))
          // Text("${country.name}"),
        ],
      ),
    );

class MyChooseLanguageDialog extends StatefulWidget {
  MyChooseLanguageDialog({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  MyChooseLanguageDialogState createState() =>
      new MyChooseLanguageDialogState();
}

class MyChooseLanguageDialogState extends State<MyChooseLanguageDialog> {
  String languageValue = "";

  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context);
    if (languageValue == "") languageValue = appLanguage.appLocal.languageCode;
    return new AlertDialog(
        title: Text(AppLocalizations.of(context)!.translate('chooseLanguage')),
        content: new Container(
            height: 100,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: 'en',
                          groupValue: languageValue,
                          onChanged: (String? value) {
                            setState(() {
                              if (value == null) {
                                languageValue = "";
                              } else {
                                languageValue = value;
                              }
                            });
                          },
                        ),
                        new Text(
                          'English',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ]),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Radio(
                        value: 'fr',
                        groupValue: languageValue,
                        onChanged: (String? value) {
                          setState(() {
                            if (value == null) {
                              languageValue = "";
                            } else {
                              languageValue = value;
                            }
                          });
                        },
                      ),
                      new Text(
                        'Français',
                        style: new TextStyle(fontSize: 16.0),
                      ),
                    ],
                  )
                ])),
        actions: [
          FlatButton(
              child: Text("OK"),
              onPressed: () {
                appLanguage.changeLanguage(Locale(languageValue));
                Navigator.of(context, rootNavigator: true).pop("OK");
              }),
          FlatButton(
              child: Text(AppLocalizations.of(context)!.translate('cancel')),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop("Cancel");
              }),
        ]);
  }
}

//
//  Created by Faiz Ikhwan on 26 October 2019.
//  Copyright © 2019 Faiz Ikhwan. All rights reserved.
//

import 'package:faiz_flutter_web/models/project.dart';

class Data {
  static List<Project> projects = [
    Project("iKinet TDM", ["Flutter", "Dart"], "A hyrid mobile application using Flutter for pharmacist. TDM calculator allows users to estimate dose and dosage intervals. It also display graph. Currently, available drugs that can calculate are Aminoglycosides, Vancomycin, Phenytoin, Valproates, Carbamazepine, Theophylline, Digoxin, Cyclosporine and Tacrolimus.", ["assets/images/tdm2.jpg", "assets/images/tdm1.jpg"]),
    Project("Vaccmi", ["Android", "Kotlin", "XML", "Firebase"], "An Android mobile application using Kotlin for Malaysian parents to manage their children vaccination status. This application also notify when is the next appointment date.", ["assets/images/vacmi1.png", "assets/images/vacmi2.png"]),
    Project("Encrypted Chat Apps", ["Android", "iOS", "Java", "XML", "Swift", "Firebase"], "An Android mobile application using Java and iOS mobile application using Swift for encrypted realtime messaging apps. Encryption is done on client side.", ["assets/images/chatapps1.png", "assets/images/chatapps2.png", "assets/images/chatapps3.jpeg"]),
    Project("Bukhari Lite", ["Flutter", "Dart", "SQLite"], "A hyrid mobile application using Flutter that have a corpus of Hadith Sahih Bukhari. User can search using natural language query or browse hadith by category.", ["assets/images/hadith1.jpg", "assets/images/hadith2.jpg"]),
    Project("Waqf", ["Android", "Java", "XML", "SQLite"], "An Android mobile application to determine the effectiveness of Waqf institutions in the management and distribution of waqf funds, and the resultant wealth creation for the ummah. User need to answer the questionnaire  in this application to see their results. User also can view the graph displayed in this application.", ["assets/images/waqf1.png", "assets/images/waqf2.png"]),
    Project("Mapgos", ["Android", "Java", "XML", "SQLite"], "An Android mobile application to assess the adequacy of management accounting practices specifically suitable for small and medium-sized business enterprises (SMEs). User need to answer the questionnaire  in this application to see their results. User also can view the graph displayed in this application.", ["assets/images/mapgos1.png", "assets/images/mapgos2.png", "assets/images/mapgos3.png"]),
  ];
}

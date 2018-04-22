orcs = {};

orcs.female = {"Agrob", "Badbog", "Bashuk", "Bogdub", "Bugdurash", "Bula", "Bulak", "Bulfim", "Bum", "Burzob", "Burub", "Dura", "Durgat", "Durz", "Gashnakh", "Ghob", "Glasha", "Glob", "Gluronk", "Gonk", "Grat", "Grazob", "Gulfim", "Kharzug", "Lagakh", "Lambug", "Lazgar", "Mogak", "Morn", "Murob", "Murzush", "Nargol", "Rolfish", "Orbul", "Ragash", "Rulfim", "Shadbak", "Shagar", "Shagdub", "Sharn", "Sharog", "Shazgob", "Shelur", "Uloth", "Ulumpha", "Urzoth", "Urzul", "Ushat", "Ushug", "Yazgash", "Batul", "Borba", "Bumph", "Homraz", "Rogbut", "Mazoga", "Mog", "Mor", "Oghash", "Rogmesh", "Snak", "Ugak", "Umog", "Arob", "Atub", "Bagrak", "Bolar", "Bor", "Borgakh", "Dulug", "Garakh", "Ghak", "Gharol", "Ghorza", "Gul", "Lash", "Murbol", "Sharamph", "Shel", "Shufharz", "Ugor", "Urog", "Yotul", "Varegog"};
orcs.male = {"Ghazat", "Abghat", "Adgulg", "Aghed", "Agugh", "Aguk", "Almthu", "Alog", "Ambilge", "Apaugh", "Argha", "Argigoth", "Argug", "Arpigig", "Auhgan", "Azhug", "Bagdud", "Baghig", "Bahgigoth", "Bandagh", "Barfu", "Bargulg", "Baugh", "Bidgug", "Bildud", "Bilge", "Bog", "Boghat", "Bogugh", "Borgan", "Borug", "Braugh", "Brougha", "Brugagh", "Bruigig", "Buadagh", "Buggug", "Builge", "Buimghig", "Bulgan", "Bumhug", "Buomaugh", "Buordud", "Burghed", "Buugug", "Cabugbu", "Cagan", "Carguk", "Carthurg", "Clog", "Corgak", "Crothu", "Cubub", "Cukgilug", "Curbag", "Dabub", "Dakgorim", "Dakgu", "Dalthu", "Darfu", "Deakgu", "Dergu", "Derthag", "Digdug", "Diggu", "Dilug", "Ditgurat", "Dorgarag", "Dregu", "Dretkag", "Drigka", "Drikdarok", "Drutha", "Dudagog", "Dugarod", "Dugorim", "Duiltag", "Durbag", "Eagungad", "Eggha", "Eggugat", "Egharod", "Eghuglat", "Eichelberbog", "Ekganit", "Epkagut", "Ergoth", "Ertguth", "Ewkbanok", "Fagdud", "Faghig", "Fandagh", "Farfu", "Farghed", "Fargigoth", "Farod", "Faugh", "Feldgulg", "Fidgug", "Filge", "Fodagog", "Fogugh", "Fozhug", "Frikug", "Frug", "Frukag", "Fubdagog", "Fudhagh", "Fupgugh", "Furbog", "Futgarek", "Gaakt", "Garekk", "Gelub", "Gholug", "Gilaktug", "Ginug", "Gnabadug", "Gnadug", "Gnalurg", "Gnarg", "Gnarlug", "Gnorl", "Gnorth", "Gnoth", "Gnurl", "Golag", "Golub", "Gomatug", "Gomoku", "Gorgu", "Gorlag", "Grikug", "Grug", "Grukag", "Grukk", "Grung", "Gruul", "Guag", "Gubdagog", "Gudhagh", "Gug", "Gujarek", "Gujek", "Gujjab", "Gulm", "Gulrn", "Gunaakt", "Gunag", "Gunug", "Gurukk", "Guthakug", "Guthug", "Gutjja", "Hagob", "Hagu", "Hagub", "Haguk", "Hebub", "Hegug", "Hibub", "Hig", "Hogug", "Hoknath", "Hoknuk", "Hokulk", "Holkurg", "Horknuth", "Hrolkug", "Hugagug", "Hugmug", "Hugolm", "Ig", "Igmut", "Ignatz", "Ignorg", "Igubat", "Igug", "Igurg", "Ikgnath", "Ikkath", "Inkathu", "Inkathurg", "Isagubat", "Jogug", "Jokgagu", "Jolagh", "Jorgagu", "Jregh", "Jreghug", "Jugag", "Jughog", "Jughragh", "Jukha", "Jukkhag", "Julakgh", "Kabugbu", "Kagan", "Kaghed", "Kahigig", "Karfu", "Karguk", "Karrghed", "Karrhig", "Karthurg", "Kebub", "Kegigoth", "Kegth", "Kerghug", "Kertug", "Kilug", "Klapdud", "Klog", "Klughig", "Knagh", "Knaraugh", "Knodagh", "Knorgh", "Knuguk", "Knurigig", "Kodagog", "Kog", "Kogan", "Komarod", "Korgak", "Korgulg", "Koughat", "Kraugug", "Krilge", "Krothu", "Krouthu", "Krugbu", "Krugorim", "Kubub", "Kugbu", "Kukgilug", "Kulgha", "Kupgugh", "Kurbag", "Kurmbag", "Laghed", "Lamgugh", "Mabub", "Magdud", "Malthu", "Marfu", "Margulg", "Mazhug", "Meakgu", "Mergigoth", "Milug", "Mudagog", "Mugarod", "Mughragh", "Mugorim", "Murbag", "Naghat", "Naghig", "Naguk", "Nahgigoth", "Nakgu", "Narfu", "Nargulg", "Narhbub", "Narod", "Neghed", "Nehrakgu", "Nildud", "Nodagog", "Nofhug", "Nogugh", "Nomgulg", "Noogugh", "Nugbu", "Nughilug", "Nulgha", "Numhug", "Nurbag", "Nurghed", "Oagungad", "Oakgu", "Obghat", "Oggha", "Oggugat", "Ogharod", "Oghuglat", "Oguk", "Ohomdud", "Ohulhug", "Oilug", "Okganit", "Olaghig", "Olaugh", "Olmthu", "Olodagh", "Olog", "Omaghed", "Ombilge", "Omegugh", "Omogulg", "Omugug", "Onog", "Onubub", "Onugug", "Oodagh", "Oogorim", "Oogugbu", "Oomigig", "Opathu", "Opaugh", "Opeghat", "Opilge", "Opkagut", "Opoguk", "Oquagan", "Orgha", "Orgoth", "Orgug", "Orpigig", "Ortguth", "Otugbu", "Ougha", "Ougigoth", "Ouhgan", "Owkbanok", "Paghorim", "Pahgigoth", "Pahgorim", "Pakgu", "Parfu", "Pargu", "Parhbub", "Parod", "Peghed", "Pehrakgu", "Pergu", "Perthag", "Pigdug", "Piggu", "Pitgurat", "Podagog", "Pofhug", "Pomgulg", "Poogugh", "Porgarag", "Pregu", "Pretkag", "Prigka", "Prikdarok", "Prutha", "Pughilug", "Puiltag", "Purbag", "Qog", "Quadagh", "Quilge", "Quimghig", "Quomaugh", "Quordud", "Quugug", "Raghat", "Raguk", "Rakgu", "Rarfu", "Rebub", "Rilug", "Rodagog", "Rogan", "Romarod", "Routhu", "Rugbu", "Rugorim", "Rurbag", "Rurigig", "Sabub", "Saghig", "Sahgigoth", "Sahgorim", "Sakgu", "Salthu", "Saraugug", "Sarfu", "Sargulg", "Sarhbub", "Sarod", "Sbghat", "Seakgu", "Sguk", "Shomdud", "Shulhug", "Sildud", "Silge", "Silug", "Sinsbog", "Slaghig", "Slapdud", "Slaugh", "Slodagh", "Slog", "Slughig", "Smaghed", "Smegugh", "Smogulg", "Snog", "Snubub", "Snugug", "Sodagh", "Sog", "Sogorim", "Sogugbu", "Sogugh", "Sombilge", "Somigig", "Sonagh", "Sorgulg", "Sornaraugh", "Soughat", "Spathu", "Speghat", "Spilge", "Spoguk", "Squagan", "Stugbu", "Sudagog", "Sugarod", "Sugbu", "Sugha", "Sugigoth", "Sugorim", "Suhgan", "Sulgha", "Sulmthu", "Sumhug", "Sunodagh", "Sunuguk", "Supaugh", "Supgugh", "Surbag", "Surgha", "Surghed", "Surgug", "Surpigig", "Tagdud", "Taghig", "Tandagh", "Tarfu", "Targhed", "Targigoth", "Tarod", "Taugh", "Teldgulg", "Tidgug", "Tilge", "Todagog", "Tog", "Toghat", "Togugh", "Torgan", "Torug", "Tozhug", "Traugh", "Trilug", "Trougha", "Trugagh", "Truigig", "Tuggug", "Tulgan", "Turbag", "Turge", "Ug", "Ugghra", "Uggug", "Ughat", "Ulgan", "Ulmragha", "Ulmrougha", "Umhra", "Umragig", "Umruigig", "Ungagh", "Unrugagh", "Urag", "Uraugh", "Urg", "Urgan", "Urghat", "Urgran", "Urlgan", "Urmug", "Urug", "Urulg", "Vabugbu", "Vagan", "Vagrungad", "Vagungad", "Vakgar", "Vakgu", "Vakmu", "Valthurg", "Vambag", "Vamugbu", "Varbu", "Varbuk", "Varfu", "Vargan", "Varguk", "Varkgorim", "Varthurg", "Vegum", "Vergu", "Verlgu", "Verthag", "Verthurg", "Vetorkag", "Vidarok", "Vigdolg", "Vigdug", "Viggu", "Viggulm", "Viguka", "Vitgurat", "Vitgut", "Vlog", "Vlorg", "Vorgak", "Vorgarag", "Vothug", "Vregu", "Vretkag", "Vrigka", "Vrikdarok", "Vrogak", "Vrograg", "Vrothu", "Vruhag", "Vrutha", "Vubub", "Vugub", "Vuiltag", "Vukgilug", "Vultog", "Vulug", "Vurbag", "Wakgut", "Wanug", "Wapkagut", "Waruk", "Wauktug", "Wegub", "Welub", "Wholug", "Wilaktug", "Wingloug", "Winug", "Woabadug", "Woggha", "Woggugat", "Wogharod", "Woghuglat", "Woglug", "Wokganit", "Womkug", "Womrikug", "Wonabadug", "Worthag", "Wraog", "Wrug", "Wrukag", "Wrukaog", "Wubdagog", "Wudgh", "Wudhagh", "Wudugog", "Wuglat", "Wumanok", "Wumkbanok", "Wurgoth", "Wurmha", "Wurtguth", "Wurthu", "Wutgarek", "Xaakt", "Xago", "Xagok", "Xagu", "Xaguk", "Xarlug", "Xarpug", "Xegug", "Xepug", "Xig", "Xnath", "Xnaurl", "Xnurl", "Xoknath", "Xokuk", "Xolag", "Xolkug", "Xomath", "Xomkug", "Xomoku", "Xonoth", "Xorag", "Xorakk", "Xoroku", "Xoruk", "Xothkug", "Xruul", "Xuag", "Xug", "Xugaa", "Xugag", "Xugagug", "Xugar", "Xugarf", "Xugha", "Xugor", "Xugug", "Xujarek", "Xuk", "Xulgag", "Xunaakt", "Xunag", "Xunug", "Xurek", "Xurl", "Xurug", "Xurukk", "Xutag", "Xuthakug", "Xutjja", "Yaghed", "Yagnar", "Yagnatz", "Yahg", "Yahigig", "Yakgnath", "Yakha", "Yalakgh", "Yargug", "Yegigoth", "Yegoth", "Yerghug", "Yerug", "Ymafubag", "Yokgagu", "Yokgu", "Yolmar", "Yonkathu", "Yregh", "Yroh", "Ysagubar", "Yughragh", "Yugug", "Yukgnath", "Yukha", "Yulakgh", "Yunkathu", "Zabghat", "Zabub", "Zaghig", "Zahgigoth", "Zahgorim", "Zalthu", "Zaraugug", "Zarfu", "Zargulg", "Zarhbub", "Zarod", "Zeakgu", "Zguk", "Zildud", "Zilge", "Zilug", "Zinsbog", "Zlapdud", "Zlog", "Zlughig", "Zodagh", "Zog", "Zogugbu", "Zogugh", "Zombilge", "Zonagh", "Zorfu", "Zorgulg", "Zorhgigoth", "Zornaraugh", "Zoughat", "Zudagog", "Zugarod", "Zugbu", "Zugorim", "Zuhgan", "Zulgha", "Zulmthu", "Zumhug", "Zunodagh", "Zunuguk", "Zupaugh", "Zupgugh", "Zurbag", "Zurgha", "Zurghed", "Zurgug", "Zurpigig", "Atulg", "Azuk", "Bagamul", "Bakh", "Baronk", "Bashag", "Bazgulub", "Bogakh", "Borug", "Both", "Bugdul", "Bugharz", "Bugrash", "Bugrol", "Bumbub", "Burul", "Dul", "Dular", "Duluk", "Duma", "Dumbuk", "Dumburz", "Dur", "Durbul", "Durgash", "Durz", "Durzol", "Durzub", "Durzum", "Garothmuk", "Garzonk", "Gashna", "Ghamborz", "Ghamonk", "Ghoragdush", "Ghorlorz", "Glush", "Grat", "Guarg", "Gurak", "Khadba", "Khagra", "Khargol", "Koffutto", "Largakh", "Lorbumol", "Lorzub", "Lugdum", "Lugrub", "Lurog", "Mash", "Matuk", "Mauhul", "Mazorn", "Mol", "Morbash", "Mug", "Mugdul", "Muk", "Murag", "Murkub", "Murzol", "Muzgonk", "Nag", "Nar", "Nash", "Ogrul", "Ogrumbu", "Olfin", "Olumba", "Orakh", "Rogdul", "Shakh", "Shamar", "Shamob", "Shargam", "Sharkub", "Shat", "Shulong", "Shura", "Shurkul", "Shuzug", "Snaglak", "Snakha", "Snat", "Ugdumph", "Ughash", "Ulam", "Umug", "Uram", "Urim", "Urul", "Urzog", "Ushamph", "Yadba", "Yagak", "Yak", "Yam", "Yambagorn", "Yambul", "Yargol", "Yashnarz", "Yatur", "Agronak", "Bat", "Bazur", "Brugo", "Bogrum", "Brag", "Brokil", "Bugak", "Buramog", "Burz", "Dubok", "Dul", "Dulfish", "Dumag", "Dulphumph", "Gaturn", "Gogron", "Gorgo", "Graklak", "Graman", "Grommok", "Gul", "Hanz", "Krognak", "Kurdan", "Kurz", "Rugdumph", "Lum", "Lumdum", "Luronk", "Magra", "Magub", "Maknok", "Mug", "Orok", "Shagol", "Shagrol", "Shobob", "Shum", "Ulmug", "Urbul", "Urul", "Ushnar", "Uzul", "Arob", "Balogog", "Borkul", "Burguk", "Dushnamub", "Gat", "Ghamorz", "Ghorbash", "Gradba", "Grogmar", "Grushnag", "Gularzob", "Kharag", "Larek", "Lob", "Lurbuk", "Mahk", "Makhel", "Abbas", "Mauhulakh", "Moth", "Mul", "Mulush", "Nagrub", "Oglub", "Ogol", "Olur", "Ulag", "Umurn", "Urag", "Yamarz", "Yar"};

local goodIdea = 1;
local badIdea = 2;

dialogs = {};

dialogs[1] = {
    phrases = {"Hey i am {orc}"},
    options = {
        "Hey {orc}, tell me your problems!",
        "*hang up*"
    },
    consequences = {
        "problem",
        "hangup"
    }
}

dialogs[2] = {
    phrases = {"Hello human, i am {orc}"},
    options = {
        "How do you know that i am an human",
        "Hey {orc}, tell me your problems",
        "*hang up*"
    },
    consequences = {
        4,
        "problem",
        "hangup"
    }
}

dialogs[3] = {
    phrases = {"Sup"},
    options = {
        "Welcome to the Discorc hotline, can you please tell me your name?",
        "*hang up*"
    },
    consequences = {
        6,
        "hangup"
    }
}

problems = {};

problems[1] = {
    phrases = {"Well... i am a soldier, but i am tired of this, how i can convince my colonel {random1} to let me go"},
    music = "battle",
    options = {
        "Go without saying anything",
        "\"Colonel {random1}, i am tired of this...\"",
        "*hang up*"
    },
    consequences = {
        badIdea,
        goodIdea,
        "hangup"
    }
}

problems[2] = {
    phrases = {"Its my roommate {random1}, i think its stealing me..."},
    options = {
        "And what makes you think that?",
        "Call the police",
        "*hang up*"
    },
    music = "mistery",
    consequences = {
        5,
        badIdea,
        "hangup"
    }
}

problems[3] = {
    phrases = {"I have a wart in a uncomfortable place, how i can remove it?"},
    music = "sad",
    options = {
        "Scratch it with a stone",
        "You can try with coconut oil",
        "*hang up*"
    },
    consequences = {
        badIdea,
        8,
        "hangup"
    }
}

problems[4] = {
    phrases = {"Tomorrow is my birthday, but no one is comming..."},
    music = "sad",
    options = {
        "Invite they",
        "I can go to your party!",
        "Sorry, i can't help you",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        9,
        "hangup",
        "hangup"
    }
}

problems[5] = {
    phrases = {"People is asking why my beard is red but my hair is brown"},
    music = "mistery",
    options = {
        "Say that you are a strange orc",
        "Say that you tint it every day",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        goodIdea,
        "hangup"
    }
}

problems[6] = {
    phrases = {"How much is (32 * 4 / 2) * 23?"},
    music = "battle",
    options = {
        "2345",
        "9204",
        "1472",
        "Same as Potato",
        "*hang up*"
    },
    consequences = {
        badIdea,
        badIdea,
        goodIdea,
        13,
        "hangup"
    }
}

problems[7] = {
    phrases = {"I am very small... just 4'10 and other orcs tell me that i am a dwarf"},
    music = "sad",
    options = {
        "Ignore them",
        "Buy tall shoes",
        "Buy an axe and be a dwaft",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        goodIdea,
        goodIdea,
        "hangup"
    }
}

problems[8] = {
    phrases = {"I am in love with {random1}, my battle partner, i need some good phrases to flirt"},
    music = "fast",
    options = {
        "\"You want to kill humans the rest of your life with me?\"",
        "\"Lets be green together\"",
        "\"I want those fangs to be mine\"",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        goodIdea,
        goodIdea,
        "hangup"
    }
}

problems[9] = {
    phrases = {"My friends laugh at me because i am not green as they..."},
    music = "sad",
    options = {
        "Say \"The best orcs are not green\"",
        "Tint your body",
        "Murder your friends",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        goodIdea,
        badIdea,
        "hangup"
    }
}

problems[10] = {
    phrases = {"Who would win, Dumbledore, Gandalf or {random1}"},
    music = "battle",
    options = {
        "Dumbledore",
        "Gandalf",
        "{random1}",
        "Who is {random1}?",
        "hangup"
    },
    consequences = {
        goodIdea,
        goodIdea,
        goodIdea,
        14,
        "hangup"
    }
}

problems[11] = {
    phrases = {"Hey, i am {random1} i just want to talk with somebody"},
    music = "fast",
    options = {
        "Sure!",
        "Sorry i don't have time to talk, only solve problems",
        "*hang up*"
    },
    consequences = {
        16,
        "hangup",
        "hangup"
    }
}

normalDialogs = {};

-- 1 and 2 are the same, just checking (1 = Good, 2 = Bad) checked in the game.lua

normalDialogs[1] = {
    phrases = {"Ok, thanks!"},
    music = "fast",
    options = {
        "You have another question {orc}?",
        "*hang up*"
    },
    consequences = {
        "problem?",
        "hangup"
    }
}

normalDialogs[2] = {
    phrases = {"Oh, thanks i will try it!"},
    music = "fast",
    options = {
        "You have another question {orc}?",
        "*hang up*"
    },
    consequences = {
        "problem?",
        "hangup"
    }
}

normalDialogs[3] = {
    phrases = {"No, i am fine now, thanks!", "No, i am fine, thanks human!"},
    music = "fast",
    options = {
        "*hang up*"
    },
    consequences = {
        "hangup-p"
    }
}

normalDialogs[4] = {
    phrases = {"Your voice... is like a mouse"},
    music = "mistery",
    options = {
        "Ok... Tell me your problems {orc}",
        "*hang up*"
    },
    consequences = {
        "problem?",
        "hangup"
    }
}

-- Roommate link (2)
normalDialogs[5] = {
    phrases = {"Idk, i think i have some missing plushies", "Someone told me that {random1} is kleptomaniac..."},
    music = "mistery",
    options = {
        "Protect your belongings",
        "\"{random1}, are you stealing me?\"",
        "Call the police",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        goodIdea,
        badIdea,
        "hangup"
    }
}

normalDialogs[6] = {
    phrases = {"I don't want to tell you my name"},
    music = "sad",
    options = {
        "Ok, i will call you {random1}...",
        "*hang up*"
    },
    consequences = {
        7,
        "hangup"
    }
}

normalDialogs[7] = {
    phrases = {"Noo, that name is horrible! I am {orc}"},
    music = "mistery",
    options = {
        "Ok {orc}, how i can help you?",
        "{random1} is not a horrible name... My cousin is called like that",
        "*hang up*"
    },
    consequences = {
        "problem",
        7,
        "hangup"
    }
}

normalDialogs[8] = {
    phrases = {"Where i can buy that?"},
    music = "mistery",
    options = {
        "Orcazon",
        "Idk, just search coconuts in the beach",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        badIdea,
        "hangup"
    }
}

normalDialogs[9] = {
    phrases = {"Thanks, What is the best hour for you?"},
    music = "fast",
    options = {
        "2:01PM",
        "5:32PM",
        "10:48PM",
        "*hang up*"
    },
    consequences = {
        10,
        10,
        10,
        "hangup"
    }
}

normalDialogs[10] = {
    phrases = {"Tomorrow is good for you?"},
    music = "fast",
    options = {
        "Yes",
        "No",
        "*hang up*"
    },
    consequences = {
        11,
        12,
        12
    }
}

normalDialogs[11] = {
    phrases = {"Nice, see you!"},
    music = "fast",
    options = {
        "Ok! I can help you with any other problem?",
        "*hang up*"
    },
    consequences = {
        "problem?",
        "hangup"
    }
}

normalDialogs[12] = {
    phrases = {"Are you really that cruel?"},
    music = "battle",
    options = {
        "YES",
        "No"
    },
    consequences = {
        "hangup",
        10
    }
}

normalDialogs[13] = {
    phrases = {"And what is potato?"},
    music = "battle",
    options = {
        "8302",
        "1290",
        "1472",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        badIdea,
        badIdea,
        "hangup"
    }
}

normalDialogs[14] = {
    phrases = {"Oh, {random1} is the king of Khar Drozgog and my best friend, so Dumbledore, Gandalf or {random1}"},
    music = "battle",
    options = {
        "Dumbledore",
        "Gandalf",
        "{random1}",
        "What is Khar Drozgog?",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        goodIdea,
        goodIdea,
        15,
        "hangup"
    }
}

normalDialogs[15] = {
    phrases = {"You really need to know it? You are not playing a RPG game... Khar Drozgog is the biggest city in in Dugrol, sooo can you answer, Dumbledore, Gandalf or {random1}"},
    music = "battle",
    options = {
        "Dumbledore",
        "Gandalf",
        "{random1}",
        "What is Dugrol?",
        "*hang up*"
    },
    consequences = {
        goodIdea,
        goodIdea,
        goodIdea,
        "hangup",
        "hangup"
    }
}

normalDialogs[16] = {
    phrases = {"How is your day going?"},
    music = "fast",
    options = {
        "Good and yours?",
        "Meh and yours?",
        "*hang up*"
    },
    consequences = {
        17,
        18,
        "hangup"
    }
}

normalDialogs[17] = {
    phrases = {"Mine's good too, thanks!"},
    music = "fast",
    options = {
        "Lets talk!",
        "*hang up*"
    },
    consequences = {
        20,
        "hangup"
    }
}

normalDialogs[18] = {
    phrases = {"Its a pity that you only can select predefined phrases, but i can give you a hug, you want?"},
    music = "sad",
    options = {
        "Yes",
        "No",
        "*hang up*"
    },
    consequences = {
        19,
        19,
        "hangup"
    }
}

normalDialogs[19] = {
    phrases = {"I hope you get better"},
    music = "sad",
    options = {
        "Lets, talk!",
        "*hang up*"
    },
    consequences = {
        20,
        "hangup"
    }
}

normalDialogs[20] = {
    phrases = {"What is your favorite movie?"},
    music = "fast",
    options = {
        "Orctanic",
        "The Orcining",
        "Orcman",
        "Orcs vs Elfs",
        "The hang up one (*hang up*)"
    },
    consequences = {
        21,
        21,
        21,
        21,
        "hangup"
    }
}

normalDialogs[21] = {
    phrases = {"Ohh mine's too, and what is your favorite song of all time?"},
    music = "fast",
    options = {
        "Stressed Orc",
        "Orc Style",
        "Orctown Funk",
        "I am out of orc jokes...",
        "*hang up*"
    },
    consequences = {
        22,
        22,
        22,
        22,
        "hangup"
    }
}

normalDialogs[22] = {
    phrases = {"OH MY ORC, MINE'S TOO, do you want to date me?"},
    music = "fast",
    options = {
        "Yes",
        "No",
        "*hang up*"
    },
    consequences = {
        9,
        23,
        "hangup"
    }
}

normalDialogs[23] = {
    phrases = {"Ok, sorry"},
    music = "fast",
    options = {
        "*hang up*"
    },
    consequences = {
        "hangup-p"
    }
}
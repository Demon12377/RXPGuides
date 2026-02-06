if GetLocale() ~= "ruRU" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance
#name 1-12 Остров Лазурной Дымки
#subgroup RestedXP Альянс 1-20
#defaultfor Draenei
#next 12-20 Остров Кровавой Дымки (Дренеи)

step
    .goto Azuremyst Isle,82.96,43.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Мегелоном|r
    .accept 9279 >> Примите задание "Выжившие!"
    .target Мегелон
step << Shaman/Warrior
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
	.vendor >> |cRXP_WARN_Убивайте 2-3 |cRXP_ENEMY_Долинных мотыльков|r или |cRXP_ENEMY_Нестабильных мутаций|r для продажи хлама (стоимостью 10м+)|r
    >>|cRXP_WARN_Продайте хлам |cRXP_FRIENDLY_Ауроку|r внутри|r
    .mob Долинный мотылек
    .mob Нестабильная мутация
    .target Аурок
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Фирманвааром|r
	.train 8017 >>Изучите |T136086:0|t[Камнедробитель]
    .target Фирманваар
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кори|r
    .train 6673 >>Изучите |T132333:0|t[Боевой крик]
    .target Кори
step << Priest/Mage
    #completewith next
    +|cRXP_WARN_Убивайте |cRXP_ENEMY_Долинных мотыльков|r и |cRXP_ENEMY_Нестабильных мутаций|r. Собирайте добычу, пока не наберете предметов на продажу на 50 медных (включая вашу броню)|r
    .mob Долинный мотылек
    .mob Нестабильная мутация
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Проенитусом|r
    .turnin 9279 >> Сдайте задание "Выжившие!"
    .accept 9280 >> Примите задание "Наполнение лечебных кристаллов"
    .target Проенитус
step << Priest/Mage
    .goto Azuremyst Isle,79.253,50.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Риошем|r
    .vendor >> |cRXP_WARN_Продайте хлам|r
    >>|cRXP_BUY_Купите 10|r |T132794:0|t[Освежающей ключевой воды]
    .collect 159,10 --Соберите Освежающая ключевая вода (x10)
    .target Риош
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ботаником Терикс|r
    .accept 10302 >> Примите задание "Нестабильная мутация"
    .target Ботаник Терикс
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,0
    .goto Azuremyst Isle,75.27,43.70,0
    .goto Azuremyst Isle,73.4,51.4,0
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Убивайте |cRXP_ENEMY_Нестабильных мутаций|r
    >>Убивайте |cRXP_ENEMY_Долинных мотыльков|r. Собирайте с них |cRXP_LOOT_Кровь|r
    >>|cRXP_WARN_Приоритет: |cRXP_ENEMY_Нестабильные мутации|r, так как вы сдадите задание и добьете |cRXP_ENEMY_Долинных мотыльков|r позже|r
    .complete 10302,1 --Убито: Нестабильная мутация (x8)
    .mob +Нестабильная мутация
    .complete 9280,1 --Собрано: Флакон крови мотылька (x8)
    .mob +*Долинный мотылек
    .disablecheckbox
step
    #optional
    .isQuestComplete 9280
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Проенитусом|r
    .turnin 9280 >> Сдайте задание "Наполнение лечебных кристаллов"
    .accept 9409 >> Примите задание "Срочная доставка!"
    .target Проенитус
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ботаником Терикс|r и |cRXP_FRIENDLY_Учеником Вишаэль|r
    .turnin 10302 >> Сдайте задание "Нестабильная мутация"
    .accept 9293 >> Примите задание "Насущная необходимость..."
    .target +Ботаник Терикс
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >> Примите задание "Сбор образцов"
    .target +Ученик Вишаэль
    .goto Azuremyst Isle,79.071,46.624
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_Долинных мотыльков|r. Собирайте с них |cRXP_LOOT_Кровь|r
    .complete 9280,1 --Собрано: Флакон крови мотылька (x8)
    .mob Долинный мотылек
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.94,52.21,0
    .goto Azuremyst Isle,72.26,49.29,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Убивайте |cRXP_ENEMY_Мутировавших корнеплетов|r. Собирайте с них |cRXP_LOOT_Образцы корнеплета|r
    >>Собирайте |cRXP_LOOT_Зараженные цветы|r на земле
    .complete 9293,1 --Собрано: Образец корнеплета (x10)
    .complete 9799,1 --Собрано: Зараженный цветок (x3)
    .mob Мутировавший корнеплет
step
    #loop
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
    >>Убивайте |cRXP_ENEMY_Долинных мотыльков|r. Собирайте с них |cRXP_LOOT_Кровь|r
    .complete 9280,1 --Собрано: Флакон крови мотылька (x8)
    .mob Долинный мотылек
step
    #optional
    .isQuestTurnedIn 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-420 >>Гринд до тех пор, пока не останется 420 опыта до 4 уровня (980/1400)
    .mob Мутировавший корнеплет
    .mob Нестабильная мутация
    .mob Долинный мотылек
step
    #optional
    .isQuestAvailable 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-500 >>Гринд до тех пор, пока не останется 500 опыта до 4 уровня (900/1400)
    .mob Мутировавший корнеплет
    .mob Нестабильная мутация
    .mob Долинный мотылек
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ботаником Терикс|r и |cRXP_FRIENDLY_Учеником Вишаэль|r
    .turnin 9293 >> Сдайте задание "Насущная необходимость..."
    .accept 9294 >> Примите задание "Исцеление озера"
    .target +Ботаник Терикс
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >> Сдайте задание "Сбор образцов"
    .target +Ученик Вишаэль
    .goto Azuremyst Isle,79.071,46.624
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Проенитусом|r
    .turnin 9280 >> Сдайте задание "Наполнение лечебных кристаллов"
    .accept 9409 >> Примите задание "Срочная доставка!"
    .target Проенитус
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ауроку|r
	.vendor >> Продайте хлам
    .target Аурок
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Валаату|r
	.accept 9290 >> Примите задание "Обучение магии"
	.turnin 9290 >> Сдайте задание "Обучение магии"
    .train 1459 >> Изучите |T135932:0|t[Чародейский интеллект]
    .train 116 >> Изучите |T135846:0|t[Ледяная стрела]
    .target Валаату
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Аурелоном|r
    >>|cRXP_FRIENDLY_Аурелон|r |cRXP_WARN_может немного патрулировать|r
	.accept 9287 >> Примите задание "Обучение паладинов"
	.turnin 9287 >> Сдайте задание "Обучение паладинов"
    .train 465 >>Изучите |T135893:0|t[Аура благочестия]
    .train 19740 >> Изучите |T135906:0|t[Благословение могущества]
    .train 20271 >> Изучите |T135959:0|t[Правосудие]
    .target Аурелон
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Залдууном|r
    >>|cRXP_FRIENDLY_Залдуун|r |cRXP_WARN_немного патрулирует|r
    .turnin 9409 >> Сдайте задание "Срочная доставка!"
    .accept 9283 >> Примите задание "Спасение выживших"
    .accept 9291 >> Примите задание "Обучение жрецов" << Priest
    .turnin 9291 >> Сдайте задание "Обучение жрецов" << Priest
    .train 1243 >> Изучите |T135987:0|t[Слово силы: Стойкость] << Priest
    .train 2052 >> Изучите |T135929:0|t[Малое исцеление] << Priest
    .train 589 >> Изучите |T136207:0|t[Слово Тьмы: Боль] << Priest
    .target Залдуун
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Фирманвааром|r
    .accept 9421 >> Примите задание "Обучение шаманов"
	.turnin 9421 >> Сдайте задание "Обучение шаманов"
    .accept 9449 >> Примите задание "Зов Земли"
	.train 8042 >> Изучите |T136026:0|t[Земной шок]
    .target Фирманваар
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_Используйте|r |T135923:0|t[Дар наару] |cRXP_WARN_на |cRXP_FRIENDLY_Выжившего дренея|r, если увидите его|r
    .complete 9283,1 --Спасенные выжившие дренеи
    .unitscan Выживший дреней
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Духом Долины|r
    .turnin 9449 >> Сдайте задание "Зов Земли"
    .accept 9450 >> Примите задание "Зов Земли"
    .target Дух Долины
step << Shaman
    #loop
    .goto Azuremyst Isle,69.62,35.13,0
    .goto Azuremyst Isle,70.73,37.74,40,0
    .goto Azuremyst Isle,69.62,35.13,60,0
    >>Убивайте |cRXP_ENEMY_Беспокойных духов земли|r
    .complete 9450,1 --Убито: Беспокойный дух земли (x4)
    .mob Беспокойный дух земли
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Духом Долины|r
    .turnin 9450 >> Сдайте задание "Зов Земли"
    .accept 9451 >> Примите задание "Зов Земли"
    .target Дух Долины
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_Используйте|r |T135923:0|t[Дар наару] |cRXP_WARN_на |cRXP_FRIENDLY_Выжившего дренея|r, если увидите его|r
    .complete 9283,1 --Спасенные выжившие дренеи
    .unitscan Выживший дреней
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Фирманвааром|r
    .turnin 9451 >> Сдайте задание "Зов Земли"
    .target Фирманваар
step << Shaman
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Залдууном|r
    >>|cRXP_FRIENDLY_Залдуун|r |cRXP_WARN_немного патрулирует|r
    .turnin 9283 >> Сдайте задание "Спасение выживших"
    .target Залдуун
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кори|r
    .accept 9289 >> Примите задание "Обучение воинов"
	.turnin 9289 >> Сдайте задание "Обучение воинов"
    .train 100 >> Изучите |T132337:0|t[Рывок]
    .train 772 >> Изучите |T132155:0|t[Кровопускание]
    .target Кори
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кейлни|r
	.accept 9288 >> Примите задание "Обучение охотников"
	.turnin 9288 >> Сдайте задание "Обучение охотников"
    .train 1978 >>Изучите |T132204:0|t[Укус змеи]
    .target Кейлни


--xx

step << Priest
	.goto Azuremyst Isle,79.254,50.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Риошем|r
    >>|cRXP_BUY_Купите 10|r |T132794:0|t[Освежающей ключевой воды] |cRXP_BUY_у него|r
    .collect 159,10 --Соберите Освежающая ключевая вода (x15)
    .target Риош
    .xp >5,1

--xx


step << Shaman/Hunter
	#completewith next
	.goto Azuremyst Isle,79.188,50.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Мурой|r
	.vendor >> Продайте хлам
    >>|cRXP_BUY_Купите 5 пачек|r |T132382:0|t[Грубых стрел] |cRXP_BUY_у нее|r << Hunter
    .collect 2512,1000 << Hunter --Грубая стрела (1000)
    .target Мура
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Техником Жанайей|r
    .accept 9305 >> Примите задание "Запасные части"
    .target Техник Жанайа
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Алдаром|r
    .accept 9303 >> Примите задание "Инокуляция"
    .target Воздаятель Алдар
step
    #completewith Owlkininoculated
    .usespell 28880 >>|cRXP_WARN_Используйте|r |T135923:0|t[Дар наару] |cRXP_WARN_на|r |cRXP_FRIENDLY_Выжившего дренея|r|cRXP_WARN_. Они разбросаны по всей стартовой зоне|r
    .complete 9283,1 --Спасенные выжившие дренеи
    .unitscan Выживший дреней
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Нажмите на |cRXP_PICK_Облученный силовой кристалл|r в озере
    .complete 9294,1 --Собрано: Развеять нейтрализующее вещество (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Примените|r |T132775:0|t[Инокулирующий кристалл] |cRXP_WARN_на |cRXP_ENEMY_Совухов Гнездовья|r в течение 4 секунд|r
    .complete 9303,1 --Инокулировано совухов Гнездовья (x6)
    .mob Совух Гнездовья
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>Соберите |cRXP_LOOT_Запасные части излучателя|r на земле
    .complete 9305,1 --Собрано: Запасная часть излучателя (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_Примените|r |T132775:0|t[Инокулирующий кристалл] |cRXP_WARN_на |cRXP_ENEMY_Совухов Гнездовья|r в течение 4 секунд|r
    .complete 9303,1 --Инокулировано совухов Гнездовья (x6)
    .mob Совух Гнездовья
step
	#completewith next
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
    >>Встаньте на костер поблизости, чтобы получить дополнительный урон при необходимости
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ботаником Терикс|r
    .turnin 9294 >> Сдайте задание "Исцеление озера"
    .target Ботаник Терикс
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ауроку|r
	.vendor >> Продайте хлам
    .target Аурок
step
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Залдууном|r
    >>|cRXP_FRIENDLY_Залдуун|r |cRXP_WARN_немного патрулирует|r
    .turnin 9283 >> Сдайте задание "Спасение выживших"
    .target Залдуун
step
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Техником Жанайей|r
    .turnin 9305 >> Сдайте задание "Запасные части"
    .target Техник Жанайа
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Алдаром|r
    .turnin 9303 >> Сдайте задание "Инокуляция"
    .accept 9309 >> Примите задание "Пропавший разведчик"
    .target Воздаятель Алдар
step
    #completewith SurveyorCandress
    .usespell 28880 >>|cRXP_WARN_Используйте|r |T135923:0|t[Дар наару] |cRXP_WARN_на|r |cRXP_FRIENDLY_Выжившего дренея|r|cRXP_WARN_. Они разбросаны по всей стартовой зоне|r
    .complete 9283,1 --Спасенные выжившие дренеи
    .unitscan Выживший дреней
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Толааном|r
    .turnin 9309 >> Сдайте задание "Пропавший разведчик"
    .accept 10303 >> Примите задание "Эльфы крови"
    .target Толаан
step
    .goto Azuremyst Isle,69.420,64.608
    >>Убивайте |cRXP_ENEMY_Эльфийских лазутчиков|r
    .complete 10303,1 --Убито: Эльфийский лазутчик (x10)
    .mob Эльфийский лазутчик
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Толааном|r
    .turnin 10303 >> Сдайте задание "Эльфы крови"
    .accept 9311 >> Примите задание "Шпионка эльфов крови"
    .target Толаан
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Убейте |cRXP_ENEMY_Изыскателя Кандресс|r. Заберите у нее |T132319:0|t[|cRXP_LOOT_Чертежи эльфов крови|r]
    .use 24414 >>|cRXP_WARN_Используйте|r |T132319:0|t[|cRXP_LOOT_Чертежи эльфов крови|r] |cRXP_WARN_чтобы начать задание|r
    .complete 9311,1 --Убито: Изыскатель Кандресс (x1)
    .collect 24414,1,9798,1 -- Чертежи эльфов крови
    .accept 9798 >> Примите задание "Чертежи эльфов крови"
    .mob Изыскатель Кандресс
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,0
    .goto Azuremyst Isle,77.6,56.0,0
    .goto Azuremyst Isle,74.8,43.4,0
    .goto Azuremyst Isle,80.2,42.6,0
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_Используйте|r |T135923:0|t[Дар наару] |cRXP_WARN_на|r |cRXP_FRIENDLY_Выжившего дренея|r|cRXP_WARN_. Они разбросаны по всей стартовой зоне|r
    .complete 9283,1 --Спасенные выжившие дренеи
    .unitscan Выживший дреней
step
    #optional
    .isQuestAvailable 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1450 >>Гринд |cRXP_ENEMY_Эльфийских лазутчиков|r до тех пор, пока не останется 1450 опыта до 6 уровня (1350/2800). Оставьте себе мало здоровья на последних мобах, мы будем делать death skip после
    .mob Эльфийский лазутчик
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Гринд |cRXP_ENEMY_Эльфийских лазутчиков|r до тех пор, пока не останется 1230 опыта до 6 уровня (1570/2800). Оставьте себе мало здоровья на последних мобах, мы будем делать death skip после
    .mob Эльфийский лазутчик
step
	#completewith BloodElfSpy
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,0
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Залдууном|r
    >>|cRXP_FRIENDLY_Залдуун|r |cRXP_WARN_немного патрулирует|r
    .turnin 9283 >> Сдайте задание "Спасение выживших"
    .target Залдуун
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Алдаром|r
    .turnin 9311 >> Сдайте задание "Шпионка эльфов крови"
    .turnin 9798 >> Сдайте задание "Чертежи эльфов крови"
    .accept 9312 >> Примите задание "Излучатель"
    .target Воздаятель Алдар
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Техником Жанайей|r
    .turnin 9312 >> Сдайте задание "Излучатель"
    .accept 9313 >> Примите задание "Дорога на Лазурную заставу"
    .target Техник Жанайа
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Эуном|r
    .accept 9314 >> Примите задание "Вести с Лазурной заставы"
    .target Эун
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Диктинной|r
    .accept 9452 >> Примите задание "Красный луциан - это очень вкусно!"
    .target Диктинна
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >> |cRXP_WARN_Плывите на север по реке|r
    .use 23654 >>|cRXP_WARN_Используйте|r |T134325:0|t[Дренейскую рыболовную сеть] |cRXP_WARN_на|r |cRXP_PICK_Косяках красного луциана|r |cRXP_WARN_которые увидите по пути. Пропустите этот шаг, когда доберетесь до вершины реки, вы завершите его позже|r
	.collect 23614,10 -- Красный луциан (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Следите за|r |cRXP_FRIENDLY_Дренейским юнцом|r
    >>|cRXP_WARN_Пока они в бою, примените|r |T135923:0|t[Дар наару] |cRXP_WARN_на них, затем примите задание|r
	.accept 9612 >> Примите задание "Сердечная благодарность"
	.unitscan Дренейский юнец
step
    .goto Azuremyst Isle,53.9,34.4
    >>Убивайте |cRXP_ENEMY_Зараженных детенышей ночного ловца|r. Собирайте с них |T134072:0|t[|cRXP_LOOT_Слабо светящийся кристалл|r]
    .use 23678 >>|cRXP_WARN_Используйте|r |T134072:0|t[|cRXP_LOOT_Слабо светящийся кристалл|r] |cRXP_WARN_чтобы начать задание|r
	.collect 23678,1,9455,1 -- Слабо светящийся кристалл (1)
    .accept 9455 >> Примите задание "Странные находки"
    .mob Зараженный детеныш ночного ловца
step
	#completewith NightstalkerCleanUp
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
    >>|cRXP_WARN_Убедитесь, что умерли рядом с прудом у склона горы|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >> Отправляйтесь на Лазурную заставу
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Анахоретом Фатеемой|r
    .accept 9463 >> Примите задание "Целебные ингредиенты"
    .target Анахорет Фатеема
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
	.turnin 9612 >> Сдайте задание "Сердечная благодарность"
    .turnin 9455 >> Сдайте задание "Странные находки"
    .accept 9456 >> Примите задание "Истребление ночных ловцов"
    .target Экзарх Менелай
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
    .turnin 9455 >> Сдайте задание "Странные находки"
    .accept 9456 >> Примите задание "Истребление ночных ловцов"
    .target Экзарх Менелай
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Техником Дивууном|r
    .turnin 9313 >> Сдайте задание "Дорога на Лазурную заставу"
    .target Техник Дивуун
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сиделкой Челлан|r
    .turnin 9314 >> Сдайте задание "Вести с Лазурной заставы"
    .target Сиделка Челлан
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сиделкой Челлан|r
    .home >> Установите камень возвращения на Лазурную заставу
    .target Сиделка Челлан
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гуваном|r
    .accept 9586 >> Примите задание "Помощь Таваре"
    .train 591 >>Изучите |T135924:0|t[Кара]
    .train 17 >>Изучите |T135940:0|t[Слово силы: Щит]
    .target Гуван
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Семидом|r
    .train 143 >> Изучите |T135812:0|t[Огненный шар]
    .train 2136 >>Изучите |T135807:0|t[Взрыв огня]
    .target Семид
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Актеоном|r
    .train 3044 >> Изучите |T132218:0|t[Чародейский выстрел]
    .train 1130 >> Изучите |T132212:0|t[Метка охотника]
    .target Актеон
step << Shaman/Warrior
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Набеком|r
    >>|cRXP_BUY_Купите и экипируйте|r |T135145:0|t[Трость]
    .collect 2495,1 --Трость (1)
    .target Набек
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman/Warrior
    #sticky
    .equip 16,2495 >> |cRXP_WARN_Экипируйте|r |T135145:0|t[Трость]
    .use 2495
    .itemcount 2495,1
step << Paladin
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Набеком|r
    >>|cRXP_BUY_Купите и экипируйте|r |T133053:0|t[Деревянная колотушка]
    .collect 2493,1 --Соберите Деревянная колотушка (1)
    .target Набек
    .money <0.0666
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #sticky
    .equip 16,2493 >> |cRXP_WARN_Экипируйте|r |T133053:0|t[Деревянная колотушка]
    .use 2493
    .itemcount 2493,1
step << Warrior/Paladin
    .goto Azuremyst Isle,48.957,51.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дулви|r
    .train 2575 >>Изучите |T134708:0|t[Горное дело]
    .target Дулви
step << Warrior/Paladin
    .goto Azuremyst Isle,48.767,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зизом|r
    >>|cRXP_BUY_Купите|r |T134708:0|t[Шахтерская кирка] |cRXP_BUY_у него|r
    .collect 2901,1 --Шахтерская кирка (1)
    .target Зиз
    .train 2575,3 --Mining
step << Warrior/Paladin
    #optional
    #completewith SGrain
    .cast 2580 >> |cRXP_WARN_Используйте|r |T136025:0|t[Поиск минералов]
    .usespell 2580
    .train 2575,3 --Mining
step
	#completewith level8
    >>|cRXP_WARN_Следите за|r |cRXP_FRIENDLY_Дренейским юнцом|r
    >>|cRXP_WARN_Пока они в бою, примените|r |T135923:0|t[Дар наару] |cRXP_WARN_на них, затем примите задание|r
	.accept 9612 >> Примите задание "Сердечная благодарность"
	.unitscan Дренейский юнец
step
    #completewith LeavesTree
    >>Убивайте |cRXP_ENEMY_Корнеплетов-ловцов|r. Собирайте с них |cRXP_LOOT_Лозы|r
    >>Убивайте |cRXP_ENEMY_Оленей лунной лощины|r. Собирайте с них |cRXP_LOOT_Мясо|r
    .complete 9463,1 -- Корнеплет-ловец (6)
    .mob +Корнеплет-ловец
    .collect 23676,6,9454,1 -- Мясо оленя лунной лощины (6)
    .mob +Олень лунной лощины
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    .usespell 2052 >>|cRXP_WARN_Примените|r |T135929:0|t[Малое исцеление] (Уровень 2) |cRXP_WARN_на|r |cRXP_FRIENDLY_Тавару|r
    .complete 9586,1 --Исцелить Тавару
    .target Тавара
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Адмиралом Одиссием|r
    .accept 9506 >> Примите задание "Скромное начало"
    .target Адмирал Одиссий
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_"Коком" Мак-Свирли|r
    .accept 9512 >> Примите задание "Особое варево Кока"
    .target "Кок" Мак-Свирли
step << Warrior/Paladin
    .goto Azuremyst Isle,46.355,71.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кузнецом Калипсо|r
    >>|cRXP_WARN_Это позволит вам делать|r |T135248:0|t[Грубые точила] |cRXP_WARN_и|r |T135255:0|t[Грубые грузила] |cRXP_WARN_которые увеличивают ваш урон в ближнем бою на 2|r
    .train 2018 >> Изучите |T136241:0|t[Кузнечное дело]
    .target Кузнец Калипсо
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Соберите |cRXP_LOOT_Морскую карту|r на маленькой клетке
    .complete 9506,2 --Собрано: Морская карта (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Соберите |cRXP_LOOT_Морской компас|r на маленьком ящике
    .complete 9506,1 --Собрано: Морской компас (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,0
    .goto Azuremyst Isle,50.8,69.4,0
    .goto Azuremyst Isle,46.0,75.6,0
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Убивайте |cRXP_ENEMY_Быстрых ползунов|r. Собирайте с них |cRXP_LOOT_Мясо ползуна|r
    .complete 9512,1 --Собрано: Мясо быстрого ползуна (x6)
    .mob Быстрый ползун
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_"Коком" Мак-Свирли|r
    .turnin 9512 >> Сдайте задание "Особое варево Кока"
    .target "Кок" Мак-Свирли
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Адмиралом Одиссием|r и |cRXP_FRIENDLY_Жрицей Кайлин Ил'динар|r
    .turnin 9506 >> Сдайте задание "Скромное начало"
    .accept 9530 >> Примите задание "У меня есть план..."
    .target +Адмирал Одиссий
    .goto Azuremyst Isle,47.038,70.206
    .accept 9513 >> Примите задание "Возвращение руин"
    .target +Жрица Кайлин Ил'динар
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Археологом Адамантом Железное Сердце|r
    .accept 9523 >> Примите задание "Драгоценные и хрупкие вещи требуют особого подхода"
    .target Археолог Адамант Железное Сердце
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>Соберите |cRXP_LOOT_Полое дерево|r на земле
    >>Соберите |cRXP_LOOT_Кучи листьев|r на земле
    .complete 9530,1 --Собрано: Полое дерево (x1)
    .complete 9530,2 --Собрано: Куча листьев (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>Убивайте |cRXP_ENEMY_Корнеплетов-ловцов|r. Собирайте с них |cRXP_LOOT_Лозы|r
    >>Убивайте |cRXP_ENEMY_Оленей лунной лощины|r. Собирайте с них |cRXP_LOOT_Мясо|r
    .complete 9463,1 -- Корнеплет-ловец (6)
    .mob +Корнеплет-ловец
    .collect 23676,6,9454,1 -- Мясо оленя лунной лощины (6)
    .mob +Олень лунной лощины
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Адмиралом Одиссием|r
    .turnin 9530 >> Сдайте задание "У меня есть план..."
    .accept 9531 >> Примите задание "Дерево-шпион"
    .target Адмирал Одиссий
step
    #label level8
	.xp 8-950 >> Гринд до тех пор, пока не останется 950 опыта до 8 уровня (3550/4500)
    >>|cRXP_WARN_Старайтесь закончить рядом с Лазурной заставой|r
step
	#completewith next
    .goto Azuremyst Isle,49.780,51.938
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
    >>|cRXP_WARN_Пропустите этот шаг, если вы уже рядом с Лазурной заставой|r
    .subzoneskip 3576
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Актеоном|r
	.accept 9454 >> Примите задание "Большая охота в Лунной лощине"
    .turnin 9454 >> Сдайте задание "Большая охота в Лунной лощине"
    .accept 10324 >> Примите задание "Большая охота в Лунной лощине"
    .target Актеон
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Актеоном|r
    .train 5116 >> Изучите |T135860:0|t[Контузящий выстрел]
    .train 14260 >> Изучите |T132223:0|t[Удар ящера]
    .target Актеон
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Анахоретом Фатеемой|r и |cRXP_FRIENDLY_Дэдалом|r
    .turnin 9463 >> Сдайте задание "Целебные ингредиенты"
    .target +Анахорет Фатеема
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >> Примите задание "Альтернатива альтернативе"
    .target +Дэдал
    .goto Azuremyst Isle,48.392,51.482
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
    .turnin 9612 >> Сдайте задание "Сердечная благодарность"
    .target Экзарх Менелай
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тулууном|r
    .trainer >> Изучите классовые навыки
    .target Тулуун
    .subzoneskip 3576,1
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дулви|r
    .accept 10428 >> Примите задание "Пропавший рыбак"
    .target Дулви
step
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Криптографом Аурреном|r
    .accept 9538 >> Примите задание "Изучение языка"
    .target Криптограф Ауррен
step
	.use 23818 >>|cRXP_WARN_Используйте|r |T133741:0|t[Букварь языка фурболгов из племени Тихолесья]
    .complete 9538,1 --Прочитать букварь языка фурболгов из племени Тихолесья
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемом Акиды|r
    .turnin 9538 >> Сдайте задание "Изучение языка"
    .accept 9539 >> Примите задание "Тотем Куу"
    .target Тотем Акиды
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гуваном|r
    .turnin 9586 >> Сдайте задание "Помощь Таваре"
    .trainer >> Изучите классовые навыки
    .target Гуван
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тулласом|r
    .trainer >> Изучите классовые навыки
    .target Туллас
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Семидом|r
    .trainer >> Изучите классовые навыки
    .target Семид
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Руадой|r
    .train 772 >> Изучите |T132155:0|t[Кровопускание]
    .target Руада
    .subzoneskip 3576,1
step
	#completewith AncientRelics
    >>|cRXP_WARN_Следите за|r |cRXP_FRIENDLY_Дренейским юнцом|r
    >>|cRXP_WARN_Пока они в бою, примените|r |T135923:0|t[Дар наару] |cRXP_WARN_на них, затем примите задание|r
	.accept 9612 >> Примите задание "Сердечная благодарность"
	.unitscan Дренейский юнец
step
	#completewith TotemofTikti
    >>Убивайте |cRXP_ENEMY_Зараженных детенышей ночного ловца|r
	>>Убивайте |cRXP_ENEMY_Самцов оленя лунной лощины|r. Собирайте с них |cRXP_LOOT_Шкуры|r
    .complete 9456,1 --Убито: Зараженный детеныш ночного ловца (x8)
    .mob +Зараженный детеныш ночного ловца
	.complete 10324,1 -- Шкура самца оленя лунной лощины (6)
    .mob +Самец оленя лунной лощины
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемом Куу|r
    .turnin 9539 >> Сдайте задание "Тотем Куу"
    .accept 9540 >> Примите задание "Тотем Тикти"
    .target Тотем Куу
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >> |cRXP_WARN_Осторожно спуститесь по склону горы здесь|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Соберите |cRXP_LOOT_Лазурный львиный зев|r на земле
    .complete 9473,1 --Собрано: Луковица лазурного львиного зева (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемом Тикти|r
    .turnin 9540 >> Сдайте задание "Тотем Тикти"
    .accept 9541 >> Примите задание "Тотем Йор"
    .timer 30,Тотем Йор RP
    .target Тотем Тикти
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >> |cRXP_WARN_Следуйте за|r |cRXP_FRIENDLY_Предком Тикти из племени Тихолесья|r|cRXP_WARN_. Он наложит на вас|r |T132107:0|t[Объятия Змея] |cRXP_WARN_что даст 150% к скорости плавания и дыхание под водой|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Используйте|r |T134325:0|t[Дренейскую рыболовную сеть] |cRXP_WARN_на|r |cRXP_PICK_Косяках красного луциана|r
    >>|cRXP_WARN_Если из омута появится |cRXP_ENEMY_Мурлок|r, быстро плывите прочь! Использование любых враждебных заклинаний приведет к потере баффа|r |T132107:0|t[Объятия Змея]|r
    .complete 9452,1 --Собрано: Красный луциан (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Диктинной|r
    .turnin 9452 >> Сдайте задание "Красный луциан - это очень вкусно!"
    .accept 9453 >> Примите задание "Найдите Актеона!"
    .target Диктинна
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемом Йор|r под водой
    .turnin 9541 >> Сдайте задание "Тотем Йор"
    .accept 9542 >> Примите задание "Тотем Варк"
    .timer 71,Тотем Варк RP
    .target Тотем Йор
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >> |cRXP_WARN_Следуйте за|r |cRXP_FRIENDLY_Предком Йор из племени Тихолесья|r|cRXP_WARN_. Он наложит на вас|r |T132142:0|t[Тень лесов] |cRXP_WARN_что даст увеличенную скорость передвижения и невидимость|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >> |cRXP_WARN_Отправляйтесь на запад Острова Лазурной Дымки|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемом Варк|r
    .turnin 9542 >> Сдайте задание "Тотем Варк"
    .accept 9544 >> Примите задание "Пророчество Акиды"
    .target Тотем Варк
step
    .aura -30448
    +|cRXP_WARN_Снимите бафф|r |T132142:0|t[Тень лесов]|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,0
    .goto Azuremyst Isle,27.87,66.78,0
    .goto Azuremyst Isle,25.04,67.67,0
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Убивайте |cRXP_ENEMY_Иглошкурых фурболгов|r, |cRXP_ENEMY_Иглошкурых заклинателей ветров|r и |cRXP_ENEMY_Иглошкурых медведей|r. Собирайте с них |cRXP_LOOT_Ключи иглошкурых|r
    >>Открывайте |cRXP_PICK_Клетки иглошкурых|r чтобы освободить |cRXP_FRIENDLY_Пленников из племени Тихолесья|r
    .collect 23801,8,9544,1,-1 -- Ключ иглошкурых
    .complete 9544,1 --Пленник из племени Тихолесья освобожден (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,0
    .goto Azuremyst Isle,31.6,70.4,0
    .goto Azuremyst Isle,33.6,60.4,0
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Убивайте |cRXP_ENEMY_Зараженных детенышей ночного ловца|r
	>>Убивайте |cRXP_ENEMY_Самцов оленя лунной лощины|r. Собирайте с них |cRXP_LOOT_Шкуры|r
    .complete 9456,1 --Убито: Зараженный детеныш ночного ловца (x8)
    .mob +Зараженный детеныш ночного ловца
	.complete 10324,1 -- Шкура самца оленя лунной лощины (6)
    .mob +Самец оленя лунной лощины
step
    #completewith next
    >>Соберите |cRXP_LOOT_Древние реликвии|r на земле
    .complete 9523,1 --Собрано: Древняя реликвия (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Убивайте |cRXP_ENEMY_Наг из клана Гневной Чешуи|r, |cRXP_ENEMY_Мирмидонов из клана Гневной Чешуи|r и |cRXP_ENEMY_Сирен из клана Гневной Чешуи|r. Собирайте с них |T134462:0|t[|cRXP_LOOT_Испещренную рунами табличку|r]
    .use 23759 >>|cRXP_WARN_Используйте|r |T134462:0|t[|cRXP_LOOT_Испещренную рунами табличку|r] |cRXP_WARN_чтобы начать задание|r
    .collect 23759,1,9514 --Собрано: Испещренная рунами табличка (x1)
    .accept 9514>> Испещренная рунами табличка
    .complete 9513,1 --Убито: Мирмидон из клана Гневной Чешуи (x5)
    .mob +Мирмидон из клана Гневной Чешуи
    .complete 9513,2 --Убито: Нага из клана Гневной Чешуи (x5)
    .mob +Нага из клана Гневной Чешуи
    .complete 9513,3 --Убито: Сирена из клана Гневной Чешуи (x5)
    .mob +Сирена из клана Гневной Чешуи
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Соберите |cRXP_LOOT_Древние реликвии|r на земле
    .complete 9523,1 --Собрано: Древняя реликвия (x8)
step
    #completewith next
    .subzone 3579 >> Плывите к Бухте Предателя
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >> |cRXP_WARN_Используйте|r |T132288:0|t[Маскировка под дерево] |cRXP_WARN_у флага наг|r
    .timer 73,Дерево-шпион RP
    .use 23792
step
    >>|cRXP_WARN_Подождите окончания RP|r
    .complete 9531,1 -- Разоблаченный предатель
step
    +|cRXP_WARN_Снимите бафф|r |T132288:0|t[Маскировка под дерево]|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Коуленом|r
    .turnin 10428 >> Сдайте задание "Пропавший рыбак"
    .accept 9527 >> Примите задание "Все, что осталось"
    .target Коулен
step
    .goto Azuremyst Isle,13.209,89.742
	>>Убивайте |cRXP_ENEMY_Совухов|r. Собирайте с них |cRXP_LOOT_Останки семьи Коулена|r
    .complete 9527,1 --Собрано: Останки семьи Коулена (x1)
    .mob Аномальный совух
    .mob Буйный совух
    .mob Безумный совух
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Коуленом|r
    .turnin 9527 >> Сдайте задание "Все, что осталось"
    .target Коулен
step
	#completewith next
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Археологом Адамантом Железное Сердце|r
    .turnin 9523 >> Сдайте задание "Драгоценные и хрупкие вещи требуют особого подхода"
    .target Археолог Адамант Железное Сердце
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Адмиралом Одиссием|r
    .turnin 9531 >> Сдайте задание "Дерево-шпион"
    .accept 9537 >> Примите задание "Никакой пощады гномам"
    .target Адмирал Одиссий
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Жрицей Кайлин Ил'динар|r
    .turnin 9513 >> Сдайте задание "Возвращение руин"
    .target Жрица Кайлин Ил'динар
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Жрицей Кайлин Ил'динар|r
    .turnin 9514 >> Сдайте задание "Испещренная рунами табличка"
    .target Жрица Кайлин Ил'динар
step
    #completewith next
    .goto Azuremyst Isle,46.219,70.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Логаном Дэниелем|r
    .vendor >> |cRXP_WARN_Продавайте хлам, пока ждете окончания RP|r << !Hunter
    >>|cRXP_BUY_Купите больше пачек|r |T132382:0|t[Грубых стрел] |cRXP_BUY_у него, пока ждете окончания RP|r << Hunter
    .collect 2512,1000 << Hunter --Грубая стрела (1000)
    .target Логан Дэниел
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Жрицей Кайлин Ил'динар|r
    .accept 9515 >> Примите задание "Полководец Срисс'тиз"
    .target Жрица Кайлин Ил'динар
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>Поговорите с |cRXP_FRIENDLY_Инженером "Искрой" Скрежетом|r патрулирующим пляж
    >>Убейте |cRXP_ENEMY_Инженера "Искру" Скрежета|r после короткого RP. Заберите у него |cRXP_LOOT_Сообщение предателя|r
    .complete 9537,1 --Собрано: Сообщение предателя (x1)
    .skipgossip 17243
    .timer 18,Сообщение предателя RP
    .unitscan Инженер "Искра" Скрежет
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Адмиралом Одиссием|r
    .turnin 9537 >> Сдайте задание "Никакой пощады гномам"
    .accept 9602 >> Примите задание "Избавь нас от лукавого..."
    .target Адмирал Одиссий
step << !Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Войдите в пещеру Лощина Приливов
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >> Спрыгните на нижний уровень
step << !Hunter
    >>Убейте |cRXP_ENEMY_Полководца Срисс'тиза|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Полководец Срисс'тиз убит 1/1
    .mob Полководец Срисс'тиз
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+3070 >> Гринд до тех пор, пока не наберете 3070+ опыта на уровне 9 (из 6500)
step
    #completewith next
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Актеоном|r
    .turnin 9453 >> Сдайте задание "Найдите Актеона!"
    .turnin 10324 >> Сдайте задание "Большая охота в Лунной лощине"
    .target Актеон
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Аругуу из племени Тихолесья|r
    .turnin 9544 >> Сдайте задание "Пророчество Акиды"
    .accept 9559 >> Примите задание "Крепость Тихолесья"
    .target Аругуу из племени Тихолесья
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дэдалом|r
    .turnin 9473 >> Сдайте задание "Альтернатива альтернативе"
    .target Дэдал
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
    .turnin 9456 >> Сдайте задание "Истребление ночных ловцов"
    .turnin 9602 >> Сдайте задание "Избавь нас от лукавого..."
    .accept 9623 >> Примите задание "Совершеннолетие"
    .target Экзарх Менелай
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
    .turnin 9612 >> Сдайте задание "Сердечная благодарность"
    .target Экзарх Менелай
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тулууном|r
    .accept 9464 >> Примите задание "Зов Огня"
    .trainer >> Изучите классовые навыки
    .target Тулуун
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Актеоном|r
    .accept 9757 >> Примите задание "В поисках охотницы Келлы Ночной Лук"
    .trainer >> Изучите классовые навыки
    .target Актеон
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гуваном|r
    .trainer >> Изучите классовые навыки
    .target Гуван
    .subzoneskip 3576,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тулласом|r
    .trainer >> Изучите классовые навыки
    .target Туллас
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Семидом|r
    .trainer >> Изучите классовые навыки
    .target Семид
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Руадой|r
    .trainer >> Изучите классовые навыки
    .accept 9582 >> Примите задание "Сила одного"
    .target Руада
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Охотницей Келлой Ночной Лук|r
    .turnin 9757 >> Сдайте задание "В поисках охотницы Келлы Ночной Лук"
    .accept 9591 >> Примите задание "Приручение зверя"
    .target Охотница Келла Ночной Лук
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >> |cRXP_WARN_Используйте|r |T135139:0|t[Тотем приручения] |cRXP_WARN_на |cRXP_ENEMY_Колючем ползуне|r в воде|r
    .complete 9591,1 --Приручить колючего ползуна
    .mob Колючий ползун
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Войдите в пещеру Лощина Приливов
step << Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >> Спрыгните на нижний уровень
step << Hunter
    >>Убейте |cRXP_ENEMY_Полководца Срисс'тиза|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Полководец Срисс'тиз убит 1/1
    .mob Полководец Срисс'тиз
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Выйдите из пещеры Лощина Приливов
    .subzoneskip 3569,1
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Охотницей Келлой Ночной Лук|r
    .turnin 9591 >> Сдайте задание "Приручение зверя"
    .accept 9592 >> Примите задание "Приручение зверя"
    .target Охотница Келла Ночной Лук
step
    .goto The Exodar,81.488,51.449
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тораллиусом, погонщиком вьючных животных|r
    .turnin 9623 >> Сдайте задание "Совершеннолетие"
    .accept 9625 >> Примите задание "Элекки - это серьезно"
    .target Тораллиус, погонщик вьючных животных
step << Hunter
    .goto Azuremyst Isle,34.56,34.04,60,0
	.goto Azuremyst Isle,41.0,30.4,50,0
    .goto Azuremyst Isle,43.6,26.2
	.use 23897 >> |cRXP_WARN_Используйте|r |T135139:0|t[Тотем приручения] |cRXP_WARN_на|r |cRXP_ENEMY_Большом древоброда|r
    .complete 9592,1 --Приручить большого древоброда
    .mob Большой древоброд
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Охотницей Келлой Ночной Лук|r
    .turnin 9592 >> Сдайте задание "Приручение зверя"
    .accept 9593 >> Примите задание "Приручение зверя"
    .target Охотница Келла Ночной Лук
step << Hunter
    .goto Azuremyst Isle,35.0,33.9,50,0
    .goto Azuremyst Isle,41.2,28.6
	.use 23898 >> |cRXP_WARN_Используйте|r |T135139:0|t[Тотем приручения] |cRXP_WARN_на|r |cRXP_ENEMY_Ночном ловце|r
    .complete 9593,1 --Приручить ночного ловца
    .mob Ночной ловец
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Охотницей Келлой Ночной Лук|r
    .turnin 9593 >> Сдайте задание "Приручение зверя"
    .accept 9675 >> Примите задание "Обучение зверя"
    .target Охотница Келла Ночной Лук
step << Hunter
    .isOnQuest 9675
    .goto Azuremyst Isle,24.6,49.0,20 >>Войдите в Экзодар через черный ход
step << Hunter
	.goto The Exodar,53.79,86.11,30,0
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ганааром|r
    .turnin 9675 >> Сдайте задание "Обучение зверя"
	.trainer >> Изучите навыки питомца
    .target Ганаар
step << Hunter
    #completewith next
    .destroy 2512 >> Уничтожьте все ваши |T132382:0|t[Грубые стрелы]
step << Hunter
	#completewith next
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Авелии|r
    >>|cRXP_BUY_Купите 6 пачек|r |T132382:0|t[Острых стрел]
    .collect 2515,1200
    .target Авелии
step << Hunter
	#completewith next
	.goto The Exodar,53.696,78.280,15 >> Поднимитесь по рампе к |cRXP_FRIENDLY_Хандииру|r
step << Hunter
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хандииру|r
    .train 202 >> Изучите Двуручные мечи
    .target Хандиир
step << Hunter
	#completewith next
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.34,34.07,25,0
	.goto The Exodar,64.0,36.5,20,0
    .goto The Exodar,69.34,32.03,20,0
    .goto The Exodar,74.48,54.09,20 >>Спрыгните и выйдите из Экзодара
	-->> Alternatively you can do a logout skip on any brazier or by floating off of any ledge in the city
	--.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Муурдо|r
    .target Муурдо
    .accept 9560 >> Примите задание "Звери апокалипсиса!"
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гурфом|r
    .target Гурф
    .accept 9562 >> Примите задание "Мурлоки... Почему они здесь? Почему сейчас?"
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вождем племени Тихолесья|r
    .target Вождь племени Тихолесья
    .turnin 9559 >> Сдайте задание "Крепость Тихолесья"
step << Hunter
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >> |cRXP_WARN_Примените|r |T132164:0|t[Приручение зверя] |cRXP_WARN_на|r |cRXP_ENEMY_Особь опустошителя|r |cRXP_WARN_чтобы приручить его|r
    .mob Особь опустошителя
step << Shaman
	#completewith next
	>>Убивайте |cRXP_ENEMY_Особей опустошителя|r. Собирайте с них |cRXP_LOOT_Шкуры опустошителя|r
    .complete 9560,1 --Собрано: Шкура опустошителя (x8)
    .mob Особь опустошителя
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Темпером|r
    .turnin 9464 >> Сдайте задание "Зов Огня"
    .accept 9465 >> Примите задание "Зов Огня"
    .target Темпер
step
    #loop
    .goto Azuremyst Isle,54.6,23.8,0
    .goto Azuremyst Isle,55.6,18.2,0
    .goto Azuremyst Isle,53.0,11.6,0
    .goto Azuremyst Isle,54.6,23.8,70,0
    .goto Azuremyst Isle,55.6,18.2,70,0
    .goto Azuremyst Isle,53.0,11.6,70,0
	>>Убивайте |cRXP_ENEMY_Особей опустошителя|r. Собирайте с них |cRXP_LOOT_Шкуры опустошителя|r
    .complete 9560,1 --Собрано: Шкура опустошителя (x8)
    .mob Особь опустошителя
step << Warrior
    #completewith next
    .goto Azuremyst Isle,54.021,9.956
    .cast 30767 >> Нажмите на |cRXP_PICK_Клетку с опустошителем|r чтобы выпустить |cRXP_ENEMY_Смертоносного опустошителя|r
step << Warrior
    .goto Azuremyst Isle,54.084,9.721
    >>Убейте |cRXP_ENEMY_Смертоносного опустошителя|r
    .complete 9582,1 --Убито: Смертоносный опустошитель (x1)
    .mob Смертоносный опустошитель
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Муурдо|r
    .target Муурдо
    .turnin 9560 >> Сдайте задание "Звери апокалипсиса!"
step
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стилпайном Младшим|r
    .target Стилпайн Младший
    .accept 9573 >> Примите задание "Вождь Умуру"
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вождем племени Тихолесья|r
    .target Вождь племени Тихолесья
    .accept 9565 >> Примите задание "Поиски в крепости Тихолесья"
step
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,45.391,18.194,20 >> Войдите в пещеру Крепость Тихолесья
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,47.453,16.078,10 >> Поднимитесь в верхнюю часть пещеры
step
	.goto Azuremyst Isle,47.394,14.121
    >>Убейте |cRXP_ENEMY_Вождя Умуру|r
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r << !Shaman
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r. Собирайте с них |cRXP_LOOT_Ритуальные факелы|r << Shaman
    .complete 9573,1 --Убито: Вождь Умуру (x1)
    .mob +Вождь Умуру
    .complete 9573,2 --Убито: Обезумевший дикий совух (x9)
    .disablecheckbox
    .mob +Обезумевший дикий совух
    .complete 9465,1 << Shaman --Собрано: Ритуальный факел (x1)
    .disablecheckbox
    .mob +Обезумевший дикий совух
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,48.26,13.78,10 >> Спрыгните вниз и идите вглубь пещеры
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r << !Shaman
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r. Собирайте с них |cRXP_LOOT_Ритуальные факелы|r << Shaman
    .complete 9573,2 --Убито: Обезумевший дикий совух (x9)
    .complete 9465,1 << Shaman --Собрано: Ритуальный факел (x1)
    .mob Обезумевший дикий совух
step
    .goto Azuremyst Isle,50.632,11.544
    >>Нажмите на |cRXP_PICK_Кристалл крови|r
    >>|cRXP_WARN_Избегайте убийства |cRXP_ENEMY_Куркена|r, если возможно, так как вам скоро придется убить его|r
    .turnin 9565 >> Сдайте задание "Поиски в крепости Тихолесья"
    .accept 9566 >> Примите задание "Кристаллы крови"
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r << !Shaman
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r. Собирайте с них |cRXP_LOOT_Ритуальные факелы|r << Shaman
    >>|cRXP_WARN_Вы скоро закончите это, если еще не закончили|r
    .complete 9573,2 --Убито: Обезумевший дикий совух (x9)
    .complete 9465,1 << Shaman --Собрано: Ритуальный факел (x1)
    .mob Обезумевший дикий совух
step
    .isOnQuest 9573,9566
    .goto Azuremyst Isle,45.391,18.194,12 >> Выйдите из пещеры
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вождем племени Тихолесья|r
    .target Вождь племени Тихолесья
    .turnin 9566 >> Сдайте задание "Кристаллы крови"
step
    #optional
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стилпайном Младшим|r
    .target Стилпайн Младший
    .turnin 9573 >> Сдайте задание "Вождь Умуру"
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Курцем Разоблачителем|r
    .target Курц Разоблачитель
    .accept 9570 >> Примите задание "Куркен затаился"
step
	.goto Azuremyst Isle,46.964,22.011
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Паркатом Стальной Мех|r
    .vendor >> |cRXP_BUY_Купите|r |T133634:0|t[Маленький коричневый мешочек]
    .target Паркат Стальной Мех
    .subzoneskip 3572,1
step
    .isOnQuest 9570,9573
    .goto Azuremyst Isle,45.391,18.194,20 >> Снова войдите в пещеру Крепость Тихолесья
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r << !Shaman
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r. Собирайте с них |cRXP_LOOT_Ритуальные факелы|r << Shaman
    .complete 9573,2 --Убито: Обезумевший дикий совух (x9)
    .complete 9465,1 << Shaman --Собрано: Ритуальный факел (x1)
    .mob Обезумевший дикий совух
step
    .goto Azuremyst Isle,48.26,13.78,10,0
    .goto Azuremyst Isle,49.9,12.8
	>>Убейте |cRXP_ENEMY_Куркена|r. Заберите у него |cRXP_LOOT_Шкуру|r
    .complete 9570,1 --Собрано: Шкура Куркена (x1)
    .mob Куркен
step
    .goto Azuremyst Isle,47.394,14.121
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r << !Shaman
    >>Убивайте |cRXP_ENEMY_Обезумевших диких совухов|r. Собирайте с них |cRXP_LOOT_Ритуальные факелы|r << Shaman
    .complete 9573,2 --Убито: Обезумевший дикий совух (x9)
    .complete 9465,1 << Shaman --Собрано: Ритуальный факел (x1)
    .mob Обезумевший дикий совух
step
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стилпайном Младшим|r
    .target Стилпайн Младший
    .turnin 9573 >> Сдайте задание "Вождь Умуру"
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Курцем Разоблачителем|r
    .target Курц Разоблачитель
    .turnin 9570 >> Сдайте задание "Куркен затаился"
    .accept 9571 >> Примите задание "Шкура Куркена"
step << Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вождем племени Тихолесья|r
    .accept 9622 >> Примите задание "Предупреждение"
    .target Вождь племени Тихолесья
step
	#label end
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Муурдо|r
    .target Муурдо
    .turnin 9571 >> Сдайте задание "Шкура Куркена"
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Темпером|r
    .turnin 9465 >> Сдайте задание "Зов Огня"
    .accept 9467 >> Примите задание "Зов Огня"
    .target Темпер
step << Shaman
    #completewith next
	.hs >> Используйте камень возвращения, чтобы вернуться на Лазурную заставу
step << Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
    .turnin 9622 >> Сдайте задание "Предупреждение"
    .target Экзарх Менелай
step << Shaman
    #completewith Wickerman
    .subzone 3639 >> Отправляйтесь на Остров Серебряной Дымки
step << Shaman
    #completewith Wickerman
    .use 24336 >>Откройте |T133655:0|t[Огнеупорная сумка] для получения |T135432:0|t[Ритуальный факел]
    .complete 9467,2 --Собрано: Ритуальный факел (x1)
step << Shaman
    #completewith Wickerman
    .goto Azuremyst Isle,11.442,82.273
    .cast 30212 >>Нажмите на |cRXP_PICK_Чучело Плетеного человека|r чтобы призвать |cRXP_ENEMY_Хаутура|r
step << Shaman
    #label Wickerman
    .goto Azuremyst Isle,11.442,82.273
    >>Убейте |cRXP_ENEMY_Хаутура|r. Заберите у него |cRXP_LOOT_Пепел|r
    .complete 9467,1 --Собрано: Пепел Хаутура (x1)
    .mob Хаутур
step << Shaman
    #completewith next
    .cast 31613 >>|cRXP_WARN_Используйте|r |T134337:0|t[Сфера возвращения] |cRXP_WARN_чтобы телепортироваться обратно на Тлеющую поляну|r
    .use 24335
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Темпером|r
    .turnin 9467 >> Сдайте задание "Зов Огня"
    .accept 9468 >> Примите задание "Зов Огня"
    .target Темпер
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_Мурлоков-илоплавов|r, |cRXP_ENEMY_Оракулов из племени Илоплавов|r и |cRXP_ENEMY_Охотников из племени Илоплавов|r. Собирайте с них |cRXP_LOOT_Зерно|r
    .complete 9562,1 --Собрано: Зерно Тихолесья (x5)
    .mob Мурлок-илоплав
    .mob Оракул из племени Илоплавов
    .mob Охотник из племени Илоплавов
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Убейте |cRXP_ENEMY_Мургургула|r. Заберите у него |T134350:0|t[|cRXP_LOOT_Достоинство Гурфа|r]
    .use 23850 >> |cRXP_WARN_Используйте|r |T134350:0|t[|cRXP_LOOT_Достоинство Гурфа|r] |cRXP_WARN_чтобы начать задание|r
    >>|cRXP_ENEMY_Мургургула|r |cRXP_WARN_патрулирует вдоль побережья|r
	.collect 23850,1,9564,1 --Достоинство Гурфа (1)
    .accept 9564 >> Примите задание "Достоинство Гурфа"
	.unitscan Мургургула
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Убивайте |cRXP_ENEMY_Мурлоков-илоплавов|r, |cRXP_ENEMY_Оракулов из племени Илоплавов|r и |cRXP_ENEMY_Охотников из племени Илоплавов|r. Собирайте с них |cRXP_LOOT_Зерно|r
    .complete 9562,1 --Собрано: Зерно Тихолесья (x5)
    .mob Мурлок-илоплав
    .mob Оракул из племени Илоплавов
    .mob Охотник из племени Илоплавов
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Отправляйтесь на Остров Кровавой Дымки
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance
#name 12-20 Остров Кровавой Дымки (Дренеи)
#subgroup RestedXP Альянс 1-20
#defaultfor Draenei
#next 20-21 Темные берега (Дренеи)

step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Аонаром|r
    .target Аонар
    .accept 9624 >> Примите задание "Любимое лакомство"
step
    .isOnQuest 9625
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воркханом|r
    .target Воркхан
    .turnin 9625 >> Сдайте задание "Элекки - это серьезно"
    .accept 9634 >> Примите задание "Иноземные хищники"
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воркханом|r
    .target Воркхан
    .accept 9634 >> Примите задание "Иноземные хищники"
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    .xp 12-2000 >> |cRXP_WARN_Гринд до тех пор, пока не останется 2000 опыта до 12 уровня (6800/8800)|r
    >>Убивайте |cRXP_ENEMY_Детенышей Кровавой Дымки|r
	>>Собирайте |cRXP_LOOT_Песчаные груши|r на земле
    >>|cRXP_WARN_Как только наберете нужное количество опыта, продолжайте по гайду|r
    .complete 9634,1 --Убито: Детеныш Кровавой Дымки (x10)
    .mob Детеныш Кровавой Дымки
    .disablecheckbox
    .complete 9624,1 --Собрано: Песчаная груша (x10)
    .disablecheckbox
step
	#completewith next
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сиделкой Тофер Лоал|r
    .target Сиделка Тофер Лоал
    .accept 9603 >> Примите задание "Кровати, бинты и прочее"
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сиделкой Тофер Лоал|r
    .target Сиделка Тофер Лоал
    >>|cRXP_BUY_Купите до 40|r |T133918:0|t[Длиннорылого ильного луциана] |cRXP_BUY_у него|r << Warrior
    >>|cRXP_BUY_Купите до 40|r |T132815:0|t[Ледяного молока] |cRXP_BUY_у него|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Купите до 40|r |T132815:0|t[Ледяного молока] |cRXP_BUY_и|r |T133918:0|t[Длиннорылого ильного луциана] |cRXP_BUY_у него|r << Paladin/Shaman
    .collect 1179,35 << !Warrior !Rogue --Ледяное молоко (35)
    .collect 4592,35 --Длиннорылый ильный луциан (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сиделкой Тофер Лоал|r
    .target Сиделка Тофер Лоал
    .home >> Установите камень возвращения на Кровавую заставу
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Маатпармом|r
    .target Маатпарм
    .accept 9648 >> Примите задание "Грибной зверинец Маатпарма"
step
    #completewith next
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Лаандо|r
    .target Лаандо
    .turnin 9603 >> Сдайте задание "Кровати, бинты и прочее"
step
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Лаандо|r
    .target Лаандо
    .fp Blood Watch>> Откройте полеты на Кровавой заставе
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Лаандо|r
    .target Лаандо
    .turnin 9603 >> Сдайте задание "Кровати, бинты и прочее"
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Адметиусом|r
    .accept 9693 >> Примите задание "Что Аргус значит для меня"
    .target Экзарх Адметиус
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Предвестником Миколаасом|r
    .accept 9581 >> Примите задание "Учимся у кристаллов"
    .target Предвестник Миколаас
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .turnin 9693 >> Сдайте задание "Что Аргус значит для меня"
    .accept 9694 >> Примите задание "Кровавая застава"
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Убивайте |cRXP_ENEMY_Шпионов Ярости Солнца|r
    >>|cRXP_WARN_Будьте осторожны, |cRXP_ENEMY_Шпионы Ярости Солнца|r очень сильны на этом уровне|r
    .complete 9694,1 --Убито: Шпион Ярости Солнца (x10)
    .mob Шпион Ярости Солнца
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .turnin 9694 >> Сдайте задание "Кровавая застава"
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Морой|r
    .target Мора
    .accept 9629 >> Примите задание "Поймать и отпустить"
step
	#completewith next
	>>Соберите |cRXP_LOOT_Кровавый гриб|r на земле
    >>|cRXP_WARN_Они растут по всему Острову Кровавой Дымки|r
    .complete 9648,2 --Собрано: Кровавый гриб (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Убейте |cRXP_ENEMY_Жалящий вонючий гриб|r. Заберите с него |cRXP_LOOT_Водяной вонючий гриб|r
    >>|cRXP_WARN_Вы также можете собрать |cRXP_LOOT_Водяной вонючий гриб|r под водой|r
	.complete 9648,1 -- Соберите водяной вонючий гриб (x1)
    .mob Жалящий вонючий гриб
step
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Используйте|r |T134709:0|t[Кристальная шахтерская кирка] |cRXP_WARN_на|r |cRXP_PICK_Кристалле на месте удара|r
    .complete 9581,1 --Собрано: Образец кристалла с места удара (x1)
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    .xp 12-2000 >> |cRXP_WARN_Гринд до тех пор, пока не останется 2000 опыта до 12 уровня (6800/8800)|r
    >>Убивайте |cRXP_ENEMY_Детенышей Кровавой Дымки|r
	>>Собирайте |cRXP_LOOT_Песчаные груши|r на земле
    >>|cRXP_WARN_Как только наберете нужное количество опыта, продолжайте по гайду|r
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith grind3800
	>>Соберите |cRXP_LOOT_Песчаные груши|r на земле
    >>|cRXP_WARN_Их трудно заметить, ищите вокруг деревьев|r
    .complete 9624,1 --Собрано: Песчаная груша (x10)
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    >>Убивайте |cRXP_ENEMY_Детенышей Кровавой Дымки|r
    .complete 9634,1 --Убито: Детеныш Кровавой Дымки (x10)
    .mob Детеныш Кровавой Дымки
step
	#label grind3800
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
	.xp 12+3880 >> Гринд до тех пор, пока не наберете 3880 опыта на 12 уровне (3880+/9800)
    .mob Детеныш Кровавой Дымки
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
	>>Соберите |cRXP_LOOT_Песчаные груши|r на земле
    >>|cRXP_WARN_Их трудно заметить, ищите вокруг деревьев|r
    .complete 9624,1 --Собрано: Песчаная груша (x10)
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Аонаром|r
    .target Аонар
    .turnin 9624 >> Сдайте задание "Любимое лакомство"
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воркханом|r
    .target Воркхан
    .turnin 9634 >> Сдайте задание "Иноземные хищники"
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кесселем|r
    .accept 9663 >> Примите задание "Забег Кесселя"
    .target Кессель
step
    #completewith next
    .goto Azuremyst Isle,42.18,2.88,20,0
    .goto Azuremyst Isle,43.23,11.58,70,0
    .goto Azuremyst Isle,50.99,13.09,70,0
    .goto Azuremyst Isle,49.40,23.09,80,0
    .goto Azuremyst Isle,46.685,20.617
	.subzone 3572 >> |cRXP_WARN_ПРИМЕЧАНИЕ: Не вступайте в бой, не атакуйте и не применяйте заклинания, иначе вы спешитесь! Вы также спешитесь, если получите головокружение от удара в спину!|r
    *|cRXP_WARN_Это задание на время! У вас есть 15 минут, чтобы выполнить и сдать его|r
    *|cRXP_WARN_Следуйте по дороге на юг, чтобы безопасно добраться до |cRXP_FRIENDLY_Вождя племени Тихолесья|r|r
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вождем племени Тихолесья|r
    .accept 9622 >> Примите задание "Предупреждение" << !Shaman
    .complete 9663,1 --Вождь племени Тихолесья предупрежден
    .target Вождь племени Тихолесья
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гурфом|r
    .turnin 9564 >> Сдайте задание "Достоинство Гурфа"
    .turnin 9562 >> Сдайте задание "Мурлоки... Почему они здесь? Почему сейчас?"
    .target Гурф
step
    .goto Azuremyst Isle,49.25,49.53
    .isOnQuest 9663
    .subzone 3576 >> |cRXP_WARN_Продолжайте следовать по дороге на юг к Лазурной заставе|r
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Семидом|r
    .trainer >> Изучите классовые навыки
    .target Семид
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Руадой|r
    .turnin 9582 >> Сдайте задание "Сила одного"
    .accept 10350 >> Примите задание "Бехомат"
    .trainer >> Изучите классовые навыки
    .target Руада
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Актеоном|r
    .trainer >> Изучите классовые навыки
    .target Актеон
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гуваном|r
    .trainer >> Изучите классовые навыки
    .target Гуван
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тулууном|r
    .turnin 9468 >> Сдайте задание "Зов Огня"
    .accept 9461 >> Примите задание "Зов Огня"
    .trainer >> Изучите классовые навыки
    .target Тулуун
    .subzoneskip 3576,1
step
    #optional
    .use 23910 >> |cRXP_WARN_Используйте|r |T133473:0|t[Переписка эльфов крови] |cRXP_WARN_чтобы начать задание|r
    .accept 9616 >> Примите задание "Бандиты!"
    .itemcount 23910,1
step
    #optional
    .isOnQuest 9616
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
    .turnin 9616 >> Сдайте задание "Бандиты!"
    .target Экзарх Менелай
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
    .turnin 9612 >> Сдайте задание "Сердечная благодарность"
    .target Экзарх Менелай
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Менелаем|r
    .turnin 9622 >> Сдайте задание "Предупреждение" << !Shaman
    .complete 9663,2 --Экзарх Менелай предупрежден
    .target Экзарх Менелай
step
    #completewith next
    .isOnQuest 9663
    .subzone 3573 >> |cRXP_WARN_Продолжайте следовать по дороге на юг к Пристанищу Одиссия|r
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Адмиралом Одиссием|r
    .complete 9663,3 --Адмирал Одиссий предупрежден
    .target Адмирал Одиссий
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Жрицей Кайлин Ил'динар|r
    .turnin 9515 >> Сдайте задание "Полководец Срисс'тиз"
    .target Жрица Кайлин Ил'динар
step << Paladin
    #completewith next
    .goto Azuremyst Isle,24.6,49.0,20,0
    .goto The Exodar,42.90,67.67,15 >>Войдите в Экзодар через черный ход
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Жрицей Кайлин Ил'динар|r
    .target Йол
    .accept 9598 >>Примите задание "Искупление"
    .turnin 9598 >>Сдайте задание "Искупление"
    .accept 9600 >>Примите задание "Искупление"
	.trainer >> Изучите классовые навыки
step
    .isOnQuest 9581,9663
	.hs >> Используйте камень возвращения, чтобы вернуться на Кровавую заставу
    .cooldown item,6948,>2,1
step
	.isOnQuest 9581,9663
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стефаносом|r
    .fly Blood Watch >> Летите на Кровавую заставу
    .target Стефанос
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Аалесией|r
    .accept 9567 >> Примите задание "Изучи своего врага"
    .target Воздаятель Аалесия
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Предвестником Миколаасом|r
    .turnin 9581 >> Сдайте задание "Учимся у кристаллов"
    .accept 9620 >> Примите задание "Пропавшая экспедиция"
    .target Предвестник Миколаас
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кесселем|r
    .turnin 9663 >> Сдайте задание "Забег Кесселя"
    .accept 9666 >> Примите задание "Объявление силы"
    .target Кессель
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцессой Тихой Сосной|r
    .accept 9667 >> Примите задание "Спасение принцессы Тихой Сосны"
    .target Принцесса Тихая Сосна
step
	#completewith next
	>>Соберите |cRXP_LOOT_Губительную полиспору|r на земле
    >>|cRXP_WARN_Она выглядит как маленький синий гриб, растущий вокруг руин наг|r
    .complete 9648,3 --Собрано: Губительная полиспора (x1)
step
    .goto Bloodmyst Isle,67.35,67.99,40,0
    .goto Bloodmyst Isle,68.83,68.09
	>>Убейте |cRXP_ENEMY_Лорда Ксиза|r
    .use 24084 >> |cRXP_WARN_Используйте|r |T132484:0|t[Дренейское знамя] |cRXP_WARN_на его трупе|r
    .complete 9666,1 -- Убить лорда Ксиза (1)
    .mob +Лорд Ксиз
    .complete 9666,2 --Объявление силы (x1)
step
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>Соберите |cRXP_LOOT_Губительную полиспору|r на земле
    >>|cRXP_WARN_Она выглядит как маленький синий гриб, растущий вокруг руин наг|r
    .complete 9648,3 --Собрано: Губительная полиспора (x1)
step << Paladin
    #completewith next
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>|cRXP_WARN_Используйте|r |T133439:0|t[Символ Жизни] |cRXP_WARN_на|r |cRXP_FRIENDLY_Молодом шамане из племени Иглошкурых|r
    .complete 9600,1 --Воскресить молодого шамана из племени Иглошкурых (1)
    .target Молодой шаман из племени Иглошкурых
step
    .goto Bloodmyst Isle,64.2,76.8
    >>Убивайте |cRXP_ENEMY_Воинов из племени Иглошкурых|r и |cRXP_ENEMY_Шаманов из племени Иглошкурых|r пока не появится |cRXP_ENEMY_Верховный вождь Иглошкурых|r
    >>Убейте |cRXP_ENEMY_Верховного вождя Иглошкурых|r. Заберите у него |cRXP_LOOT_Ключ верховного вождя|r
    .collect 24099,1,9667,1 --Собрано: Ключ верховного вождя (x1)
    .mob Воин из племени Иглошкурых
    .mob Шаман из племени Иглошкурых
    .unitscan Верховный вождь Иглошкурых
step << Paladin
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>|cRXP_WARN_Используйте|r |T133439:0|t[Символ Жизни] |cRXP_WARN_на|r |cRXP_FRIENDLY_Молодом шамане из племени Иглошкурых|r
    .complete 9600,1 --Воскресить молодого шамана из племени Иглошкурых (1)
    .target Молодой шаман из племени Иглошкурых
step
    .goto Bloodmyst Isle,68.257,80.999
    >>Нажмите на |cRXP_PICK_Клетку принцессы Тихой Сосны|r
    .complete 9667,1 --Освободить принцессу Тихую Сосну
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кесселем|r
    .turnin 9666 >> Сдайте задание "Объявление силы"
    .accept 9668 >> Примите задание "Доклад экзарху Адметиусу"
    .target Кессель
step
	#completewith next
	.use 23995 >>|cRXP_WARN_Используйте|r |T135619:0|t[Маркер для мурлоков] |cRXP_WARN_на|r |cRXP_ENEMY_Разведчиках из племени Черного Ила|r
    >>|cRXP_WARN_НЕ убивайте|r |cRXP_ENEMY_Разведчиков из племени Черного Ила|r
    .complete 9629,1 --Разведчиков из племени Черного Ила отмечено (x6)
    .target Разведчик из племени Черного Ила
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	>>Убейте |cRXP_ENEMY_Жестокого Плавника|r. Заберите у него |T133339:0|t[|cRXP_LOOT_Подвеску с красным кристаллом|r]
    .use 23870 >>|cRXP_WARN_Используйте|r |T133339:0|t[|cRXP_LOOT_Подвеску с красным кристаллом|r] |cRXP_WARN_чтобы начать задание|r
    >>|cRXP_ENEMY_Жестокий Плавник|r |cRXP_WARN_патрулирует вдоль побережья|r
	.collect 23870,1,9576,1 --Подвеска с красным кристаллом (1)
    .accept 9576 >> Примите задание "Ожерелье Жестокого Плавника"
	.unitscan Жестокий Плавник
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	.use 23995 >>|cRXP_WARN_Используйте|r |T135619:0|t[Маркер для мурлоков] |cRXP_WARN_на|r |cRXP_ENEMY_Разведчиках из племени Черного Ила|r
    >>|cRXP_WARN_НЕ убивайте|r |cRXP_ENEMY_Разведчиков из племени Черного Ила|r
    .complete 9629,1 --Разведчиков из племени Черного Ила отмечено (x6)
    .target Разведчик из племени Черного Ила
step
	#completewith FelConeFungus
	>>Соберите |cRXP_LOOT_Кровавый гриб|r на земле
    >>|cRXP_WARN_Они растут по всему Острову Кровавой Дымки|r
    .complete 9648,2 --Собрано: Кровавый гриб (x1)
step
    #completewith SatyrFelsworn
	>>Соберите |cRXP_LOOT_Гриб Скверны|r на земле
    .complete 9648,4 --Собрано: Гриб Скверны (x1)
step
    #completewith next
    >>Убейте |cRXP_ENEMY_Тзерака|r. Заберите у него |T134518:0|t[|cRXP_LOOT_Бронепластину Тзерака|r]
    .use 23900 >> |cRXP_WARN_Используйте|r |T134518:0|t[|cRXP_LOOT_Бронепластину Тзерака|r] |cRXP_WARN_чтобы начать задание|r
    .collect 23900,1,9594,1 --Бронепластина Тзерака
    .accept 9594 >> Примите задание "Знаки Легиона"
    .unitscan Тзерак
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Нажмите на |cRXP_PICK_Символы на памятнике Наззивуса|r на стене алтаря. Соберите |cRXP_LOOT_Символ с памятника Наззивуса|r
    .complete 9567,1 --Собрано: Символ с памятника Наззивуса (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Убейте |cRXP_ENEMY_Тзерака|r. Заберите у него |T134518:0|t[|cRXP_LOOT_Бронепластину Тзерака|r]
    .use 23900 >> |cRXP_WARN_Используйте|r |T134518:0|t[|cRXP_LOOT_Бронепластину Тзерака|r] |cRXP_WARN_чтобы начать задание|r
    >>|cRXP_WARN_Если вы не видите его патрулирующим лагеря, подождите его появления у фиолетового символа на земле на юге. Его появление может занять 3-6 минут|r
    .collect 23900,1,9594,1 --Бронепластина Тзерака
    .accept 9594 >> Примите задание "Знаки Легиона"
    .unitscan Тзерак
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>Убивайте |cRXP_ENEMY_Сатиров из клана Наззивуса|r и |cRXP_ENEMY_Осквернителей из клана Наззивуса|r
    >>|cRXP_WARN_Возможно, вам придется убивать |cRXP_ENEMY_Разбойников из клана Наззивуса|r, если вы не видите |cRXP_ENEMY_Сатиров|r или |cRXP_ENEMY_Осквернителей|r, чтобы они возродились|r
    .complete 9594,1 --Убито: Сатир из клана Наззивуса (x8)
    .mob +Сатир из клана Наззивуса
    .complete 9594,2 --Убито: Осквернитель из клана Наззивуса (x8)
    .mob +Осквернитель из клана Наззивуса
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>Соберите |cRXP_LOOT_Гриб Скверны|r на земле
    .complete 9648,4 --Собрано: Гриб Скверны (x1)
step
    #loop
    .goto Bloodmyst Isle,38.9,79.4,0
    .goto Bloodmyst Isle,42.1,71.7,0
    .goto Bloodmyst Isle,46.8,77.0,0
    .goto Bloodmyst Isle,45.7,86.9,0
    .goto Bloodmyst Isle,49.7,86.2,0
    .goto Bloodmyst Isle,53.5,75.7,0
    .goto Bloodmyst Isle,48.5,66.7,0
    .goto Bloodmyst Isle,54.1,67.6,0
    .goto Bloodmyst Isle,58.9,61.8,0
    .goto Bloodmyst Isle,38.9,79.4,15,0
    .goto Bloodmyst Isle,42.1,71.7,15,0
    .goto Bloodmyst Isle,46.8,77.0,15,0
    .goto Bloodmyst Isle,45.7,86.9,15,0
    .goto Bloodmyst Isle,49.7,86.2,15,0
    .goto Bloodmyst Isle,53.5,75.7,15,0
    .goto Bloodmyst Isle,48.5,66.7,15,0
    .goto Bloodmyst Isle,54.1,67.6,15,0
    .goto Bloodmyst Isle,58.9,61.8,15,0
	>>Соберите |cRXP_LOOT_Кровавый гриб|r на земле
    >>|cRXP_WARN_Они растут по всему Острову Кровавой Дымки|r
    .complete 9648,2 --Собрано: Кровавый гриб (x1)
step
    #optional
    .isOnQuest 9648,9594,9567,9629
	.hs >> Используйте камень возвращения, чтобы вернуться на Кровавую заставу
    .cooldown item,6948,>2,1
step
    #completewith next
    .subzone 3584 >> Отправляйтесь на Кровавую заставу
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Морой|r
    .turnin 9576 >> Сдайте задание "Ожерелье Жестокого Плавника"
    .turnin 9629 >> Сдайте задание "Поймать и отпустить"
    .accept 9574 >> Примите задание "Жертвы порчи"
    .target Мора
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Убивайте |cRXP_ENEMY_Оскверненных древней|r. Собирайте с них |cRXP_LOOT_Кристаллизованную кору|r
    .complete 9574,1 --Собрано: Кристаллизованная кора (x6)
    .mob Оскверненный древень
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Морой|r
    .turnin 9574 >> Сдайте задание "Жертвы порчи"
    .target Мора
step
	.goto Bloodmyst Isle,53.319,56.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бигой|r
    .target Бига
	.vendor >> |cRXP_WARN_Торговец и Ремонт|r << !Hunter
	.vendor >> |cRXP_BUY_Купите|r |T134410:0|t[Средний колчан] |cRXP_WARN_и пополните запас|r |T132382:0|t[Острых стрел] << Hunter
    .collect 11362,1 << Hunter
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Нажмите на |cRXP_PICK_Плакат "Разыскивается!"|r
    .accept 9646 >> Примите задание "РАЗЫСКИВАЕТСЯ: Коготь Смерти"
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Аалесией|r
    .turnin 9594 >> Сдайте задание "Знаки Легиона"
    .turnin 9567 >> Сдайте задание "Изучи своего врага"
    .target Воздаятель Аалесия
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Аалесией|r
    .turnin 9567 >> Сдайте задание "Изучи своего врага"
    .target Воздаятель Аалесия
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Послом племени Тихолесья Олоргом|r
    .turnin 9667 >> Сдайте задание "Спасение принцессы Тихой Сосны"
    .target Посол племени Тихолесья Олорг
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .accept 9641 >> Примите задание "Облученные осколки кристалла"
	.turnin 9641 >> Сдайте задание "Облученные осколки кристалла"
    .accept 9779 >> Примите задание "Перехват сообщения"
	.itemcount 23984,10 -- Облученный осколок кристалла (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .accept 9641 >> Примите задание "Облученные осколки кристалла"
    .accept 9779 >> Примите задание "Перехват сообщения"
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Эсомом|r
    .trainer >> Изучите классовые навыки
    .target Воздаятель Эсом
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .accept 9580 >> Примите задание "Медвежья услуга"
    .accept 9643 >> Примите задание "Лозы душителя"
    .target Следопыт Ликеон
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Маатпармом|r
    .turnin 9648 >> Сдайте задание "Грибной зверинец Маатпарма"
    .target Маатпарм
step
    #completewith next
    .subzone 3591 >> Отправляйтесь в Руины Лорет'Аран
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с мертвым |cRXP_FRIENDLY_Дренейским картографом|r
    .turnin 9620 >> Сдайте задание "Пропавшая экспедиция"
    .accept 9628 >> Примите задание "Спасение данных"
    .target Дренейский картограф
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Убивайте |cRXP_ENEMY_Мародеров из клана Гневной Чешуи|r и |cRXP_ENEMY_Волшебниц из клана Гневной Чешуи|r. Собирайте с них |cRXP_LOOT_Кристалл с данными исследований|r
    .complete 9628,1 --Собрано: Кристалл с данными исследований (x1)
    .mob Мародер из клана Гневной Чешуи
    .mob Волшебница из клана Гневной Чешуи
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Предвестником Миколаасом|r
    .turnin 9628 >> Сдайте задание "Спасение данных"
    .accept 9584 >> Примите задание "Второй образец"
    .turnin 9668 >> Сдайте задание "Доклад экзарху Адметиусу"
    .target Предвестник Миколаас
step
	#completewith GrindCheck
	>>Убивайте |cRXP_ENEMY_Шпионов Ярости Солнца|r. Собирайте с них |cRXP_LOOT_Донесение клана Ярости Солнца|r
    .complete 9779,1 --Собрано: Донесение клана Ярости Солнца (x1)
    .mob Шпион Ярости Солнца
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>|cRXP_WARN_Используйте|r |T134709:0|t[Кристальная шахтерская кирка] |cRXP_WARN_на|r |cRXP_PICK_Измененном кристалле Кровавой Дымки|r
    .complete 9584,1 --Собрано: Измененный образец кристалла (x1)
step
    #label GrindCheck
	.goto Bloodmyst Isle,48.1,47.6
    .xp 15-1200 >> Гринд до тех пор, пока не останется 1200 опыта до 15 уровня (11100/12300)
    .mob Шпион Ярости Солнца
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Убивайте |cRXP_ENEMY_Шпионов Ярости Солнца|r. Собирайте с них |cRXP_LOOT_Донесение клана Ярости Солнца|r
    .complete 9779,1 --Собрано: Донесение клана Ярости Солнца (x1)
    .mob Шпион Ярости Солнца
step
	#completewith Audience
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гонцом Гермесиусом|r
    >>|cRXP_FRIENDLY_Гонец Гермесиус|r |cRXP_WARN_патрулирует по всей Кровавой заставе|r
    .accept 9671 >> Примите задание "Срочная доставка"
    .turnin 9671 >> Сдайте задание "Срочная доставка"
	.target Гонец Гермесиус
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Предвестником Миколаасом|r
    .turnin 9584 >> Сдайте задание "Второй образец"
    .accept 9585 >> Примите задание "Последний образец"
    .target Предвестник Миколаас
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .turnin 9779 >> Сдайте задание "Перехват сообщения"
    .accept 9696 >> Примите задание "Перевод..."
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .accept 9641 >> Примите задание "Облученные осколки кристалла"
	.turnin 9641 >> Сдайте задание "Облученные осколки кристалла"
	.itemcount 23984,10 -- Облученный осколок кристалла (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    +|cRXP_WARN_Не забудьте сдать|r |T134082:0|t[Облученные осколки кристалла] |cRXP_WARN_для получения баффа|r |T132775:0|t[Кристалл озарения] |cRXP_WARN_(Увеличивает интеллект на 5. Длится 30 мин.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Не забудьте сдать|r |T134082:0|t[Облученные осколки кристалла] |cRXP_WARN_для получения баффа|r |T132786:0|t[Кристалл свирепости] |cRXP_WARN_(Увеличивает силу атаки на 10. Длится 30 мин.)|r << Warrior/Paladin/Shaman/Rogue
    .target Воздаятель Борос
    .itemcount 23984,>9
step
    #label Audience
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дознавателем Элизией|r
    .target Дознаватель Элизия
    .turnin 9696 >> Сдайте задание "Перевод..."
    .accept 9698 >> Примите задание "Аудиенция у Пророка"
step
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гонцом Гермесиусом|r
    >>|cRXP_FRIENDLY_Гонец Гермесиус|r |cRXP_WARN_патрулирует по всей Кровавой заставе|r
    .accept 9671 >> Примите задание "Срочная доставка"
    .turnin 9671 >> Сдайте задание "Срочная доставка"
	.target Гонец Гермесиус
step
    .goto Bloodmyst Isle,55.210,59.207
	>>Откройте |cRXP_PICK_Почтовый ящик|r. Заберите |T134332:0|t[|cRXP_LOOT_Письмо от адмирала|r]
    .use 24132 >>|cRXP_WARN_Используйте|r |T134332:0|t[|cRXP_LOOT_Письмо от адмирала|r] |cRXP_WARN_чтобы начать задание|r
    .collect 24132,1,9672 --Собрано: Письмо от адмирала
    .accept 9672 >> Примите задание "Наследие Кровавого Проклятия"
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сиделкой Тофер Лоал|r
    .target Сиделка Тофер Лоал
    >>|cRXP_BUY_Купите до 40|r |T133918:0|t[Длиннорылого ильного луциана] |cRXP_BUY_у него|r << Warrior
    >>|cRXP_BUY_Купите до 40|r |T132796:0|t[Дынного сока] |cRXP_BUY_у него|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Купите до 40|r |T132796:0|t[Дынного сока] |cRXP_BUY_и|r |T133918:0|t[Длиннорылого ильного луциана] |cRXP_BUY_у него|r << Paladin/Shaman
    .collect 1205,35 << !Warrior !Rogue --Дынный сок (35)
    .collect 4592,35 --Длиннорылый ильный луциан (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Аалесией|r
    .accept 9569 >> Примите задание "Сдерживание угрозы"
    .target Воздаятель Аалесия
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .accept 9641 >> Примите задание "Облученные осколки кристалла"
	.turnin 9641 >> Сдайте задание "Облученные осколки кристалла"
	.itemcount 23984,10 -- Облученный осколок кристалла (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    +|cRXP_WARN_Не забудьте сдать|r |T134082:0|t[Облученные осколки кристалла] |cRXP_WARN_для получения баффа|r |T132775:0|t[Кристалл озарения] |cRXP_WARN_(Увеличивает интеллект на 5. Длится 30 мин.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Не забудьте сдать|r |T134082:0|t[Облученные осколки кристалла] |cRXP_WARN_для получения баффа|r |T132786:0|t[Кристалл свирепости] |cRXP_WARN_(Увеличивает силу атаки на 10. Длится 30 мин.)|r << Warrior/Paladin/Shaman/Rogue
    .target Воздаятель Борос
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Маатпармом|r
    .target Маатпарм
    .accept 9649 >> Примите задание "Слезы Изеры"
step
    #completewith next
    .subzone 3598 >> Отправляйтесь на Остров Драконьей Скорби
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцем Торетом|r
    >>|cRXP_FRIENDLY_Принц Торет|r |cRXP_WARN_немного ходит вокруг|r
    .accept 9687 >> Примите задание "Восстановление святыни"
    .target Принц Торет
step
	#completewith next
	>>Соберите |cRXP_LOOT_Слезы Изеры|r на земле
    >>|cRXP_WARN_Они выглядят как маленькие зеленые грибы|r
    .complete 9649,1 --Собрано: Слеза Изеры (x2)
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцем Торетом|r
    .turnin 9672 >> Сдайте задание "Наследие Кровавого Проклятия"
    .accept 9674 >> Примите задание "Наги Кровавого Проклятия"
    .target Капитан Эдвард Хейнс
step
    #loop
    .goto Bloodmyst Isle,82.0,21.6,0
    .goto Bloodmyst Isle,81.0,16.2,0
    .goto Bloodmyst Isle,80.8,10.4,0
    .goto Bloodmyst Isle,82.0,21.6,70,0
    .goto Bloodmyst Isle,81.0,16.2,70,0
    .goto Bloodmyst Isle,80.8,10.4,70,0
	>>Убивайте |cRXP_ENEMY_Наг Кровавого Проклятия|r
    .complete 9674,1 --Убито: Нага Кровавого Проклятия (x10)
    .mob Нага Кровавого Проклятия
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцем Торетом|r
    .turnin 9674 >> Сдайте задание "Наги Кровавого Проклятия"
    .accept 9682 >> Примите задание "Безнадежные..."
    .target Капитан Эдвард Хейнс
step
    #loop
    .goto Bloodmyst Isle,83.21,21.40,0
    .goto Bloodmyst Isle,87.3,16.6,0
    .goto Bloodmyst Isle,83.90,12.18,0
    .goto Bloodmyst Isle,83.21,21.40,40,0
    .goto Bloodmyst Isle,87.3,16.6,40,0
    .goto Bloodmyst Isle,83.90,12.18,50,0
    >>Убивайте |cRXP_ENEMY_Странников Кровавого Проклятия|r. Собирайте с них |cRXP_LOOT_Души Кровавого Проклятия|r
    .complete 9682,1 --Собрано: Душа Кровавого Проклятия (x4)
    .mob Странник Кровавого Проклятия
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцем Торетом|r
    .turnin 9682 >> Сдайте задание "Безнадежные..."
    .accept 9683 >> Примите задание "Конец Кровавому Проклятию" << !Warrior
    .target Капитан Эдвард Хейнс
step << !Warrior
    .xp 16-3300 >> Гринд до тех пор, пока не останется 3300 опыта до 16 уровня (10300/13600)
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>Соберите |cRXP_LOOT_Слезы Изеры|r на земле
    >>|cRXP_WARN_Они выглядят как маленькие зеленые грибы|r
    .complete 9649,1 --Собрано: Слеза Изеры (x2)
step << !Warrior
    #completewith Atoph
    .subzone 3612 >> Плывите на юг к Острову Кровавого Проклятия
step << !Warrior
    #completewith Atoph
    .goto Bloodmyst Isle,83.58,55.21,20,0
    .goto Bloodmyst Isle,86.26,57.24,20,0
    .goto Bloodmyst Isle,86.90,52.70,20,0
    .goto Bloodmyst Isle,86.061,54.599
    .cast 8386,6477,6478 >> Нажмите на |cRXP_PICK_Статую королевы Азшары|r, чтобы призвать |cRXP_ENEMY_Атофа из рода Кровавого Проклятия|r
step << !Warrior
    #label Atoph
    .goto Bloodmyst Isle,85.59,53.42
    >>Убейте |cRXP_ENEMY_Атофа из рода Кровавого Проклятия|r
    >>|cRXP_ENEMY_Атоф из рода Кровавого Проклятия|r |cRXP_WARN_имеет 19 уровень. Будьте готовы использовать лечебное зелье или|r |T135923:0|t[Дар наару] |cRXP_WARN_при необходимости. Пропустите этот шаг, если не можете его убить|r
    .complete 9683,1 --Убито: Атоф из рода Кровавого Проклятия (x1)
    .mob Атоф из рода Кровавого Проклятия
step
	#completewith next
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Маатпармом|r
    .target Маатпарм
    .turnin 9649 >> Сдайте задание "Слезы Изеры"
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Проспектором Нахланом|r
    .accept 10063 >> Примите задание "Лига исследователей? Это для гномов?"
    .target Проспектор Нахлан
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Лаандо|r
    .accept 9604 >> Примите задание "На крыльях гиппогрифа"
    .target Лаандо
step
    #completewith WingsofHippogryph
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Лаандо|r
    .fly The Exodar>> Летите в Экзодар
    .target Лаандо
step
    #completewith WingsofHippogryph
    .goto The Exodar,73.682,53.701,15 >> Спуститесь в Экзодар
step
    #label WingsofHippogryph
	.goto The Exodar,57.011,50.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нургуни|r
    .turnin 9604 >> Сдайте задание "На крыльях гиппогрифа"
    .accept 9605 >> Примите задание "Укротитель гиппогрифов Стефанос"
    .target Нургуни
step << Warlock/Priest/Mage
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оссом|r
    >>|cRXP_BUY_Купите|r |T135468:0|t[Тлеющий жезл] |cRXP_BUY_у него или проверьте Аукцион на наличие|r |T135144:0|t[Большого магического жезла]
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5208,1 --Тлеющий жезл (1)
    .target Осс
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest/Mage
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оссом|r
    >>|cRXP_BUY_Купите|r |T135468:0|t[Тлеющий жезл] |cRXP_BUY_у него|r
    .goto The Exodar,46.386,61.499
    .collect 5208,1 --Тлеющий жезл (1)
    .target Осс
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.3173
step << Warlock/Priest/Mage
    #optional
    +|cRXP_WARN_Экипируйте|r |T135468:0|t[Тлеющий жезл]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest/Mage
    #optional
    +|cRXP_WARN_Не забудьте экипировать|r |T135468:0|t[Тлеющий жезл] |cRXP_WARN_позже, когда достигнете 15 уровня|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step
    .goto The Exodar,53.589,90.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Фирой|r
    .vendor >> |cRXP_BUY_Купите|r |T133024:0|t[Бронзовую трубу]
    >>|cRXP_WARN_Это предмет с ограниченным запасом. Пропустите этот шаг, если у нее его нет|r
    .bronzetube
    .target Фира
    .zoneskip The Exodar,1
step << Warrior/Shaman/Paladin
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Поднимитесь по рампе к |cRXP_FRIENDLY_Бехомату|r на верхнем этаже << Warrior
    .goto The Exodar,50.50,81.28,20 >> Поднимитесь по рампе к |cRXP_FRIENDLY_Хандииру|r на верхнем этаже << Shaman/Paladin
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бехоматом|r
    .turnin 10350 >> Сдайте задание "Бехомат"
    .trainer >> Изучите классовые навыки
    .target Бехомат
step << Warrior/Shaman/Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хандииру|r
    .train 199 >> Изучите Двуручные дробящие << Warrior/Shaman
    .train 202 >> Изучите Двуручные мечи << Paladin
    .target Хандиир
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Жрицей Кайлин Ил'динар|r
    .turnin 9600 >>Сдайте задание "Искупление"
	.trainer >> Изучите классовые навыки
    .target Йол
step << Warrior/Paladin
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Элломин|r
    >>|cRXP_BUY_Купите|r |T133046:0|t[Каменный молот] |cRXP_BUY_у нее или проверьте Аукцион на наличие оружия получше|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Каменный молот (1)
    .target Элломин
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Элломин|r
    >>|cRXP_BUY_Купите|r |T133046:0|t[Каменный молот] |cRXP_BUY_у нее|r
    .goto The Exodar,73.625,84.814
    .collect 2026,1 --Каменный молот (1)
    .target Элломин
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .money <0.5971
step << Warrior/Paladin
    #optional
    +|cRXP_WARN_Экипируйте|r |T133046:0|t[Каменный молот]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Пророком Веленом|r
    .target Пророк Велен
    .turnin 9461 >> Сдайте задание "Зов Огня" << Shaman
    .accept 9555 >> Примите задание "Зов Огня" << Shaman
    .turnin 9698 >> Сдайте задание "Аудиенция у Пророка"
    .accept 9699 >> Примите задание "Правда или вымысел"
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Идите к |cRXP_FRIENDLY_Дальневидящему Нобундо|r вверх по рампе
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дальневидящим Нобундо|r
    >>|cRXP_FRIENDLY_Дальневидящий Нобундо|r |cRXP_WARN_немного патрулирует|r
    .target Дальневидящий Нобундо
    .turnin 9555 >> Сдайте задание "Зов Огня"
	.trainer >> Изучите классовые навыки
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Выйдите из Экзодара
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стефаносом|r
    .target Стефанос
    .turnin 9605 >> Сдайте задание "Укротитель гиппогрифов Стефанос"
    .accept 9606 >> Примите задание "Возвращение к Тоферу Лоалу"
step
    .isOnQuest 9606,9699
	.hs >> Используйте камень возвращения, чтобы вернуться на Кровавую заставу
    >>|cRXP_BUY_Купите еду/воду, если нужно|r << !Warrior !Rogue
	>>|cRXP_BUY_Купите еду, если нужно|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
	.isOnQuest 9606,9699
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стефаносом|r
    .fly Blood Watch >> Летите на Кровавую заставу
    .target Стефанос
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сиделкой Тофер Лоал|r
    .turnin -9606 >> Сдайте задание "Возвращение к Тоферу Лоалу"
    .target Сиделка Тофер Лоал
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .turnin 9699 >> Сдайте задание "Правда или вымысел"
    .accept 9700 >> Примите задание "Я стреляю магией во тьму"
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .accept 9641 >> Примите задание "Облученные осколки кристалла"
	.turnin 9641 >> Сдайте задание "Облученные осколки кристалла"
	.itemcount 23984,10 -- Облученный осколок кристалла (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    +|cRXP_WARN_Не забудьте сдать|r |T134082:0|t[Облученные осколки кристалла] |cRXP_WARN_для получения баффа|r |T132775:0|t[Кристалл озарения] |cRXP_WARN_(Увеличивает интеллект на 5. Длится 30 мин.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Не забудьте сдать|r |T134082:0|t[Облученные осколки кристалла] |cRXP_WARN_для получения баффа|r |T132786:0|t[Кристалл свирепости] |cRXP_WARN_(Увеличивает силу атаки на 10. Длится 30 мин.)|r << Warrior/Paladin/Shaman/Rogue
    .target Воздаятель Борос
    .itemcount 23984,>9
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >> Отправляйтесь в Аксариен
    >>Убивайте |cRXP_ENEMY_Мутировавших удавов|r. Собирайте с них |cRXP_LOOT_Колючие лозы удава|r
    >>Убивайте |cRXP_ENEMY_Старых бурых медведей|r. Собирайте с них |cRXP_LOOT_Бок старого бурого медведя|r
    >>|cRXP_WARN_Убивайте всех, кого встретите по пути в Аксариен|r
    .complete 9643,1 --Собрано: Колючая лоза удава (x6)
    .mob +Мутировавший удав
    .disablecheckbox
	.complete 9580,1 --Бок старого бурого медведя (8)
    .mob +Старый бурый медведь
    .disablecheckbox
step
    #completewith CrystalSample
    >>Собирайте |cRXP_LOOT_Оскверненные кристаллы|r на земле
    .complete 9569,4 --Собрано: Оскверненный кристалл (x5)
step
    #completewith CrystalSample
    >>Убейте |cRXP_ENEMY_Зевракса|r, |cRXP_ENEMY_Темных ловцов из Аксариена|r и |cRXP_ENEMY_Адских призывателей из Аксариена|r
    .complete 9569,1 --Убито: Зевракс (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Зевракс
    .complete 9569,2 --Убито: Темный ловец из Аксариена (x5)
    .mob +Темный ловец из Аксариена
    .complete 9569,3 --Убито: Адский призыватель из Аксариена (x5)
    .mob +Адский призыватель из Аксариена
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>|cRXP_WARN_Используйте|r |T134709:0|t[Кристальная шахтерская кирка] |cRXP_WARN_на|r |cRXP_PICK_Кристалле Аксариена|r
    .complete 9585,1 --Собрано: Образец кристалла из Аксариена (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Собирайте |cRXP_LOOT_Оскверненные кристаллы|r на земле
    .complete 9569,4 --Собрано: Оскверненный кристалл (x5)
step
    >>Убейте |cRXP_ENEMY_Зевракса|r, |cRXP_ENEMY_Темных ловцов из Аксариена|r и |cRXP_ENEMY_Адских призывателей из Аксариена|r
    .complete 9569,1 --Убито: Зевракс (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Зевракс
    .complete 9569,2 --Убито: Темный ловец из Аксариена (x5)
    .mob +Темный ловец из Аксариена
    .disablecheckbox
    .complete 9569,3 --Убито: Адский призыватель из Аксариена (x5)
    .mob +Адский призыватель из Аксариена
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Убивайте |cRXP_ENEMY_Темных ловцов из Аксариена|r и |cRXP_ENEMY_Адских призывателей из Аксариена|r
    .complete 9569,2 --Убито: Темный ловец из Аксариена (x5)
    .mob +Темный ловец из Аксариена
    .complete 9569,3 --Убито: Адский призыватель из Аксариена (x5)
    .mob +Адский призыватель из Аксариена
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Собирайте |cRXP_LOOT_Оскверненные кристаллы|r на земле
    .complete 9569,4 --Собрано: Оскверненный кристалл (x5)
step
    #completewith VoidAnomaly
    >>Убивайте |cRXP_ENEMY_Мутировавших удавов|r. Собирайте с них |cRXP_LOOT_Колючие лозы удава|r
    >>Убивайте |cRXP_ENEMY_Старых бурых медведей|r. Собирайте с них |cRXP_LOOT_Бок старого бурого медведя|r
    .complete 9643,1 --Собрано: Колючая лоза удава (x6)
    .mob +Мутировавший удав
	.complete 9580,1 --Бок старого бурого медведя (8)
    .mob +Старый бурый медведь
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Убейте |cRXP_ENEMY_Когтя Смерти|r. Заберите у него |cRXP_LOOT_Лапу Когтя Смерти|r
    .complete 9646,1 --Собрано: Лапа Когтя Смерти (x1)
    .mob Коготь Смерти
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Клоппером Визбангом|r
    .turnin 10063 >> Сдайте задание "Лига исследователей? Это для гномов?"
    .accept 9548 >> Примите задание "Украденное снаряжение"
    .accept 9549 >> Примите задание "Артефакты племени Черного Ила"
    .target Клоппер Визбанг
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Клоппером Визбангом|r
    .vendor >> |cRXP_BUY_Купите|r |T133024:0|t[Бронзовую трубу]
    >>|cRXP_WARN_Это предмет с ограниченным запасом. Пропустите этот шаг, если у него его нет|r
    .bronzetube
    .target Клоппер Визбанг
    .subzoneskip 3906,1
step
    #completewith next
	>>Убивайте |cRXP_ENEMY_Провидцев из племени Черного Ила|r. Собирайте с них |cRXP_LOOT_Грубых идолов мурлоков|r
    >>Убивайте |cRXP_ENEMY_Воинов из племени Черного Ила|r и |cRXP_ENEMY_Береговых охотников из племени Черного Ила|r. Собирайте с них |cRXP_LOOT_Грубые ножи мурлоков|r
    .complete 9549,1 --Собрано: Грубый идол мурлока (x3)
    .mob +Провидец из племени Черного Ила
    .complete 9549,2 --Собрано: Грубый нож мурлока (x6)
    .mob +Воин из племени Черного Ила
    .mob +Береговой охотник из племени Черного Ила
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>Соберите |cRXP_LOOT_Снаряжение Клоппера|r на земле
    >>|cRXP_WARN_Оно может появиться в любом лагере мурлоков|r
    .complete 9548,1 --Собрано: Снаряжение Клоппера (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>Убивайте |cRXP_ENEMY_Провидцев из племени Черного Ила|r. Собирайте с них |cRXP_LOOT_Грубых идолов мурлоков|r
    >>Убивайте |cRXP_ENEMY_Воинов из племени Черного Ила|r и |cRXP_ENEMY_Береговых охотников из племени Черного Ила|r. Собирайте с них |cRXP_LOOT_Грубые ножи мурлоков|r
    .complete 9549,1 --Собрано: Грубый идол мурлока (x3)
    .mob +Провидец из племени Черного Ила
    .complete 9549,2 --Собрано: Грубый нож мурлока (x6)
    .mob +Воин из племени Черного Ила
    .mob +Береговой охотник из племени Черного Ила
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Клоппером Визбангом|r
    .turnin 9548 >> Сдайте задание "Украденное снаряжение"
    .turnin 9549 >> Сдайте задание "Артефакты племени Черного Ила"
    .target Клоппер Визбанг
step
    .use 23837 >>|cRXP_WARN_Используйте|r |T134269:0|t[Потрепанная карта сокровищ] |cRXP_WARN_чтобы начать задание|r
    .accept 9550 >> Примите задание "Карта... но чего?"
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Убивайте |cRXP_ENEMY_Аномалии Пустоты|r и исследуйте место Солнечного портала
    .complete 9700,2 --Убито: Аномалия Пустоты (x5)
    .mob +Аномалия Пустоты
    .complete 9700,1 --Исследовать Солнечный портал (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>Убивайте |cRXP_ENEMY_Мутировавших удавов|r. Собирайте с них |cRXP_LOOT_Колючие лозы удава|r
    >>Убивайте |cRXP_ENEMY_Старых бурых медведей|r. Собирайте с них |cRXP_LOOT_Бок старого бурого медведя|r
    >>|cRXP_WARN_Приоритет |cRXP_ENEMY_Мутировавшие удавы|r, так как у вас будет время позже, чтобы закончить |cRXP_ENEMY_Старых бурых медведей|r|r
    .complete 9643,1 --Собрано: Колючая лоза удава (x6)
    .mob +Мутировавший удав
	.complete 9580,1 --Бок старого бурого медведя (8)
    .mob +Старый бурый медведь
    .disablecheckbox
step
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>Соберите |cRXP_LOOT_Кости дракона|r на земле
    >>|cRXP_WARN_Их может быть трудно увидеть, и они обычно находятся вокруг небольших лагерей|r
    .complete 9687,1 --Собрано: Кость дракона (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Нажмите на |cRXP_PICK_Потрепанную древнюю книгу|r на земле
    .turnin 9550 >> Сдайте задание "Карта... но чего?"
    .accept 9557 >> Примите задание "Расшифровка книги"
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Анахоретом Паетеем|r
    .turnin 9557 >> Сдайте задание "Расшифровка книги"
    .target Анахорет Паетей
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Предвестником Миколаасом|r
    .turnin 9585 >> Сдайте задание "Последний образец"
    .accept 10064 >> Примите задание "Поговори с Рукой"
    .turnin 9646 >> Сдайте задание "РАЗЫСКИВАЕТСЯ: Коготь Смерти"
    .target Предвестник Миколаас
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Анахоретом Паетеем|r
    .accept 9561 >> Примите задание "Слова Нолкая"
    .accept 9632 >> Примите задание "Новые союзники"
    .target Анахорет Паетей
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    .target Воздаятель Борос
    .turnin 9700 >> Сдайте задание "Я стреляю магией во тьму"
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Боросом|r
    +|cRXP_WARN_Не забудьте сдать|r |T134082:0|t[Облученные осколки кристалла] |cRXP_WARN_для получения баффа|r |T132775:0|t[Кристалл озарения] |cRXP_WARN_(Увеличивает интеллект на 5. Длится 30 мин.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Не забудьте сдать|r |T134082:0|t[Облученные осколки кристалла] |cRXP_WARN_для получения баффа|r |T132786:0|t[Кристалл свирепости] |cRXP_WARN_(Увеличивает силу атаки на 10. Длится 30 мин.)|r << Warrior/Paladin/Shaman/Rogue
    .target Воздаятель Борос
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Куросом|r
    .accept 9703 >> Примите задание "Крио-ядро"
    .target Воздаятель Курос
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .turnin 9580 >> Сдайте задание "Медвежья услуга"
    .turnin 9643 >> Сдайте задание "Лозы душителя"
    .accept 9647 >> Примите задание "Истребление летунов"
    .target Следопыт Ликеон
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .turnin 9643 >> Сдайте задание "Лозы душителя"
    .accept 9647 >> Примите задание "Истребление летунов"
    .target Следопыт Ликеон
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Аалесией|r
    .turnin 9569 >> Сдайте задание "Сдерживание угрозы"
    .target Воздаятель Аалесия
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Морой|r
    .accept 9578 >> Примите задание "В поисках Галаена"
    .target Мора
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акелусом|r
    .accept 9669 >> Примите задание "Пропавшая экспедиция"
    .target Акелус
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Убивайте |cRXP_ENEMY_Королевских синих летунов|r
    >>Убивайте |cRXP_ENEMY_Старых бурых медведей|r. Собирайте с них |cRXP_LOOT_Бок старого бурого медведя|r
    >>|cRXP_WARN_Следите за ними, пока направляетесь к Крио-ядру|r
    .complete 9647,1 --Убито: Королевский синий летун (x10)
    .mob +Королевский синий летун
	.complete 9580,1 --Бок старого бурого медведя (8)
    .mob +Старый бурый медведь
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Убивайте |cRXP_ENEMY_Королевских синих летунов|r
    >>|cRXP_WARN_Следите за ними, пока направляетесь к Крио-ядру|r
    .complete 9647,1 --Убито: Королевский синий летун (x10)
    .mob Королевский синий летун
step
    #completewith GCorpse
    .subzone 3588 >> Отправляйтесь в Крио-ядро
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Нажмите на |cRXP_FRIENDLY_Труп Галаена|r
    >>|cRXP_WARN_Старайтесь не убивать много |cRXP_ENEMY_Сборщиков из клана Ярости Солнца|r, пока добираетесь до|r |cRXP_FRIENDLY_Трупа Галаена|r
    .turnin 9578 >> Сдайте задание "В поисках Галаена"
    .accept 9579 >> Примите задание "Судьба Галаена"
    .accept 9706 >> Примите задание "Дневник Галаена - Судьба воздаятеля Саруана"
    .target Труп Галаена
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Убивайте |cRXP_ENEMY_Сборщиков из клана Ярости Солнца|r. Собирайте с них |cRXP_LOOT_Амулет Галаена|r и их |cRXP_LOOT_Медицинские принадлежности|r
    >>Вы также можете собирать |cRXP_LOOT_Медицинские принадлежности|r на земле
	>>|cRXP_WARN_Используйте колонны и строения, чтобы избежать их|r |T135812:0|t[Огненный шар] |cRXP_WARN_применений, если необходимо|r
    .complete 9579,1 --Собрано: Амулет Галаена (x1)
    .complete 9703,1 --Собрано: Медицинские принадлежности (x12)
    .mob Сборщик из клана Ярости Солнца
step
	.xp 17+12800 >> Гринд до тех пор, пока не наберете 12800 опыта на 17 уровне (12800+/16400)
step
	.isOnQuest 9580
	#completewith GFate
	>>Убивайте |cRXP_ENEMY_Королевских синих летунов|r
    >>Убивайте |cRXP_ENEMY_Старых бурых медведей|r. Собирайте с них |cRXP_LOOT_Бок старого бурого медведя|r
    >>|cRXP_WARN_Следите за ними, пока направляетесь к Кровавой заставе|r
    .complete 9647,1 --Убито: Королевский синий летун (x10)
    .mob +Королевский синий летун
	.complete 9580,1 --Бок старого бурого медведя (8)
    .mob +Старый бурый медведь
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Убивайте |cRXP_ENEMY_Королевских синих летунов|r
    >>|cRXP_WARN_Следите за ними, пока направляетесь к Кровавой заставе|r
    .complete 9647,1 --Убито: Королевский синий летун (x10)
    .mob Королевский синий летун
step
    #completewith GFate
    .subzone 3584 >> Отправляйтесь на Кровавую заставу
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Морой|r
    .turnin 9579 >> Сдайте задание "Судьба Галаена"
    .target Мора
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Куросом|r
    .turnin 9703 >> Сдайте задание "Крио-ядро"
    .turnin 9706 >> Сдайте задание "Дневник Галаена - Судьба воздаятеля Саруана"
    .accept 9711 >> Примите задание "Матис Жестокий"
    .target Воздаятель Курос
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Эсомом|r
    .accept 9748 >> Примите задание "Не пейте воду"
    .accept 9753 >> Примите задание "Что нам известно..."
    .target Воздаятель Эсом
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Эсомом|r
    .trainer >> Изучите классовые навыки
    .target Воздаятель Эсом
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .turnin 9580 >> Сдайте задание "Медвежья услуга"
    .turnin 9647 >> Сдайте задание "Истребление летунов"
    .target Следопыт Ликеон
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .turnin 9580 >> Сдайте задание "Медвежья услуга"
    .target Следопыт Ликеон
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .turnin 9647 >> Сдайте задание "Истребление летунов"
    .target Следопыт Ликеон
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Адметиусом|r
    .turnin 9753 >> Сдайте задание "Что нам известно..."
    .accept 9756 >> Примите задание "Чего мы не знаем..."
    .target Экзарх Адметиус
step
    .goto Bloodmyst Isle,54.312,54.215
    >>Поговорите с |cRXP_ENEMY_Пленным агентом Ярости Солнца|r внутри |cRXP_PICK_Импровизированной тюрьмы|r
    .complete 9756,1 -- Информация Ярости Солнца восстановлена 1/1
    .skipgossip
    .target Пленный агент Ярости Солнца
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Экзархом Адметиусом|r
    .turnin 9756 >> Сдайте задание "Чего мы не знаем..."
    .accept 9760 >> Примите задание "Покой Воздаятеля"
    .target Экзарх Адметиус
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Убивайте |cRXP_ENEMY_Королевских синих летунов|r
    >>|cRXP_WARN_Следите за ними, выполняя другие задачи|r
    .complete 9647,1 --Убито: Королевский синий летун (x10)
    .mob Королевский синий летун
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Убивайте |cRXP_ENEMY_Старых бурых медведей|r. Собирайте с них |cRXP_LOOT_Бок старого бурого медведя|r
    >>|cRXP_WARN_Следите за ними, выполняя другие задачи|r
	.complete 9580,1 --Бок старого бурого медведя (8)
    .mob Старый бурый медведь
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Разведчиком Йорли|r и |cRXP_FRIENDLY_Разведчиком Лории|r
    .turnin 10064 >> Сдайте задание "Поговори с Рукой"
    .accept 10065 >> Примите задание "Прорубая путь"
    .target +Разведчик Йорли
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >> Примите задание "Существа Пустоты"
    .target +Разведчик Лории
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Корином|r
    .turnin 9760 >> Сдайте задание "Покой Воздаятеля"
    .accept 10066 >> Примите задание "Ох уж эти паутины"
    .accept 10067 >> Примите задание "Загрязненные водные духи"
    .target Воздаятель Корин
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>|cRXP_WARN_Используйте|r |T134536:0|t[Сигнальный пистолет] |cRXP_WARN_на|r |cRXP_ENEMY_Матисе Жестоком|r
    >>|cRXP_WARN_Это призовет |cRXP_FRIENDLY_Следопыта Длани|r, который захватит его, когда его здоровье достигнет 50%. Старайтесь не переагривать, так как |cRXP_ENEMY_Матис Жестокий|r бьет очень сильно|r
    >>|cRXP_ENEMY_Матис Жестокий|r |cRXP_WARN_патрулирует большой участок дороги. Его путь отмечен на вашей карте|r
    .complete 9711,1 --Матис Жестокий захвачен
	.unitscan Матис Жестокий
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Убивайте |cRXP_ENEMY_Существ Пустоты|r
    >>|cRXP_WARN_Вы должны убивать |cRXP_ENEMY_Аномалии Пустоты|r, чтобы появились |cRXP_ENEMY_Существа Пустоты|r|r
    .complete 9741,1 --Убито: Существо Пустоты (x12)
    .mob Существо Пустоты
    .mob Аномалия Пустоты
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Убивайте |cRXP_ENEMY_Королевских синих летунов|r
    >>|cRXP_WARN_Следите за ними, выполняя другие задачи|r
    .complete 9647,1 --Убито: Королевский синий летун (x10)
    .mob Королевский синий летун
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Убивайте |cRXP_ENEMY_Старых бурых медведей|r. Собирайте с них |cRXP_LOOT_Бок старого бурого медведя|r
    >>|cRXP_WARN_Следите за ними, выполняя другие задачи|r
	.complete 9580,1 --Бок старого бурого медведя (8)
    .mob Старый бурый медведь
step
    #completewith next
	>>Убивайте |cRXP_ENEMY_Мутировавших оплетателей|r
    .complete 10066,1 --Убито: Мутировавший оплетатель (x8)
    .mob +Мутировавший оплетатель
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>Убивайте |cRXP_ENEMY_Разъяренных опустошителей|r
    .complete 10065,1 --Убито: Разъяренный опустошитель (x10)
    .mob +Разъяренный опустошитель
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>Убивайте |cRXP_ENEMY_Мутировавших оплетателей|r
    .complete 10066,1 --Убито: Мутировавший оплетатель (x8)
    .mob +Мутировавший оплетатель
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Убивайте |cRXP_ENEMY_Королевских синих летунов|r
    .complete 9647,1 --Убито: Королевский синий летун (x10)
    .mob Королевский синий летун
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>Убивайте |cRXP_ENEMY_Старых бурых медведей|r. Собирайте с них |cRXP_LOOT_Бок старого бурого медведя|r
	.complete 9580,1 --Бок старого бурого медведя (8)
    .mob Старый бурый медведь
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>Убивайте |cRXP_ENEMY_Королевских синих летунов|r
    .complete 9647,1 --Убито: Королевский синий летун (x10)
    .mob Королевский синий летун
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Корином|r
    .turnin 10066 >> Сдайте задание "Ох уж эти паутины"
    .target Воздаятель Корин
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Разведчиком Йорли|r
    .turnin 10065 >> Сдайте задание "Прорубая путь"
    .target +Разведчик Лории
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Убивайте |cRXP_ENEMY_Загрязненных водных духов|r
    .complete 10067,1 --Убито: Загрязненный водный дух (x6)
    .mob Загрязненный водный дух
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Корином|r
    .turnin 10067 >> Сдайте задание "Загрязненные водные духи"
    .target Воздаятель Корин
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Исследователем Корнелиусом|r
    .accept 9670 >> Примите задание "Они живы! Наверное..."
    .target Исследователь Корнелиус
step
	#completewith next
	>>Убивайте |cRXP_ENEMY_Опутанных паутиной существ|r
    >>|cRXP_WARN_Атакуйте |cRXP_ENEMY_Опутанных паутиной существ|r с расстояния, если возможно; если выскочит враждебный моб, он не сагрится на вас сразу|r
    .complete 9670,1 --Спасенные исследователи экспедиции (5)
    .mob Опутанное паутиной существо
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Убейте |cRXP_ENEMY_Туманных кровопийц|r, |cRXP_ENEMY_Туманных прядильщиков|r и |cRXP_ENEMY_Заракха|r на вершине Перевала Янтарной Паутины
    .complete 9669,1 --Убито: Туманная кровопийца (x8)
    .mob +Туманная кровопийца
    .complete 9669,2 --Убито: Туманный прядильщик (x8)
    .mob +Туманный прядильщик
    .complete 9669,3 --Убито: Заракх (x1)
    .mob +Заракх
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Убивайте |cRXP_ENEMY_Опутанных паутиной существ|r
    >>|cRXP_WARN_Атакуйте |cRXP_ENEMY_Опутанных паутиной существ|r с расстояния, если возможно; если выскочит враждебный моб, он не сагрится на вас сразу|r
    .complete 9670,1 --Спасенные исследователи экспедиции (5)
    .mob Опутанное паутиной существо
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Исследователем Корнелиусом|r
    .turnin 9670 >> Сдайте задание "Они живы! Наверное..."
    .target Исследователь Корнелиус
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>|cRXP_WARN_Используйте|r |T134870:0|t[Флягу для пробы воды] |cRXP_WARN_у подножия водопада|r
    .complete 9748,1 --Собрано: Проба воды Кровавой Дымки (x1)
step
    .isOnQuest 9748,9669,9741,9711
    .hs >> Используйте камень возвращения, чтобы вернуться на Кровавую заставу
    >>|cRXP_BUY_Купите еду/воду, если нужно|r << !Warrior !Rogue
	>>|cRXP_BUY_Купите еду, если нужно|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акелусом|r
    .turnin 9669 >> Сдайте задание "Пропавшая экспедиция"
    .target Акелус
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Эсомом|r
    .turnin 9741 >> Сдайте задание "Существа Пустоты"
    .turnin 9748 >> Сдайте задание "Не пейте воду"
    .accept 9746 >> Примите задание "Предел физической выносливости" << Hunter/Shaman/Mage
    .target Воздаятель Эсом
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Куросом|r
    .turnin 9711 >> Сдайте задание "Матис Жестокий"
    .target Воздаятель Курос
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .turnin 9580 >> Сдайте задание "Медвежья услуга"
    .turnin 9647 >> Сдайте задание "Истребление летунов"
    .target Следопыт Ликеон
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .turnin 9580 >> Сдайте задание "Медвежья услуга"
    .target Следопыт Ликеон
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Следопытом Ликеоном|r
    .turnin 9647 >> Сдайте задание "Истребление летунов"
    .target Следопыт Ликеон
step << Hunter/Mage
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>Убивайте |cRXP_ENEMY_Пиромантов из клана Ярости Солнца|r и |cRXP_ENEMY_Защитников из клана Ярости Солнца|r
    .complete 9746,1 --Убито: Пиромант из клана Ярости Солнца (x10)
    .mob +Пиромант из клана Ярости Солнца
    .complete 9746,2 --Убито: Защитник из клана Ярости Солнца (x10)
    .mob +Защитник из клана Ярости Солнца
step << Hunter/Mage
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Эсомом|r
    .turnin 9746 >> Сдайте задание "Предел физической выносливости"
    .target Воздаятель Эсом
step
    #completewith next
    .subzone 3591 >> Отправляйтесь в Руины Лорет'Аран
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Нажмите на |cRXP_PICK_Холмик грязи|r на земле
    .turnin 9561 >> Сдайте задание "Слова Нолкая"
step
    #completewith next
    .subzone 3598 >> Отправляйтесь на Остров Драконьей Скорби
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцем Торетом|r
    >>|cRXP_FRIENDLY_Принц Торет|r |cRXP_WARN_немного ходит вокруг|r
    .turnin 9687 >> Сдайте задание "Восстановление святыни"
    .accept 9688 >> Примите задание "Вход в Сон"
    .target Принц Торет
step
	#completewith next
    >>Убивайте |cRXP_ENEMY_Зеленоватых дракончиков|r и |cRXP_ENEMY_Зеленоватых драконидов|r
    .complete 9688,1 --Убито: Зеленоватый дракончик (x5)
    .mob +Зеленоватый дракончик
    .complete 9688,2 --Убито: Зеленоватый драконид (x5)
    .mob +Зеленоватый драконид
step
    #optional
    .isQuestComplete 9683
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцем Торетом|r
    .turnin 9683 >> Сдайте задание "Конец Кровавому Проклятию"
    .target Капитан Эдвард Хейнс
step
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>Убивайте |cRXP_ENEMY_Зеленоватых дракончиков|r и |cRXP_ENEMY_Зеленоватых драконидов|r
    .complete 9688,1 --Убито: Зеленоватый дракончик (x5)
    .mob +Зеленоватый дракончик
    .complete 9688,2 --Убито: Зеленоватый драконид (x5)
    .mob +Зеленоватый драконид
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцем Торетом|r
    >>|cRXP_FRIENDLY_Принц Торет|r |cRXP_WARN_немного ходит вокруг|r
    .turnin 9688 >> Сдайте задание "Вход в Сон"
    .accept 9689 >> Примите задание "Бритвосмерт"
    .target Принц Торет
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Нажмите на |cRXP_PICK_Вечнопылающий костер|r на вершине горы, чтобы призвать |cRXP_ENEMY_Бритвосмерта|r
    .timer 36,Бритвосмерт RP
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Убейте |cRXP_ENEMY_Бритвосмерта|r
    >>|cRXP_ENEMY_Бритвосмерт|r |cRXP_WARN_это элита 20 уровня. Ему требуется около 35 секунд, чтобы приземлиться|r
    >>|cRXP_WARN_Это задание ОЧЕНЬ сложное. Найдите группу, если необходимо. Пропустите этот шаг, если не можете найти группу или убить его в одиночку|r
    >>|cRXP_WARN_Не забудьте применить|r |T135923:0|t[Дар наару] |cRXP_WARN_на себя, если потребуется|r << Draenei
    .complete 9689,1 --Убито: Бритвосмерт (x1)
    .mob Бритвосмерт
step
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Принцем Торетом|r
    >>|cRXP_FRIENDLY_Принц Торет|r |cRXP_WARN_немного ходит вокруг|r
    .turnin 9689 >> Сдайте задание "Бритвосмерт"
    .target Принц Торет
step
    #optional
	.abandon 9711 >> Отмените задание "Матис Жестокий", если вы его не выполнили
step
    #optional
	.abandon 9689 >> Отмените задание "Бритвосмерт", если вы его не выполнили
step << Hunter/Shaman/Mage
    .xp 20 >> Гринд до 20 уровня
step
	#completewith FlyExo
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step << Paladin
    #completewith FlyExo
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Эсомом|r
    .trainer >> Изучите классовые навыки
    .target Воздаятель Эсом
step
    #label FlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Лаандо|r
    .fly The Exodar>> Летите в Экзодар
    .target Лаандо
    .zoneskip Bloodmyst Isle,1
step << Shaman/Hunter/Priest/Mage/Warrior
    #completewith NewfoundAllies
    .goto The Exodar,73.682,53.701,15 >> Спуститесь в Экзодар
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сулаа|r
    .accept 9502 >> Примите задание "Зов Воды"
    .trainer >> Изучите классовые навыки
    .target Сулаа
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Идите к |cRXP_FRIENDLY_Дальневидящему Нобундо|r вверх по рампе
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дальневидящим Нобундо|r
    >>|cRXP_FRIENDLY_Дальневидящий Нобундо|r |cRXP_WARN_немного патрулирует|r
    .turnin 9502 >> Сдайте задание "Зов Воды"
    .accept 9501 >> Примите задание "Зов Воды"
    .target Дальневидящий Нобундо
step << Shaman
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Выйдите из Экзодара
step << Shaman
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стефаносом|r
    .fly Blood Watch >> Летите на Кровавую заставу
    .target Стефанос
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >> Отправляйтесь к Скрытому рифу
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Аквусом|r под водой
    .turnin 9501 >> Сдайте задание "Зов Воды"
    .accept 9503 >> Примите задание "Зов Воды"
    .target Аквус
step << Shaman
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>Убивайте |cRXP_ENEMY_Пиромантов из клана Ярости Солнца|r и |cRXP_ENEMY_Защитников из клана Ярости Солнца|r
    .complete 9746,1 --Убито: Пиромант из клана Ярости Солнца (x10)
    .mob +Пиромант из клана Ярости Солнца
    .complete 9746,2 --Убито: Защитник из клана Ярости Солнца (x10)
    .mob +Защитник из клана Ярости Солнца
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Убивайте |cRXP_ENEMY_Загрязненных водных духов|r. Собирайте с них |cRXP_LOOT_Грязные эссенции|r
    .complete 9503,1 --Собрано: Грязная эссенция (x6)
    .mob Загрязненный водный дух
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Аквусом|r под водой
    .turnin 9503 >> Сдайте задание "Зов Воды"
    .accept 9504 >> Примите задание "Зов Воды"
    .target Аквус
step << Shaman
	#completewith ShamFlyExo
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step << Shaman
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Эсомом|r
    .turnin 9746 >> Сдайте задание "Предел физической выносливости"
    .target Воздаятель Эсом
step << Shaman
    #label ShamFlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Лаандо|r
    .fly The Exodar>> Летите в Экзодар
    .target Лаандо
    .zoneskip Bloodmyst Isle,1
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вордом|r
	.trainer >> Изучите классовые навыки
    .target Ворд
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ганааром|r
	.trainer >> Изучите навыки питомца
    .target Ганаар
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оссом|r
    >>|cRXP_BUY_Купите|r |T135139:0|t[Пылающий жезл] |cRXP_BUY_у него или проверьте Аукцион на наличие лучшего|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Пылающий жезл (1)
    .target Осс
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оссом|r
    >>|cRXP_BUY_Купите|r |T135139:0|t[Пылающий жезл] |cRXP_BUY_у него|r
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Пылающий жезл (1)
    .target Осс
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +|cRXP_WARN_Экипируйте|r |T135139:0|t[Пылающий жезл]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Измиром|r
    .trainer >> Изучите классовые навыки
    .target Измир
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Эдирой|r
    .trainer >> Изучите классовые навыки
    .target Эдира
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Лунарой|r
    .train 32271 >> Изучите |T135756:0|t[Телепортация: Экзодар]
    .target Лунара
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Мусал|r
    >>|cRXP_BUY_Купите хотя бы одну|r |T134419:0|t[Руну телепортации] |cRXP_BUY_у нее|r
    .collect 17031,1 --Руна телепортации (1)
    .target Мусал
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Поднимитесь по рампе к |cRXP_FRIENDLY_Бехомату|r на верхнем этаже
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бехоматом|r
    .trainer >> Изучите классовые навыки
    .target Бехомат
step
    #label NewfoundAllies
	.goto The Exodar,33.8,73.7,15,0 << !Shaman
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Охотницей Келлой Ночной Лук|r
    >>|cRXP_FRIENDLY_Охотница Келла Ночной Лук|r |cRXP_WARN_находится снаружи заднего входа в Экзодар|r
    .turnin 9632 >> Сдайте задание "Новые союзники"
    .accept 9633 >> Примите задание "Дорога в Аубердин"
    .target Охотница Келла Ночной Лук
step
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Сядьте на корабль до Темных берегов

--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шосси|r внизу
    .home >> Установите камень возвращения в Аубердине
    .target Трактирщик Шосси
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >> Отправляйтесь на причал корабля до Гавани Менетилов
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Теперь вы начнете путешествие в Мертвые копи|r
    .zone Wetlands >> Сядьте на корабль до Гавани Менетилов
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Браком Дурнадом|r внутри
    .vendor 1441 >>|cRXP_BUY_Купите|r |T135329:0|t[Меч палача] |cRXP_BUY_у него (если он есть и вы можете себе это позволить)|r
    >>|cRXP_WARN_В качестве альтернативы, вы можете проверить Аукцион позже на наличие чего-то лучшего или дешевле|r
    .collect 4818,1 --Соберите Меч палача (1)
    .target Брак Дурнад
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Браком Дурнадом|r внутри
    .vendor 1441 >>|cRXP_BUY_Купите|r |T135329:0|t[Меч палача] |cRXP_BUY_у него (если он есть и вы можете себе это позволить)|r
    .collect 4818,1 --Соберите Меч палача (1)
    .target Брак Дурнад
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .money <1.3559
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Экипируйте|r |T135329:0|t[Меч палача]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шелли Брондир|r
    .fp Menethil Harbor >> Откройте полеты в Гавани Менетилов
    .target Шелли Брондир
step
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Спрыгните с конца причала и плывите к точке
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Используйте функцию самообслуживания "Застревание персонажа", чтобы переместиться в Стальгорн. Вам нужно будет выйти из игры в этом месте, затем перейти в меню помощи на другом персонаже (или вставьте ссылку unstuck ниже в свой браузер), затем прокрутите вниз до самообслуживания. Нажмите на своего персонажа и переместите его. Если вы не можете использовать unstuck, пропустите этот шаг и плывите вдоль гор в Западный Край
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> |cRXP_WARN_Нажмите здесь для просмотра видео|r
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_Нажмите здесь для ссылки на unstuck для серверов US|r
    .link https://eu.battle.net/support/en/article/32275 >> |cRXP_WARN_Нажмите здесь для ссылки на unstuck для серверов EU|r
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Милстаффом Грозовым Глазом|r
    .train 3562 >> Изучите |T135757:0|t[Телепортация: Стальгорн]
    .target Милстафф Грозовой Глаз
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Если unstuck на сайте недоступен, плывите в Западный Край
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Бегите по берегу и доберитесь до Сторожевого холма
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тором|r
    .fp Sentinel Hill >> Откройте полеты на Сторожевом холме
    .target Тор
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гритом Турденом|r
    .fp Ironforge >> Откройте полеты в Стальгорне
    .target Грит Турден
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Войдите в Подземный поезд
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Бегите в Штормград
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >> Сядьте на Подземный поезд до Штормграда
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шони Молчуньей|r
    .accept 2040 >> Примите задание "Подземная атака"
    .target Шони Молчунья
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Уайлдером Остротерном|r
    .accept 167 >> Примите задание "Братская любовь"
    .accept 168 >> Примите задание "Собирая воспоминания"
    .target Уайлдер Остротерн
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Аргосом Ночным Шепотом|r
    .accept 3765 >> Примите задание "Порча повсюду"
    .target Аргос Ночной Шепот
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_У Пином|r
    .train 201 >> Изучите Одноручные мечи << Mage/Rogue/Warlock
    .train 1180 >> Изучите Кинжалы << Mage/Druid/Priest
    .train 202 >> Изучите Двуручные мечи << Warrior/Paladin/Hunter
    .target У Пин
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ларимейном|r
    .train 3561 >> Изучите |T135763:0|t[Телепортация: Штормград]
	.xp <20,1
    .target Ларимейн Пердью
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дунгаром Длиннопывом|r
    .fp Stormwind >> Откройте полеты в Штормграде << !Human
    .fly Westfall >> Летите в Западный Край, если вы только что прибыли оттуда, иначе бегите туда
    .disablecheckbox
    .target Дунгар Длиннопыв
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Отправляйтесь в Западный Край
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тором|r
    .fp Sentinel Hill >> Откройте полеты на Сторожевом холме
    .target Тор
step
.dungeon DM
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Гринд |cRXP_ENEMY_Гноллов|r к югу от Сторожевого холма, пока собираете группу в Мертвые копи|r
    .subzone 20 >>Когда группа будет собрана, отправляйтесь в Луноречье
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Войдите в Укрытие Братства Справедливости со своей группой
step
.dungeon DM
    #completewith EnterDM
    >>Убивайте |cRXP_ENEMY_Членов Братства Справедливости|r. Собирайте с них |cRXP_LOOT_Красные шелковые банданы|r
    >>|cRXP_WARN_Вы также можете выполнить это внутри Мертвых копей|r
    .complete 214,1 -- Красная шелковая бандана (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Убивайте |cRXP_ENEMY_Скелетов-шахтеров|r, |cRXP_ENEMY_Мертвых динамитчиков|r и |cRXP_ENEMY_Мертвых землекопов|r. Собирайте с них |cRXP_LOOT_Карточки|r
    >>|cRXP_WARN_Это выполняется СНАРУЖИ Подземелья|r
    .complete 168,1 -- Карточка Союза шахтеров (4)
    .mob Скелет-шахтер
    .mob Мертвый динамитчик
    .mob Мертвый землекоп
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Убейте |cRXP_ENEMY_Штейгера Остротерна|r. Заберите у него |cRXP_LOOT_Значок|r
    >>|cRXP_WARN_Это выполняется СНАРУЖИ Подземелья|r
    .complete 167,1 -- Значок Остротерна (1)
    .unitscan Штейгер Остротерн
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Убивайте |cRXP_ENEMY_Скелетов-шахтеров|r, |cRXP_ENEMY_Мертвых динамитчиков|r и |cRXP_ENEMY_Мертвых землекопов|r. Собирайте с них |cRXP_LOOT_Карточки|r
    >>|cRXP_WARN_Это выполняется СНАРУЖИ Подземелья|r
    .complete 168,1 -- Карточка Союза шахтеров (4)
    .mob Скелет-шахтер
    .mob Мертвый динамитчик
    .mob Мертвый землекоп
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >> Войдите в Подземелье Мертвые копи
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Убивайте |cRXP_ENEMY_Членов Братства Справедливости|r внутри Мертвых копей. Собирайте с них |cRXP_LOOT_Красные шелковые банданы|r
    .complete 214,1 -- Красная шелковая бандана (10)
    .isOnQuest 214
step
.dungeon DM
    >>Убейте |cRXP_ENEMY_Снида|r. Заберите у него |cRXP_LOOT_Гномский шпреккельшпрокет|r
    .complete 2040,1 -- Гномский шпреккельшпрокет (1)
step
.dungeon DM
    >>Убейте |cRXP_ENEMY_Эдвина ван Клифа|r. Заберите у него |cRXP_LOOT_Голову|r и |T133471:0|t[|cRXP_LOOT_Неотправленное письмо|r]
    .collect 2874,1,373,1 -- Неотправленное письмо (1)
    .complete 166,1 -- Голова ван Клифа (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Убейте |cRXP_ENEMY_Эдвина ван Клифа|r. Заберите у него |T133471:0|t[|cRXP_LOOT_Неотправленное письмо|r]
    .collect 2874,1,373,1 -- Неотправленное письмо (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Выйдите из Мертвых копей через задний выход к востоку от |cRXP_ENEMY_Эдвина ван Клифа|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Грианом Камнегривом|r
    .turnin 166 >> Сдайте задание "Братство Справедливости"
    .target Гриан Камнегрив
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Разведчиком Риелем|r на вершине башни
    .turnin 214 >> Сдайте задание "Красные шелковые банданы"
    .target Разведчик Риель
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_Используйте|r |T135763:0|t[Телепортация: Штормград]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Эльшариной|r на вершине башни
    .train 2138 >> Изучите классовые навыки
    .target Эльшарина
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тором|r
    .fly Stormwind >> Летите в Штормград
    .zoneskip Stormwind City
    .target Тор
step << Warlock
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Войдите в таверну "Забитый ягненок". Спуститесь вниз
    .xp <22,1
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Урсулой Делин|r
    .train 6202 >> Изучите классовые навыки
    .target Урсула Делин
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Идите к |cRXP_FRIENDLY_Дуториану Раллу|r в Собор Штормграда
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Артуром Верным|r
    .train 19835 >> Изучите классовые навыки
    .target Артур Верный
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Идите к |cRXP_FRIENDLY_Верховной жрице Лаурене|r в Собор Штормграда
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Верховной жрицей Лауреной|r внутри
    .train 8103 >> Изучите классовые навыки
    .target Верховная жрица Лаурена
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Идите к |cRXP_FRIENDLY_Ву Шеню|r в Центр управления
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ву Шенем|r внутри наверху
    .train 6192 >> Изучите классовые навыки
    .target Ву Шень
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Баросом Алекстоном|r
    .use 2874 >>|cRXP_WARN_Используйте |T133471:0|t[|cRXP_LOOT_Неотправленное письмо|r], чтобы начать задание|r
    .accept 373 >> Примите задание "Неотправленное письмо"
    .turnin 373 >> Сдайте задание "Неотправленное письмо"
    .accept 389 >> Примите задание "Базил Тредд"
    .target Барос Алекстон
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тюремщиком Телвотером|r
    .turnin 389 >> Сдайте задание "Базил Тредд"
    .target Тюремщик Телвотер
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Уайлдером Остротерном|r внутри
    .turnin 167 >> Сдайте задание "Братская любовь"
    .turnin 168 >> Сдайте задание "Собирая воспоминания"
    .target Уайлдер Остротерн
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Эйнрис Ясное Копье|r внутри
    .trainer >> Изучите классовые навыки
    .target Эйнрис Ясное Копье
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шони Молчуньей|r
    .turnin 2040 >> Сдайте задание "Подземная атака"
    .goto StormwindClassic,55.510,12.504
    .target Шони Молчунья
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Биллибабом Шестеренком|r
    .vendor 5519 >> |cRXP_BUY_Купите|r |T133024:0|t[Бронзовую трубу] |cRXP_BUY_у него (если есть)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Биллибаб Шестеренок
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >> |cRXP_WARN_Используйте|r |T135758:0|t[Телепортация: Лунная поляна]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Логанааром|r
    .trainer >> Изучите классовые навыки
    .target Логанаар
    .xp <22,1
step
.dungeon DM
    .hs >> Используйте камень возвращения, чтобы вернуться на Темные берега
    >>|cRXP_BUY_Купите еду/воду, если нужно|r << !Warrior !Rogue
    >>|cRXP_BUY_Купите еду, если нужно|r << Warrior/Rogue
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance
#name 20-21 Темные берега (Дренеи)
#subgroup RestedXP Альянс 20-32
#defaultfor Draenei
#next 21-23 Ясеневый лес (Дренеи)

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Габбером Блампом|r
    .accept 1138 >> Примите задание "Дары моря"
    .target Габбер Бламп
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кайлайс Лунное Перо|r
    .fp Auberdine >> Откройте полеты в Аубердине
    .target Кайлайс Лунное Перо
    .zoneskip Darkshore,1
step
    .goto Darkshore,37.219,44.227
    >>Нажмите на |cRXP_PICK_Плакат "Разыскивается!"|r
    .accept 4740 >> Примите задание "РАЗЫСКИВАЕТСЯ: Муркдип!"
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Баритрасом Лунная Тень|r
    .accept 947 >> Примите задание "Пещерные грибы"
    .target Баритрас Лунная Тень
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Часовым Элиссой Звездный Ветер|r наверху
    .accept 965 >> Примите задание "Башня Алталакс"
    .target Часовой Элисса Звездный Ветер
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горболдом Стальная Рука|r
    .accept 982 >> Примите задание "Глубокий океан, огромное море"
    .target Горболд Стальная Рука
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тундрисом Ветроплетом|r
	.turnin 9633 >> Сдайте задание "Дорога в Аубердин"
    .accept 10752 >> Примите задание "Вперед, в Ясеневый лес!"
    .target Тундрис Ветроплет
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тундрисом Ветроплетом|r
    .accept 10752 >> Примите задание "Вперед, в Ясеневый лес!"
    .target Тундрис Ветроплет
step
    .goto Darkshore,38.83,29.37,10,0
    .goto Darkshore,38.236,28.800
    >>|cRXP_WARN_Войдите в затонувший корабль "Серебряный рассвет" через пробоину в корпусе на дне. Убедитесь, что у вас полный запас дыхания перед погружением|r
    >>Соберите |cRXP_LOOT_Ларь "Серебряного рассвета"|r на земле
    .complete 982,1 --Собрано: Ларь "Серебряного рассвета" (x1)
step
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.633,27.459
    >>|cRXP_WARN_Войдите в затонувший корабль "Туманная вуаль" через пробоину в корпусе на дне. Убедитесь, что у вас полный запас дыхания перед погружением|r
    >>Соберите |cRXP_LOOT_Ларь "Туманной вуали"|r на земле
    .complete 982,2 --Собрано: Ларь "Туманной вуали" (x1)
step
    #completewith GelkakGyromast
    >>Убивайте |cRXP_ENEMY_Рифовых крабов|r и |cRXP_ENEMY_Грязевых крабов-ползунов|r. Собирайте с них |cRXP_LOOT_Куски крабового мяса|r
    .complete 1138,1 -- Отборные куски крабового мяса (6)
    .mob Грязевой краб-ползун
    .mob Рифовый краб
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гелкаком Гиромастом|r
    .accept 2098 >> Примите задание "Поиски Гиромаста"
    .target Гелкак Гиромаст
step
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Убивайте |cRXP_ENEMY_Разъяренных рифовых крабов|r и |cRXP_ENEMY_Грязевых крабов-ползунов|r. Собирайте с них |cRXP_LOOT_Обломок ключа Гелкака (нижняя часть)|r
    >>|cRXP_WARN_Остерегайтесь способности |cRXP_ENEMY_Разъяренных рифовых крабов|r |T132152:0|t[Взбучка]. Вы можете получить 200 урона мгновенно от их ударов|r
    .complete 2098,3 -- Обломок ключа Гелкака (нижняя часть)
    .mob Разъяренный рифовый краб
    .mob Грязевой краб-ползун
step
    .goto Darkshore,54.93,12.19
    >>Убивайте |cRXP_ENEMY_Оракулов из племени Серой Дымки|r и |cRXP_ENEMY_Волноловов из племени Серой Дымки|r. Собирайте с них |cRXP_LOOT_Обломок ключа Гелкака (средняя часть)|r
    >>|cRXP_WARN_Остерегайтесь урона |cRXP_ENEMY_Оракулов из племени Серой Дымки|r от |T136048:0|t[Молния] и они также могут лечиться с помощью |T136052:0|t[Волна исцеления]|r
    .complete 2098,2 -- Обломок ключа Гелкака (средняя часть) (1)
    .mob Оракул из племени Серой Дымки
    .mob Волнолов из племени Серой Дымки
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Убивайте |cRXP_ENEMY_Разъяренных рифовых крабов|r и |cRXP_ENEMY_Грязевых крабов-ползунов|r. Собирайте с них |cRXP_LOOT_Обломок ключа Гелкака (нижняя часть)|r
    >>|cRXP_WARN_Остерегайтесь способности |cRXP_ENEMY_Разъяренных рифовых крабов|r |T132152:0|t[Взбучка]. Вы можете получить 200 урона мгновенно от их ударов|r
    .complete 2098,3 -- Обломок ключа Гелкака (нижняя часть)
    .mob Разъяренный рифовый краб
    .mob Грязевой краб-ползун
step
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Убивайте |cRXP_ENEMY_Гигантских лесных долгоногов|r. Собирайте с них |cRXP_LOOT_Обломок ключа Гелкака (верхняя часть)|r
    .complete 2098,1 -- Обломок ключа Гелкака (верхняя часть) (1)
    .mob Гигантский лесной долгоног
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гелкаком Гиромастом|r
    .turnin 2098 >> Сдайте задание "Поиски Гиромаста"
    .accept 2078 >> Примите задание "Месть Гиромаста"
    .target Гелкак Гиромаст
step
    .goto Darkshore,55.803,18.291,10,0
    .goto Darkshore,56.655,13.485
    >>Поговорите с |cRXP_FRIENDLY_Молотильщиком 4100|r, чтобы начать сопровождение
    >>Сопроводите |cRXP_FRIENDLY_Молотильщика 4100|r к |cRXP_FRIENDLY_Гелкаку Гиромасту|r
    >>Убейте |cRXP_ENEMY_Молотильщика 4100|r, когда он станет враждебным
    .skipgossip
    .complete 2078,1
    .mob Молотильщик 4100
step
    #label GelkakGyromast
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гелкаком Гиромастом|r
    .turnin 2078 >> Сдайте задание "Месть Гиромаста"
    .target Гелкак Гиромаст
step
    #sticky
    #optional
    .destroy 7442 >> Удалите |T134459:0|t[Ключ Гиромаста], так как он больше не нужен (он не в связке ключей)
step
    #loop
    .goto Darkshore,53.51,18.65,0
    .goto Darkshore,51.42,22.04,0
    .goto Darkshore,48.52,20.65,0
    .goto Darkshore,45.50,20.45,0
    .goto Darkshore,53.51,18.65,70,0
    .goto Darkshore,51.42,22.04,70,0
    .goto Darkshore,48.52,20.65,70,0
    .goto Darkshore,45.50,20.45,70,0
    >>Убивайте |cRXP_ENEMY_Рифовых крабов|r и |cRXP_ENEMY_Грязевых крабов-ползунов|r. Собирайте с них |cRXP_LOOT_Куски крабового мяса|r
    .complete 1138,1 -- Отборные куски крабового мяса (6)
    .mob Грязевой краб-ползун
    .mob Рифовый краб
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Балтуле Темным Ударом|r
    .turnin 965 >> Сдайте задание "Башня Алталакс"
    .accept 966 >> Примите задание "Башня Алталакс"
    .target Балтуле Темный Удар
step
    #loop
    .goto Darkshore,55.231,26.508,0
    .goto Darkshore,56.194,27.071,0
    .goto Darkshore,56.047,26.586,0
    .goto Darkshore,55.231,26.508,50,0
    .goto Darkshore,55.369,27.025,50,0
    .goto Darkshore,55.763,26.695,50,0
    .goto Darkshore,55.815,26.972,50,0
    .goto Darkshore,56.194,27.071,50,0
    .goto Darkshore,56.790,27.621,50,0
    .goto Darkshore,57.278,26.311,50,0
    .goto Darkshore,57.046,26.234,50,0
    .goto Darkshore,56.544,26.598,50,0
    .goto Darkshore,56.047,26.586,50,0
    .goto Darkshore,55.743,25.915,50,0
    >>Убивайте |cRXP_ENEMY_Фанатиков Темной Нити|r. Собирайте с них |cRXP_LOOT_Истертый пергамент|r
    .complete 966,1 --Истертый пергамент (4)
    .mob Фанатик Темной Нити
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Балтуле Темным Ударом|r
    .turnin 966 >> Сдайте задание "Башня Алталакс"
    .accept 967 >> Примите задание "Башня Алталакс"
    .target Балтуле Темный Удар
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Отправляйтесь в пещеру у реки Клиффспринг
step
    >>Соберите |cRXP_LOOT_Стебли скабера|r и |cRXP_LOOT_Шляпку смертника|r на земле
    >>|cRXP_WARN_Оставайтесь на верхнем уровне. Если в конце верхней стороны нет |cRXP_LOOT_Шляпки смертника|r, спрыгните вниз и возьмите ее из южной комнаты внизу|r
    >>|cRXP_WARN_Будьте осторожны, так как |cRXP_ENEMY_Гребнистые волноловы|r применяют|r |T135836:0|t[Водную струю] |cRXP_WARN_(Дальнего боя, Мгновенное: Наносит урон ближайшим врагам и отбрасывает их) - убедитесь, что вы не стоите так, чтобы вас сбросило с верхнего уровня пещеры|r
    .complete 947,1 --Стебель скабера (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Шляпка смертника (1)
    .goto Darkshore,55.38,36.34
step
	.goto Darkshore,55.3,34.0
    .xp 20-3900 >> Гринд до тех пор, пока не останется 3900 опыта до 20 уровня (16900/20800)
step << Hunter
	#completewith next
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горболдом Стальная Рука|r
    .turnin 982 >> Сдайте задание "Глубокий океан, огромное море"
    .target Горболд Стальная Рука
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гершалой Ночной Шепот|r
    .turnin 3765 >> Сдайте задание "Порча повсюду"
    .target Гершала Ночной Шепот
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гершалой Ночной Шепот|r
    >>|cRXP_WARN_Если вы не можете принять это задание, пропустите этот шаг|r
    .accept 1275 >> Примите задание "Изучение порчи"
    .target Гершала Ночной Шепот
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Археологом Холли|r
    .accept 729 >> Примите задание "Рассеянный проспектор"
    .target Археолог Холли
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Баритрасом Лунная Тень|r
    .turnin 947 >> Сдайте задание "Пещерные грибы"
    .accept 948 >> Примите задание "Ону"
    .target Баритрас Лунная Тень
step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Габбером Блампом|r
    .turnin 1138 >> Сдайте задание "Дары моря"
    .target Габбер Бламп
step << Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Сядьте на корабль до Тельдрассила
    .zoneskip Darnassus
step << Hunter
.dungeon !BFD
    #optional
    #completewith TrainWeps
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Войдите в фиолетовый портал в Дарнас
step
.dungeon BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Сядьте на корабль до Тельдрассила
    .zoneskip Darnassus
step
.dungeon BFD
    #completewith BFDAccept
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Войдите в фиолетовый портал в Дарнас
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Серебряным стражем Манадосом|r и |cRXP_FRIENDLY_Вестницей рассвета Шейдласс|r наверху
    .accept 1199 >> Примите задание "Сумерки сгущаются"
    .target +Серебряный страж Манадос
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Примите задание "Поиски Таэльрида"
    .target +Вестница рассвета Шейдласс
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step << Hunter
#ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ландрией|r
    >>|cRXP_WARN_Купите|r |T135489:0|t[Тяжелый изогнутый лук] |cRXP_WARN_если можете себе позволить, или проверьте Аукцион на наличие лучшего|r
    >>|cRXP_WARN_Пополните запас|r |T132382:0|t[Острых стрел]
    .collect 3027,1
    .target Ландрия
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
#ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ландрией|r
    >>|cRXP_WARN_Купите|r |T135489:0|t[Тяжелый изогнутый лук]
    >>|cRXP_WARN_Пополните запас|r |T132382:0|t[Острых стрел]
    .collect 3027,1
    .target Ландрия
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
    .money <0.5643
step << Hunter
    +|cRXP_WARN_Экипируйте|r |T135489:0|t[Тяжелый изогнутый лук]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
    #label TrainWeps
    .goto Darnassus,57.56,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Итенией Лунный Огонь|r
    .train 264 >> Изучите Луки
    .train 227 >> Изучите Посохи
    .target Итения Лунный Огонь
step
    #label BFDAccept
    .goto Darnassus,39.799,92.286,10,0
    .goto Darnassus,38.716,81.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Эмиссаром Валустраа|r наверху
    .accept 9432 >> Примите задание "Путешествие в Астранаар"
    .target Эмиссар Валустраа
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Пройдите через фиолетовый портал в Деревню Рут'теран
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Веспристусом|r
    .fly Darkshore >> Летите на Темные берега
    .target Веспристус
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Пройдите через фиолетовый портал в Деревню Рут'теран
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Веспристусом|r
    .fly Darkshore >> Летите на Темные берега
    .target Веспристус
    .zoneskip Darkshore
step
    .goto Darkshore,35.429,76.566,0
    .goto Darkshore,35.429,76.566,60,0
    .goto Darkshore,36.526,76.603
    >>|cRXP_WARN_Убедитесь, что |cRXP_ENEMY_Муркдип|r еще не появился в воде (если кто-то ранее провалил энкаунтер или оставил живым |cRXP_ENEMY_Охотника из племени Серой Дымки|r в волне, с которой он появляется)|r
    >>Убейте |cRXP_ENEMY_Воинов из племени Серой Дымки|r и |cRXP_ENEMY_Охотников из племени Серой Дымки|r в лагере
    >>|cRXP_WARN_Подойдите к костру в центре лагеря, чтобы начать энкаунтер с |cRXP_ENEMY_Муркдипом|r:|r
    >>|cRXP_WARN_Из воды появятся 3 волны, каждая после убийства предыдущей: Волна 1: 3 |cRXP_ENEMY_Береговых бегуна из племени Серой Дымки|r (12-13 ур.), Волна 2: 2 |cRXP_ENEMY_Воина из племени Серой Дымки|r (15-16 ур.), и Волна 3: |cRXP_ENEMY_Муркдип|r (19 ур.) и |cRXP_ENEMY_Охотник из племени Серой Дымки|r (16-17 ур.). Вы можете отойти от костра, чтобы избежать агро следующей волны|r
    .complete 4740,1 -- Муркдип (1)
    .unitscan Муркдип
    .mob Воин из племени Серой Дымки
    .mob Охотник из племени Серой Дымки
    .mob Береговой бегун из племени Серой Дымки
step
    .goto Darkshore,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ону|r
    .turnin 948 >> Сдайте задание "Ону"
    .accept 944 >> Примите задание "Меч Господина"
    .target Ону
step
    .goto Darkshore,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Проспектором Ремтравелем|r
    >>|cRXP_WARN_Это начнет сопровождение. Возможно, вам придется подождать его возрождения или пока другие закончат сопровождение|r
    .turnin 729 >> Сдайте задание "Рассеянный проспектор"
    .accept 731,1 >> Примите задание "Рассеянный проспектор"
    .target Проспектор Ремтравель
step
    #requires prospector
    >>|cRXP_WARN_Сопроводите |cRXP_FRIENDLY_Проспектора Ремтравеля|r через раскопки|r
    .complete 731,1
    .isOnQuest 731
    .target Проспектор Ремтравель
step
    #optional
    #completewith next
    .cast 5809 >> |cRXP_WARN_Используйте|r |T134715:0|t[Фиал гадания] |cRXP_WARN_и поставьте его на землю|r
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>|cRXP_WARN_Нажмите на |cRXP_PICK_Чашу Гадания|r на земле|r
    .turnin 944 >> Сдайте задание "Меч Господина"
    .accept 949 >> Примите задание "Лагерь Сумеречного Молота"
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>Нажмите на |cRXP_PICK_Сумеречный фолиант|r на северном пьедестале
    .turnin 949 >> Сдайте задание "Лагерь Сумеречного Молота"
step
    #optional
    #sticky
    .destroy 5251 >> Удалите |T134715:0|t[Фиал гадания], так как он больше не нужен
step
    .goto Darkshore,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Террилун|r. Это начнет сопровождение
    >>|cRXP_WARN_Пропустите этот шаг, если ее здесь нет|r
    .accept 945 >> Примите задание "Побег Террилун"
    .target Террилун
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Сопроводите |cRXP_FRIENDLY_Террилун|r из Меча Господина|r
    .complete 945,1 --Сопроводите Террилун от Меча Господина (1)
    .isOnQuest 945
    .target Террилун
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance
#name 21-23 Ясеневый лес (Дренеи)
#subgroup RestedXP Альянс 20-32
#defaultfor Draenei
#next 23-24 Болотина

step
    .goto Ashenvale,28.929,14.485
    .zone Ashenvale >> Отправляйтесь на юг в Ясеневый лес
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Делгреном Очистителем|r
	.target Делгрен Очиститель
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Сдайте задание "Башня Алталакс"
    .accept 970 >> Примите задание "Башня Алталакс"
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Орендилем Широколистом|r
	.target Орендиль Широколист
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Примите задание "Волосы Батрана"
step
    .goto Ashenvale,31.25,30.70
    >>Убивайте |cRXP_ENEMY_Сектантов Темной Нити|r, |cRXP_ENEMY_Адептов Темной Нити|r, |cRXP_ENEMY_Головорезов Темной Нити|r и |cRXP_ENEMY_Землекопов Темной Нити|r. Собирайте с них |cRXP_LOOT_Светящийся камень души|r
    .complete 970,1
    .mob Сектант Темной Нити
    .mob Адепт Темной Нити
    .mob Головорез Темной Нити
    .mob Землекоп Темной Нити
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Откройте |cRXP_PICK_Связки растений|r на земле. Соберите |cRXP_LOOT_Волосы Батрана|r
    >>|cRXP_WARN_Они выглядят как маленькие коричневые мешки. Их может быть трудно заметить|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Орендилем Широколистом|r
	.target Орендиль Широколист
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Сдайте задание "Волосы Батрана"
    .accept 1020 >> Примите задание "Лекарство Орендиля"
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Делгреном Очистителем|r
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Сдайте задание "Башня Алталакс"
    .accept 973 >> Примите задание "Башня Алталакс"
    .target Делгрен Очиститель
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.67,48.83
    .subzone 415 >> Отправляйтесь в Астранаар
step
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шиндрелл Быстрый Огонь|r
    .accept 1008 >> Примите задание "Зорамское взморье"
    .target Шиндрелл Быстрый Огонь
step
    #optional
    .isOnQuest 9432
    .goto Ashenvale,34.894,49.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Воздаятелем Паланааром|r
    .turnin 9432 >> Сдайте задание "Путешествие в Астранаар"
    .target Воздаятель Паланаар
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ксай'андером|r
    >>|cRXP_BUY_Купите|r |T135280:0|t[Дакийский фалькс] |cRXP_BUY_у него|r
	.collect 922,1
    .target Ксай'андер
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #sticky
    +|cRXP_WARN_Экипируйте|r |T135280:0|t[Дакийский фалькс]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Рейн Волчьей Бегуньей|r
    .turnin 10752 >> Сдайте задание "Вперед, в Ясеневый лес!"
    .accept 1054 >> Примите задание "Устранение угрозы"
    .accept 991 >> Примите задание "Очищение Рейн"
    .target Рейн Волчья Бегунья
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Трактирщицей Кимлией|r
    .home >> Установите камень возвращения в Астранааре
    .target Трактирщица Кимлия
    .subzoneskip 415,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Пелтурасом Белой Луной|r
    .turnin 1020 >> Сдайте задание "Лекарство Орендиля"
    .timer 24,Лекарство Орендиля RP
    .accept 1033 >> Примите задание "Слеза Элуны"
    .target Пелтурас Белая Луна
step
.dungeon WC
    #completewith TravelRatchet
    +Начните искать группу в Пещеры Стенаний, пока выполняете следующие два шага. Очень скоро вы отправитесь в Степи, чтобы пройти Пещеры Стенаний
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Убейте |cRXP_ENEMY_Дала Кровавого Когтя|r. Заберите у него |cRXP_LOOT_Череп|r
    >>|cRXP_ENEMY_Дал Кровавый Коготь|r |cRXP_WARN_патрулирует Деревню Иглошкурых|r
    .complete 1054,1
    .unitscan Дал Кровавый Коготь
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Соберите |cRXP_LOOT_Слезу Элуны|r на земле
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Отправляйтесь в Кабестан в Степях. Следуйте за стрелкой, чтобы избежать |cRXP_ENEMY_Стражей Степных|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Брагоком|r
    .fp Ratchet >> Откройте полеты в Кабестане
    .target Брагок
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оператором крана Бигглфуззом|r
    .accept 959 >> Примите задание "Неприятности в доках"
    .target Оператор крана Бигглфузз
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994
    .goto 1414/1,-2003.0622,-830.7456,20 >> Отправляйтесь к Пещерам Стенаний. Поднимитесь на гору, затем спрыгните в скрытую пещеру над входом в Пещеры Стенаний. Следуйте за стрелкой, чтобы добраться до |cRXP_FRIENDLY_Налпака|r и |cRXP_FRIENDLY_Эбру|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Налпаком|r и |cRXP_FRIENDLY_Эбру|r
    .accept 1486 >> Примите задание "Шкуры загадочных"
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Примите задание "Искоренение загадочных"
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Налпак
    .target Эбру
step
.dungeon WC
    #completewith EnterWC
    >>Убивайте всех типов |cRXP_ENEMY_Загадочных|r существ. Собирайте с них |cRXP_LOOT_Шкуры загадочных|r
    >>|cRXP_WARN_Это можно выполнить как ВНУТРИ, так и СНАРУЖИ Пещер Стенаний|r
    .complete 1486,1 -- Шкура загадочного (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Убейте |cRXP_ENEMY_Безумного Магглиша|r. Заберите у него |cRXP_LOOT_Портвейн 99-летней выдержки|r
    >>|cRXP_ENEMY_Безумный Магглиш|r |cRXP_WARN_может появиться в нескольких местах|r
    >>|cRXP_WARN_Это задание выполняется СНАРУЖИ Пещер Стенаний|r
    .complete 959,1 -- Портвейн 99-летней выдержки (1)
    .isOnQuest 959
    .mob Безумный Магглиш
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Войдите в Пещеры Стенаний
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Убивайте всех типов |cRXP_ENEMY_Загадочных|r существ. Собирайте с них |cRXP_LOOT_Шкуры загадочных|r
    .complete 1487,1 -- Убито: Загадочный опустошитель (7)
    .complete 1487,2 -- Убито: Загадочная гадюка (7)
    .complete 1487,3 -- Убито: Загадочный бродяга (7)
    .complete 1487,4 -- Убито: Загадочный острозуб (7)
    .complete 1486,1 -- Шкура загадочного (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Убивайте всех типов |cRXP_ENEMY_Загадочных|r существ
    .complete 1487,1 -- Убито: Загадочный опустошитель (7)
    .complete 1487,2 -- Убито: Загадочная гадюка (7)
    .complete 1487,3 -- Убито: Загадочный бродяга (7)
    .complete 1487,4 -- Убито: Загадочный острозуб (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Убивайте всех типов |cRXP_ENEMY_Загадочных|r существ. Собирайте с них |cRXP_LOOT_Шкуры загадочных|r
    .complete 1486,1 -- Шкура загадочного (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Убейте |cRXP_ENEMY_Лорда Кобрана|r, |cRXP_ENEMY_Лорда Питонаса|r, |cRXP_ENEMY_Лорда Серпентиса|r и |cRXP_ENEMY_Леди Анакондру|r, затем поговорите с |cRXP_FRIENDLY_Служителем Наралекса|r в начале подземелья, чтобы начать его сопровождение
    >>Сопроводите |cRXP_FRIENDLY_Служителя Наралекса|r через Пещеры Стенаний и завершите ритуал пробуждения
    >>Убейте |cRXP_ENEMY_Мутануса Пожирателя|r. Заберите у него |T135229:0|t[|cRXP_LOOT_Светящийся осколок|r]
    >>|cRXP_WARN_Используйте |T135229:0|t[|cRXP_LOOT_Светящийся осколок|r], чтобы начать задание|r
    .collect 10441,1,6981,1 -- Светящийся осколок (1)
    .accept 6981 >> Примите задание "Светящийся осколок"
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Служитель Наралекса
    .mob Мутанус Пожиратель
step
.dungeon WC
    >>Убивайте всех типов |cRXP_ENEMY_Загадочных|r существ. Собирайте с них |cRXP_LOOT_Шкуры загадочных|r
    >>|cRXP_WARN_Это можно выполнить как ВНУТРИ, так и СНАРУЖИ Пещер Стенаний|r
    .complete 1486,1 -- Шкура загадочного (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Отправляйтесь в Кабестан. Скоро вы сдадите задания над ПС
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Спутервальвом|r
    .complete 6981,1 -- Поговорите с кем-нибудь в Кабестане о светящемся осколке
    .skipgossip 1
    .target Спутервальв
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оператором крана Бигглфуззом|r
    .turnin 959 >> Сдайте задание "Неприятности в доках"
    .target Оператор крана Бигглфузз
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Поднимитесь на крутую гору над Пещерами Стенаний. Следуйте за стрелкой
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Фаллой Мудрый Ветер|r
    .turnin 6981 >> Сдайте задание "Светящийся осколок"
    .target Фалла Мудрый Ветер
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Спрыгните в скрытую пещеру над входом в Пещеры Стенаний. Следуйте за стрелкой, чтобы добраться до |cRXP_FRIENDLY_Налпака|r и |cRXP_FRIENDLY_Эбру|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Налпаком|r и |cRXP_FRIENDLY_Эбру|r
    .turnin 1486 >> Сдайте задание "Шкуры загадочных"
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Сдайте задание "Искоренение загадочных"
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Налпак
    .target Эбру
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Налпаком|r и |cRXP_FRIENDLY_Эбру|r
    .turnin 1487 >> Сдайте задание "Искоренение загадочных"
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Эбру
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Налпаком|r и |cRXP_FRIENDLY_Эбру|r
    .turnin 1486 >> Сдайте задание "Шкуры загадочных"
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Налпак
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Используйте камень возвращения, чтобы вернуться в Астранаар
    >>|cRXP_BUY_Купите еду/воду, если нужно|r << !Warrior !Rogue
	>>|cRXP_BUY_Купите еду, если нужно|r << Warrior/Rogue
    .zoneskip Ashenvale
step
    .goto Ashenvale,46.37,46.38
    >>Соберите |cRXP_LOOT_Слезу Элуны|r на земле
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Убейте |cRXP_ENEMY_Дала Кровавого Когтя|r. Заберите у него |cRXP_LOOT_Череп|r
    >>|cRXP_ENEMY_Дал Кровавый Коготь|r |cRXP_WARN_патрулирует Деревню Иглошкурых|r
    .complete 1054,1
    .unitscan Дал Кровавый Коготь
step
    #completewith next
    .subzone 415 >> Отправляйтесь в Астранаар
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Рейн Волчьей Бегуньей|r
    .turnin 1054 >> Сдайте задание "Устранение угрозы"
    .target Рейн Волчья Бегунья
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Пелтурасом Белой Луной|r
	.target Пелтурас Белая Луна
    .turnin 1033 >> Сдайте задание "Слеза Элуны"
    .timer 17,Слеза Элуны RP
    .accept 1034 >> Примите задание "Руины Звездной Пыли"
step << Shaman
    #completewith next
    >>Соберите |cRXP_LOOT_Горсть звездной пыли|r с |cRXP_PICK_Кустов, покрытых звездной пылью|r
    >>|cRXP_WARN_Места их появления разбросаны по всему острову|r
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >> |cRXP_WARN_Используйте|r |T132825:0|t[Пустой бурдюк] |cRXP_WARN_у небольшого фонтана в Руинах Звездной Пыли|r
    .complete 9504,1 --Собрано: Полный бурдюк (x1)
step
    .goto Ashenvale,33.30,67.79
    >>Соберите |cRXP_LOOT_Горсть звездной пыли|r с |cRXP_PICK_Кустов, покрытых звездной пылью|r
    >>|cRXP_WARN_Места их появления разбросаны по всему острову|r
    .complete 1034,1
step
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Направляйтесь к подножию горы
    .goto Ashenvale,31.21,61.60,15 >>Бегите прямо на север, поднимаясь на гору
step
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Убейте |cRXP_ENEMY_Илкруда Магтрулла|r. Заберите у него |cRXP_LOOT_Фолиант|r
    >>|cRXP_ENEMY_Илкруд Магтрулл|r |cRXP_WARN_будет применять|r |T136221:0|t[Стражей Илкруда] |cRXP_WARN_это 5-секундное заклинание призовет 2 Демонов Бездны. Прервите этот каст, если сможете|r
    .complete 973,1
    .mob Илкруд Магтрулл
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Терисилом|r
    .turnin 945 >> Сдайте задание "Побег Террилун"
	.target Терисил
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Делгреном Очистителем|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >> Сдайте задание "Башня Алталакс"
    .target Делгрен Очиститель
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Трупом Терониса|r
	.target Труп Терониса
    .goto Ashenvale,20.31,42.33
    .turnin 991 >> Сдайте задание "Очищение Рейн"
    .accept 1023 >> Примите задание "Очищение Рейн"
step
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Убивайте |cRXP_ENEMY_Мурлоков из племени Соленой Пены|r. Собирайте с них |cRXP_LOOT_Светящийся драгоценный камень|r
	.mob Воин из племени Соленой Пены
	.mob Грязевик из племени Соленой Пены
	.mob Оракул из племени Соленой Пены
	.mob Береговой охотник из племени Соленой Пены
    .complete 1023,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таленом|r
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Примите задание "Древняя статуэтка"
    .target Тален
step
    #completewith AncientStatuette
    >>Убивайте |cRXP_ENEMY_Наг из клана Гневного Хвоста|r. Собирайте с них |cRXP_LOOT_Головы|r
    >>|cRXP_WARN_Не отклоняйтесь от маршрута, чтобы выполнить это сейчас|r
	.mob Волнолов из клана Гневного Хвоста
	.mob Волшебница из клана Гневного Хвоста
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Соберите |cRXP_LOOT_Древнюю статуэтку|r на земле
    .complete 1007,1
step
    #label AncientStatuette
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таленом|r
	.target Тален
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Сдайте задание "Древняя статуэтка"
    .accept 1009 >> Примите задание "Руузель"
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_Наг из клана Гневного Хвоста|r. Собирайте с них |cRXP_LOOT_Головы|r
	.mob Волнолов из клана Гневного Хвоста
	.mob Волшебница из клана Гневного Хвоста
    .mob Мирмидон из клана Гневного Хвоста
    .mob Жрица из клана Гневного Хвоста
    .mob Острохвост из клана Гневного Хвоста
    .mob Морская ведьма из клана Гневного Хвоста
    .complete 1008,1
step
    .goto Ashenvale,6.528,13.361
    >>Убейте |cRXP_ENEMY_Руузель|r. Заберите у нее |cRXP_LOOT_Кольцо Зорама|r
    >>|cRXP_ENEMY_Руузель|r |cRXP_WARN_патрулирует остров с |cRXP_ENEMY_Мирмидоном из клана Гневного Хвоста|r и |cRXP_ENEMY_Морской ведьмой из клана Гневного Хвоста|r. Убейте одного из них, а затем сбросьте агро, если нужно|r
    >>|cRXP_ENEMY_Леди Веспия|r |cRXP_WARN_это редкий моб, с которого также может упасть |cRXP_LOOT_Кольцо Зорама|r, если вы ее увидите|r
	.unitscan Леди Веспия
	.mob Руузель
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Начните искать группу в Непроглядную Пучину, пока выполняете следующие шаги. Очень скоро вы отправитесь в Непроглядную Пучину
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Убивайте |cRXP_ENEMY_Наг из клана Гневного Хвоста|r. Собирайте с них |cRXP_LOOT_Головы|r
	.mob Волнолов из клана Гневного Хвоста
	.mob Волшебница из клана Гневного Хвоста
    .mob Мирмидон из клана Гневного Хвоста
    .mob Жрица из клана Гневного Хвоста
    .mob Острохвост из клана Гневного Хвоста
    .mob Морская ведьма из клана Гневного Хвоста
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таленом|r
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Сдайте задание "Руузель"
	.target Тален
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Гринд |cRXP_ENEMY_Наг|r пока собираете группу в НП. Отправляйтесь в НП, как только соберете группу
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Отправляйтесь в Непроглядную Пучину
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Убивайте |cRXP_ENEMY_Разбойников из племени Падшего Корня|r, |cRXP_ENEMY_Сатиров из племени Падшего Корня|r, |cRXP_ENEMY_Оракулов Непроглядной Пучины|r и |cRXP_ENEMY_Жриц прилива Непроглядной Пучины|r. Собирайте с них |cRXP_LOOT_Стволы порченого мозга|r
    >>|cRXP_WARN_Вы также можете собирать |cRXP_LOOT_Стволы порченого мозга|r внутри Подземелья|r
    .complete 1275,1 -- Ствол порченого мозга (8)
    .mob Жрица прилива Непроглядной Пучины
    .mob Оракул Непроглядной Пучины
    .mob Разбойник из племени Падшего Корня
    .mob Сатир из племени Падшего Корня
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Доберитесь до портала в подземелье НП. Войдите внутрь
    >>|cRXP_WARN_Узнайте, может ли кто-то в вашей группе поделиться с вами заданием "Знания в Глубинах" из Стальгорна|r
step
.dungeon BFD
    #completewith Kelris
    >>Убивайте |cRXP_ENEMY_Наг|r и |cRXP_ENEMY_Сатиров|r. Собирайте с них |cRXP_LOOT_Стволы порченого мозга|r
    .complete 1275,1 -- Ствол порченого мозга (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Откройте |cRXP_PICK_Изъеденный кислотой сундук|r под водой рядом с зоной с черепахами. Заберите из него |cRXP_LOOT_Манускрипт Лоргалиса|r
    .complete 971,1 -- Манускрипт Лоргалиса (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Серебряным стражем Таэльридом|r
    .turnin -1198 >> Сдайте задание "Поиски Таэльрида"
    .accept 1200 >> Примите задание "Злодейство в Непроглядной Пучине"
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Убивайте всех членов |cRXP_ENEMY_Сумеречного Молота|r. Собирайте с них |cRXP_LOOT_Сумеречные подвески|r
    .complete 1199,1 -- Сумеречная подвеска (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Убейте |cRXP_ENEMY_Повелителя сумрака Келриса|r. Заберите у него |cRXP_LOOT_Голову|r
    .complete 1200,1 -- Голова Келриса (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Убивайте всех членов |cRXP_ENEMY_Сумеречного Молота|r. Собирайте с них |cRXP_LOOT_Сумеречные подвески|r
    .complete 1199,1 -- Сумеречная подвеска (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Убивайте |cRXP_ENEMY_Наг|r и |cRXP_ENEMY_Сатиров|r. Собирайте с них |cRXP_LOOT_Стволы порченого мозга|r
    >>Если вы еще не выполнили это задание, нажмите на алтарь в конце подземелья, чтобы телепортироваться ко входу. Мобы снаружи подземелья также могут дропать их.
    .complete 1275,1 -- Ствол порченого мозга (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >> Используйте камень возвращения, чтобы вернуться в Астранаар
    >>|cRXP_BUY_Купите еду/воду, если нужно|r << !Warrior !Rogue
	>>|cRXP_BUY_Купите еду, если нужно|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    #completewith ZoramStrandTurnin
    .subzone 415 >> Отправляйтесь в Астранаар
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Рейн Волчьей Бегуньей|r
	.target Рейн Волчья Бегунья
    .turnin 1023 >> Сдайте задание "Очищение Рейн"
step
    #optional
    #sticky
    .destroy 5505 >> Уничтожьте |T133741:0|t[Дневник Терониса]. Он вам больше не нужен
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Пелтурасом Белой Луной|r
	.target Пелтурас Белая Луна
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Сдайте задание "Руины Звездной Пыли"
step
    #label ZoramStrandTurnin
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шиндрелл Быстрый Огонь|r
	.target Шиндрелл Быстрый Огонь
    .turnin 1008 >> Сдайте задание "Зорамское взморье"
step
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дэлишией|r
    .fly Auberdine >> Летите на Темные берега
    .target Дэлишия
    .zoneskip Ashenvale,1
step
    .goto Darkshore,37.70,43.39
    .target Часовой Глинда Нал'Ши
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Часовым Глиндой Нал'Ши|r
    .turnin 4740 >> Сдайте задание "РАЗЫСКИВАЕТСЯ: Муркдип!"
    .isQuestComplete 4740
step
.dungeon BFD
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Археологом Холли|r
    .turnin 731 >> Сдайте задание "Рассеянный проспектор"
    .accept 741 >> Примите задание "Рассеянный проспектор"
    .target Археолог Холли
step
.dungeon !BFD
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Археологом Холли|r
    .turnin 731 >> Сдайте задание "Рассеянный проспектор"
    .accept 741 >> Примите задание "Рассеянный проспектор" << !Hunter
    .target Археолог Холли
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гершалой Ночной Шепот|r
    .turnin 1275 >> Сдайте задание "Изучение порчи"
    .target Гершала Ночной Шепот
step
.dungeon BFD
    .isOnQuest 1199,1200
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кайлайс Лунное Перо|r
    .fly Teldrassil >> Летите в Тельдрассил
    .target Кайлайс Лунное Перо
step << !Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Сядьте на корабль до Тельдрассила
    .zoneskip Darnassus
step
.dungeon BFD
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Войдите в фиолетовый портал в Дарнас
step << !Hunter
.dungeon !BFD
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Войдите в фиолетовый портал в Дарнас
step << Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Джандрией|r
    .trainer >> Изучите классовые навыки
    .target Джандрия
step << !Hunter
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Главным археологом Сероусом|r
	.target Главный археолог Сероус
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Сдайте задание "Рассеянный проспектор"
    .accept 942 >> Примите задание "Рассеянный проспектор"
step << Hunter
.dungeon BFD
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Главным археологом Сероусом|r
	.target Главный археолог Сероус
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Сдайте задание "Рассеянный проспектор"
    .accept 942 >> Примите задание "Рассеянный проспектор"
step << Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дарнатом Песнь Клинка|r
    .trainer >> Изучите классовые навыки
    .target Дарнат Песнь Клинка
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Итенией Лунный Огонь|r
    .goto Darnassus,57.56,46.72
    .train 227 >> Изучите Посохи
    .target Итения Лунный Огонь
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Серебряным стражем Манадосом|r наверху
    .turnin 1199 >> Сдайте задание "Сумерки сгущаются"
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Серебряный страж Манадос
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вестником рассвета Сельгормом|r наверху
    .turnin 1200 >> Сдайте задание "Злодейство в Непроглядной Пучине"
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Вестник рассвета Сельгорм
    .isQuestComplete 1200
step << !Hunter
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Пройдите через фиолетовый портал в Деревню Рут'теран
    .zoneskip Darkshore
step << Hunter
.dungeon BFD
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Пройдите через фиолетовый портал в Деревню Рут'теран
    .zoneskip Darkshore
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Веспристусом|r
    .fly Darkshore >> Летите на Темные берега
    .target Веспристус
    .zoneskip Darkshore
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Сядьте на корабль до Гавани Менетилов
]])

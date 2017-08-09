﻿
Процедура ПриКомпоновкеРезультата(ДокументРезультат, ДанныеРасшифровки, СтандартнаяОбработка)
	
	ТЗ = Новый ТаблицаЗначений;
	Настройки = КомпоновщикНастроек.ПолучитьНастройки();
	СКД = ПолучитьМакет("ОсновнаяСхемаКомпоновкиДанных");
	
	КомпоновщикМакета = Новый КомпоновщикМакетаКомпоновкиДанных;
	МакетКомпоновки = КомпоновщикМакета.Выполнить(СКД, Настройки, ДанныеРасшифровки,, Тип("ГенераторМакетаКомпоновкиДанныхДляКоллекцииЗначений"));
	
	ПроцессорКомпоновки = Новый ПроцессорКомпоновкиДанных;
	ПроцессорКомпоновки.Инициализировать(МакетКомпоновки,,ДанныеРасшифровки);
	ПроцессорВывода = Новый ПроцессорВыводаРезультатаКомпоновкиДанныхВКоллекциюЗначений;
	ПроцессорВывода.УстановитьОбъект(ТЗ);
	ПроцессорВывода.Вывести(ПроцессорКомпоновки);
	
	ВывестиОтчет(ДокументРезультат, ТЗ);
КонецПроцедуры

Процедура ВывестиОтчет(ДокументРезультат, ТЗ)
		
КонецПроцедуры

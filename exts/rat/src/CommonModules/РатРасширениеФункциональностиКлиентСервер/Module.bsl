//©///////////////////////////////////////////////////////////////////////////©//
//
//  This file is a part of RAT.
//
//  Copyright © 2021-2025
//  BIA-Technologies Limited Liability Company and contributors
//
//  SPDX-License-Identifier: LGPL-3.0-or-later
//
//  RAT is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published by
//  the Free Software Foundation; either version 3.0 of the License, or
//  (at your option) any later version.
//
//  RAT is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License
//  along with RAT. If not, see <https://www.gnu.org/licenses/>.
//
//©///////////////////////////////////////////////////////////////////////////©//

#Область СлужебныйПрограммныйИнтерфейс

// Проверяет существование метода в указанном модуле.
//
// Параметры:
//   ИмяМодуля - Строка - имя модуля, в котором проверяется существование метода
//   ИмяМетода - Строка - имя проверяемого метода
//   Объект - Произвольный - объект, для которого проверяется метод (опционально)
//
// Возвращаемое значение:
//   Булево - Истина, если метод существует в указанном модуле
//
// Пример:
//   Если РатРасширениеФункциональностиКлиентСервер.МетодСуществует("РатОбщий", "НовыйСтатусОбработкиЗапроса") Тогда ...
//
Функция МетодСуществует(ИмяМодуля, ИмяМетода, Объект = Неопределено) Экспорт
	
#Если ВебКлиент Тогда
	ВызватьИсключение "Метод не поддерживается в веб-клиенте";
#Иначе
	ПолноеИмяМетода = СтрШаблон("%1.%2", ИмяМодуля, ИмяМетода);
	Алгоритм = ПолноеИмяМетода + "(,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,)";
	
	Попытка
		РатАлгоритмы.ВыполнитьАлгоритм(Алгоритм, Объект);
	Исключение
		Ошибка = ИнформацияОбОшибке();
	КонецПопытки;
	
	Возврат (Ошибка.Описание = "Слишком много фактических параметров"
			Или Ошибка.Описание = "Too many actual parameters")
		И СтрНачинаетсяС(Ошибка.ИсходнаяСтрока, ПолноеИмяМетода);
#КонецЕсли
	
КонецФункции

#КонецОбласти

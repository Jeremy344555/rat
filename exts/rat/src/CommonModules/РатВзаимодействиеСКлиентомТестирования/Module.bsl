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
//  the Free Software Foundation; either version 3 of the License, or
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

#Область ПрограммныйИнтерфейс

// Конструктор команды для клиента тестирования.
// Формирует пустое описание (структуру) команды, 
// которую требуется выполнить на клиенте тестирования.
// 
// Возвращаемое значение:
//  Структура - Новая команда:
// * Метод - Строка - полный путь к методу на клиенте тестирования (сигнатура метода без параметров)
// * Параметры - Массив Из Произвольный - коллекция для указания параметров метода (параметры указываются в соответствующем порядке) 
// * ТаймаутОжиданияОтвета - Число - максимальное время в секундах ожидания обработки выполнения команды (по умолчанию 60 с)
Функция НоваяКоманда() Экспорт
	
	Результат = Новый Структура;
	Результат.Вставить("Метод", "");
	Результат.Вставить("Параметры", Новый Массив);
	Результат.Вставить("ТаймаутОжиданияОтвета", 60); // BSLLS:MagicNumber-off
	
	Возврат Результат;
	
КонецФункции

// Выполняет метод (описываемый командой) на клиенте тестирования
// 
// Параметры:
//  Ванесса - Произвольный - контекст фреймворка Vanessa-Automation
//  Команда - см. НоваяКоманда
// 
// Возвращаемое значение:
//  Произвольный - результат выполнения метода команды на клиенте тестирования
Функция ВыполнитьКоманду(Ванесса, Команда) Экспорт

	Возврат РатВзаимодействиеСКлиентомТестированияКлиент.ВыполнитьКоманду(Ванесса, Команда);

КонецФункции

#КонецОбласти

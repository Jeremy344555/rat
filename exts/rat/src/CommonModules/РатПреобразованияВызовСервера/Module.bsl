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

#Область СлужебныйПрограммныйИнтерфейс

// Десериализует типизированное значение.
//
// Параметры:
//   Значение - Произвольный - значение для десериализации
//
// Возвращаемое значение:
//   Произвольный - десериализованное значение
//
// Пример:
//   Значение = РатПреобразованияВызовСервера.ДесериализоватьТипизированноеЗначение(ТипизированноеЗначение);
//
Функция ДесериализоватьТипизированноеЗначение(Знач Значение) Экспорт
	
	СтатусОбработкиЗапроса = РатОбщий.НовыйСтатусОбработкиЗапроса();
	Результат = РатПреобразования.ДесериализоватьТипизированноеЗначение(Значение, СтатусОбработкиЗапроса);
	
	Если НЕ СтатусОбработкиЗапроса.Успешно Тогда
		ВызватьИсключение СтатусОбработкиЗапроса.ОписаниеОшибки[0].Текст;
	КонецЕсли;
	
	Возврат Результат;
	
КонецФункции

// Сериализует значение.
//
// Параметры:
//   Значение - Произвольный - значение для сериализации
//
// Возвращаемое значение:
//   Произвольный - сериализованное значение
//
// Пример:
//   СериализованноеЗначение = РатПреобразованияВызовСервера.СериализоватьЗначение(Значение);
//
Функция СериализоватьЗначение(Знач Значение) Экспорт
	
	Возврат РатПреобразования.СериализоватьЗначение(Значение);
	
КонецФункции

#КонецОбласти

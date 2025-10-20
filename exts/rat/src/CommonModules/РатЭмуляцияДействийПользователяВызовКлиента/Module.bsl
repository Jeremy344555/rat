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

#Область СлужебныеПроцедурыИФункции

// Эмулирует нажатие сочетания клавиш на клиенте тестирования
// 
// Параметры:
//  Сочетание - Структура - описание сочетания клавиш для эмуляции:
//   * WScriptShell - Строка - строка для отправки в WScript.Shell
// 
// Возвращаемое значение:
//  Неопределено - функция используется как процедура
// 
// Исключения:
//  Вызывает исключение при ошибке эмуляции нажатия клавиш
Функция ЭмулироватьНажатиеСочетанияКлавиш(Сочетание) Экспорт
	
	Попытка
		
		WSH = Новый COMОбъект("WScript.Shell"); // BSLLS:UsingObjectNotAvailableUnix-off
		WSH.SendKeys(Сочетание.WScriptShell);
		
	Исключение
		
		ВызватьИсключение РатОбщийКлиентСервер.ТекстОшибки(ИнформацияОбОшибке(), "Не удалось вызвать комбинацию клавиш");
		
	КонецПопытки;
	
	Возврат Неопределено;
	
КонецФункции

#КонецОбласти

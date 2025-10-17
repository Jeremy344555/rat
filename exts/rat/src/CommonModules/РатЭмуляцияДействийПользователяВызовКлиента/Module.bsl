//©///////////////////////////////////////////////////////////////////////////©//
//
//  Copyright 2021-2025 BIA-Technologies Limited Liability Company
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
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

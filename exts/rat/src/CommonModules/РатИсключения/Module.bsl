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

// Формирует текст исключения о недоступности метода в указанном контексте
// 
// Параметры:
//  ИмяМетода - Строка
//  ИмяКонтекста - Строка
// 
// Возвращаемое значение:
//  Строка - Текст исключения
Функция МетодНеДоступен(ИмяМетода, ИмяКонтекста = "веб-клиенте") Экспорт
	
	Возврат СтрШаблон("Метод `%1` не доступен в/на %2", ИмяМетода, ИмяКонтекста);
	
КонецФункции

#КонецОбласти

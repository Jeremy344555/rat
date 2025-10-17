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

#Область СлужебныйПрограммныйИнтерфейс

// Возвращает цвет стиля табличного документа.
//
// Параметры:
//   ИмяСтиля - Строка - имя стиля табличного документа, см. ЦветаСтиля
//
// Возвращаемое значение:
//   Цвет - цвет стиля табличного документа
//
Функция ЦветСтиля(ИмяСтиля) Экспорт
	
	Возврат ЦветаСтиля[ИмяСтиля];
	
КонецФункции

// Возвращает цвет Windows по его имени.
//
// Параметры:
//   ИмяЦвета - Строка - имя цвета Windows, см. WindowsЦвета
//
// Возвращаемое значение:
//   Цвет - цвет, предоставляемый операционной системой Windows
//
Функция WindowsЦвет(ИмяЦвета) Экспорт
	
	Возврат WindowsЦвета[ИмяЦвета];
	
КонецФункции

#КонецОбласти

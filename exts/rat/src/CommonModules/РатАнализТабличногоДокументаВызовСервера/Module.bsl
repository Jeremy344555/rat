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

#language: ru

#©######################################################################/©#
#
#  This file is a part of RAT.
#
#  Copyright © 2021-2025
#  BIA-Technologies Limited Liability Company and contributors
#
#  SPDX-License-Identifier: LGPL-3.0-or-later
#
#  RAT is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Lesser General Public License as published by
#  the Free Software Foundation; either version 3 of the License, or
#  (at your option) any later version.
#
#  RAT is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public License
#  along with RAT. If not, see <https://www.gnu.org/licenses/>.
#
#©######################################################################/©#

@Tree

Функционал: Работа с регламентными заданиями

	Как тестировщик
	Я хочу, чтобы была возможность управлять регламентными заданиями информационной системе через REST API

Контекст:

	Дано выполнена настройка подключения

Сценарий: Запуск регламентного задания

	Дано Я устанавливаю максимальное время ожидания завершения регламентного задания "10 минут"
	Когда Я запускаю регламентное задание "ПроизвольныйАлгоритм" внешней системы "RAT_REST"
	Когда Я запускаю регламентное задание "ПроизвольныйАлгоритм" внешней системы "RAT_REST" и ожидаю завершения
	Дано Я устанавливаю максимальное время ожидания завершения регламентного задания "секунда"
	Когда Я запускаю регламентное задание "ПроизвольныйАлгоритм" внешней системы "RAT_REST" и ожидаю завершения

Сценарий: Включение регламентного задания

	Когда Я включаю регламентное задание "ПроизвольныйАлгоритм" внешней системы "RAT_REST"
	Тогда Я получаю параметры регламентного задания "ПроизвольныйАлгоритм" внешней системы "RAT_REST"
	И реквизит результата запроса "Использование" равен "Истина"
	
	Когда Я выключаю регламентное задание "ПроизвольныйАлгоритм" внешней системы "RAT_REST"
	Тогда Я получаю параметры регламентного задания "ПроизвольныйАлгоритм" внешней системы "RAT_REST"
	И реквизит результата запроса "Использование" равен "Ложь"

	Когда Я выключаю все регламентные задания внешней системы "RAT_REST"
	Тогда Я получаю параметры регламентного задания "ПроизвольныйАлгоритм" внешней системы "RAT_REST"
	И реквизит результата запроса "Использование" равен "Ложь"

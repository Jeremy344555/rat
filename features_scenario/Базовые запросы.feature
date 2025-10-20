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

Функционал: Выполнение REST запросов и обработка результата

	Как тестировщик
	Я хочу чтобы была возможность искать данные в другой информационной системе.

Контекст:

	И Я устанавливаю настройки подключения к внешней системе "jsonplaceholder"
	| Сервер  | https://jsonplaceholder.typicode.com |
	Дано Я устанавливаю заголовки запроса к внешней системе "jsonplaceholder"
	| Content-type | application/json; charset=UTF-8 |

Сценарий: Работа с площадкой

	И Я выполняю запрос "GET" к ресурсу "/posts" внешней системы "jsonplaceholder"
	И Я сохраняю в переменную "post_id" реквизит результата запроса "[0].id"
	И Я выполняю запрос "GET" к ресурсу "/posts/$post_id$/comments" внешней системы "jsonplaceholder"
	И Я задаю таблицу строк "Комментарии"
	| Первый |
	| Второй |
	И Я создаю структуру "ДанныеПоста"
	| title    | Тестовый пост     |
	| body     | Это тестовый пост |
	| userId   | 1                 |
	| comments | $Комментарии$     |
	И Я выполняю запрос "POST" к ресурсу "/posts" внешней системы "jsonplaceholder" с параметрами
	| title  | Тестовый пост     |
	| body   | Это тестовый пост |
	| userId | 1                 |
	И реквизит результата запроса "id" равен "101"
	И Я выполняю запрос "GET" к ресурсу "/posts" внешней системы "jsonplaceholder" с параметрами
	| userId | 2 |
	Тогда реквизит результата запроса "[0].userId" равен "2"
	И реквизит результата запроса "[0].title" равен "et ea vero quia laudantium autem"
	И реквизит результата запроса "[0].id" равен "11"

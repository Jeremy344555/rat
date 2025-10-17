---
sidebar_position: 8
title: Архитектура системы
description: Обзор архитектуры расширения RAT и его компонентов
---

# Архитектура системы

## 1. Высокоуровневая архитектура

```mermaid
graph LR
    subgraph "Внешние системы"
        Client[Клиентские приложения]
        VA[Vanessa Automation]
    end

    subgraph "Сервис RAT"
        API[REST API]
        Router[Маршрутизатор]
        Handler[Обработчики запросов]
    end

    subgraph "Информационная база"
        DB[Основные данные]
        VT[Виртуальные таблицы]
        EP[Произвольные запросы]
        Mov[Движения документов]
        TP[Табличные части]
        Exch[Обмен данными]
        Users[Управление пользователями]
        RJ[Регламентные задания]
    end

    Client --> API
    VA --> API
    API --> Router
    Router --> Handler
    Handler --> DB
    Handler --> VT
    Handler --> EP
    Handler --> Mov
    Handler --> Exch
    Handler --> Users
    Handler --> RJ
    Handler --> TP
```

## 2. Детальное описание компонентов

### 2.1. Сервис RAT - REST API

Основные компоненты:
- **API Gateway**
  - Обработка входящих HTTP запросов
  - Маршрутизация запросов к соответствующим обработчикам
  - Валидация входных данных
  - Формирование ответов

- **Обработчики запросов**
  - CRUD операции с данными
  - Управление регламентными заданиями
  - Работа с движениями документов
  - Расширенный поиск

- **Сервисный слой**
  - Бизнес-логика
  - Трансформация данных
  - Валидация бизнес-правил

### 2.2. Интеграция с Vanessa Automation

```mermaid
sequenceDiagram
    participant VA as Vanessa Automation
    participant VA_Steps as Шаги для VA
    participant API as REST API
    participant DB as База 1С

    VA->>VA_Steps: Вызов шага
    VA_Steps->>API: HTTP запрос
    API->>API: Валидация
    API->>DB: Выполнение операции
    DB->>API: Результат
    API->>VA_Steps: HTTP ответ
    VA_Steps->>VA: Результат шага
```

Основные компоненты:
- **Шаги Vanessa Automation**
  - Поиск данных
  - Создание данных
  - Изменение данных
  - Удаление данных
  - Работа с регламентными заданиями

- **Интеграционный слой**
  - Преобразование данных
  - Обработка ошибок
  - Логирование

## 3. Взаимодействие компонентов

```mermaid
graph LR
    subgraph "Клиентский слой"
        VA[Шаги Vanessa Automation]
    end

    subgraph "API слой"
        API[REST API]
        Router[Маршрутизатор]
    end

    subgraph "Сервисный слой"
        Handler[Обработчики]
        Service[Сервисы]
        Validator[Валидаторы]
    end

    subgraph "Слой данных"
        DB[База 1С]
    end

    VA --> API
    API --> Router
    Router --> Handler
    Handler --> Service
    Service --> Validator
    Validator --> DB
```

### Краткое описание взаимодействия:

1. **Клиентский слой**
   - Обеспечивает интерфейс для Vanessa Automation
   - Форматирует данные для передачи
   - Обрабатывает результат выполнения

2. **API слой**
   - Обрабатывает HTTP запросы
   - Маршрутизирует запросы к нужным обработчикам

3. **Сервисный слой**
   - Содержит бизнес-логику
   - Валидирует данные

4. **Слой данных**
   - Взаимодействует с базой 1С
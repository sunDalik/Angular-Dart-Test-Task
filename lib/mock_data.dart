var MOCK_DATA = '''{
  "objects": [
    {
      "obj_name": "Какой-то объект",
      "obj_id": "12345",
      "items": [
        {
          "state": "Регистрация",
          "timestamp": "1654004988105",
          "progress": "100%"
        },
        {
          "state": "В очереди",
          "timestamp": "1669804988105",
          "progress": "100%"
        },
        {"state": "Передача", "timestamp": "1679804988105", "progress": "100%"},
        {
          "state": "Контроль целостности",
          "timestamp": "1689804988105",
          "progress": "37%"
        },
        {"state": "Выгружено", "timestamp": "1699804988105", "progress": "0%"}
      ]
    },

    {
      "obj_name": "Объект 2",
      "obj_id": "12345",
      "items": [
        {
          "state": "Оформление",
          "timestamp": "1754004988105",
          "progress": "100%"
        },
        {
          "state": "Сборка",
          "timestamp": "1763804988105",
          "progress": "100%"
        },
        {"state": "Доставка", "timestamp": "1770804988105", "progress": "28%"},
        {"state": "Получено", "timestamp": "1799804988105", "progress": "0%"}
      ]
    }
  ]
}''';

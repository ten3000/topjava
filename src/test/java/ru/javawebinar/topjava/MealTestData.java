package ru.javawebinar.topjava;

import ru.javawebinar.topjava.model.Meal;

import java.time.LocalDateTime;
import java.time.Month;

public class MealTestData {

    public static final int MEAL_ID = 100003;
    public static final int NOT_FOUND = 10;

    public static final Meal mealExpected = new Meal(100003,
            LocalDateTime.of(2023, Month.FEBRUARY, 15, 10, 0),
            "Завтрак", 500);

}

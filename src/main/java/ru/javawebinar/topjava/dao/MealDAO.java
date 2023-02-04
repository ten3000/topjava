package ru.javawebinar.topjava.dao;

import ru.javawebinar.topjava.model.Meal;

import java.time.LocalDateTime;
import java.time.Month;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class MealDAO {

    private List<Meal> meals = new ArrayList<>(Arrays.asList(
            new Meal(LocalDateTime.of(2020, Month.JANUARY, 30, 10, 0), "Завтрак", 500),
            new Meal(LocalDateTime.of(2020, Month.JANUARY, 30, 13, 0), "Обед", 1000),
            new Meal(LocalDateTime.of(2020, Month.JANUARY, 30, 20, 0), "Ужин", 500),
            new Meal(LocalDateTime.of(2020, Month.JANUARY, 31, 0, 0), "Еда на граничное значение", 100),
            new Meal(LocalDateTime.of(2020, Month.JANUARY, 31, 10, 0), "Завтрак", 1000),
            new Meal(LocalDateTime.of(2020, Month.JANUARY, 31, 13, 0), "Обед", 500),
            new Meal(LocalDateTime.of(2020, Month.JANUARY, 31, 20, 0), "Ужин", 410)
    ));
    private AtomicInteger id = new AtomicInteger(0);

    public List<Meal> getMeals() {
        for (Meal meal : meals) {
            if (meal.getId() == 0) meal.setId(id.incrementAndGet());
        }
        return meals;
    }

    public void addMeal(Meal meal) {
        meals.add(meal);
    }

    public Meal getMealById(int id) {
        for (Meal meal : meals) {
            if (meal.getId() == id) return meal;
        }
        return null;
    }

    public void updateMeal(String id, Meal updatedMeal) {
        int intId = Integer.parseInt(id);
        Meal meal = getMealById(intId);
        meal.setCalories(updatedMeal.getCalories());
        meal.setDateTime(updatedMeal.getDateTime());
        meal.setDescription(updatedMeal.getDescription());
    }

    public void removeMeal(int id) {
        meals.remove(getMealById(id));
    }
}

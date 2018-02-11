package com.tsyrulik.dmitry.model.entity;

import java.time.LocalDate;
import java.time.LocalTime;

public class Food {
    private Long idFood;
    private String NameOfDish;
    private LocalDate dateReceipt;
    private LocalTime timeOfReceipt;

    public Food(){

    }

    public Food(Long idFood, String nameOfDish, LocalDate dateReceipt, LocalTime timeOfReceipt) {
        this.idFood = idFood;
        NameOfDish = nameOfDish;
        this.dateReceipt = dateReceipt;
        this.timeOfReceipt = timeOfReceipt;
    }

    public Long getIdFood() {
        return idFood;
    }

    public void setIdFood(Long idFood) {
        this.idFood = idFood;
    }

    public String getNameOfDish() {
        return NameOfDish;
    }

    public void setNameOfDish(String nameOfDish) {
        NameOfDish = nameOfDish;
    }

    public LocalDate getDateReceipt() {
        return dateReceipt;
    }

    public void setDateReceipt(LocalDate dateReceipt) {
        this.dateReceipt = dateReceipt;
    }

    public LocalTime getTimeOfReceipt() {
        return timeOfReceipt;
    }

    public void setTimeOfReceipt(LocalTime timeOfReceipt) {
        this.timeOfReceipt = timeOfReceipt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Food food = (Food) o;

        if (idFood != null ? !idFood.equals(food.idFood) : food.idFood != null) return false;
        if (NameOfDish != null ? !NameOfDish.equals(food.NameOfDish) : food.NameOfDish != null) return false;
        if (dateReceipt != null ? !dateReceipt.equals(food.dateReceipt) : food.dateReceipt != null) return false;
        return timeOfReceipt != null ? timeOfReceipt.equals(food.timeOfReceipt) : food.timeOfReceipt == null;
    }

    @Override
    public int hashCode() {
        int result = idFood != null ? idFood.hashCode() : 0;
        result = 31 * result + (NameOfDish != null ? NameOfDish.hashCode() : 0);
        result = 31 * result + (dateReceipt != null ? dateReceipt.hashCode() : 0);
        result = 31 * result + (timeOfReceipt != null ? timeOfReceipt.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Food{" +
                "idFood=" + idFood +
                ", NameOfDish='" + NameOfDish + '\'' +
                ", dateReceipt=" + dateReceipt +
                ", timeOfReceipt=" + timeOfReceipt +
                '}';
    }
}
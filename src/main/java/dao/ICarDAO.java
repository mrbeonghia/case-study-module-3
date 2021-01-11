package dao;

import model.Car;

import java.sql.SQLException;
import java.util.List;

public interface ICarDAO {
    public void insertCar(Car car) throws SQLException;

    public Car selectCar(int id);

    public List<Car> selectAllCars();

    public boolean deleteCar(int id) throws SQLException;

    public boolean updateCar(Car car) throws SQLException;

    public Car getCarById(int id);

}

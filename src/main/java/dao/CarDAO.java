package dao;

import model.Car;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarDAO implements ICarDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/carstore?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "1122";

    private static final String INSERT_CARS_SQL = "INSERT INTO car" + "  (name,vehicle, bodyStyle, engine, price) VALUES " +
            " (?, ?, ?, ?, ?);";

    private static final String SELECT_CAR_BY_ID = "select id,name,bodyStyle,engine,price from car where id =?";
    private static final String SELECT_ALL_CARS = "select * from car";
    private static final String DELETE_CARS_SQL = "delete from car where id = ?;";
    private static final String UPDATE_CARS_SQL = "update cars set name = ?,email= ?, country =? where id = ?;";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    @Override
    public void insertCar(Car car) throws SQLException {
        System.out.println(INSERT_CARS_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CARS_SQL)) {
            preparedStatement.setString(1, car.getName());
            preparedStatement.setString(2, car.getVehicle());
            preparedStatement.setString(3, car.getBodyStyle());
            preparedStatement.setString(4, car.getEngine());
            preparedStatement.setString(5, car.getMaxPower());
            preparedStatement.setString(6, car.getPrice());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Car selectCar(int id) {
        return null;
    }

    @Override
    public List<Car> selectAllCars() {
        List<Car> cars = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CARS);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String vehicle = rs.getString("vehicle");
                String bodyStyle = rs.getString("bodyStyle");
                String engine = rs.getString("engine");
                String price = rs.getString("price");
                String maxPower = rs.getString("maxPower");
                String image =  rs.getString("image");
                cars.add(new Car(name, vehicle, bodyStyle,engine,maxPower,price,image));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return cars;
    }

    @Override
    public boolean deleteCar(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateCar(Car car) throws SQLException {
        return false;
    }

    @Override
    public Car getCarById(int id) {
        return null;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

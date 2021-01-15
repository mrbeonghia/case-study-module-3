package dao;

import model.Car;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarDAO implements ICarDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/carstore?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "1122";

    private static final String INSERT_CARS_SQL = "INSERT INTO car" + "  (name, vehicle, bodyStyle, engine, maxPower, price, image) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_CAR_BY_ID = "select * from car where id =?";
    private static final String SELECT_ALL_CARS = "select * from car";
    private static final String DELETE_CARS_SQL = "delete from car where id = ?;";
    private static final String UPDATE_CARS_SQL = "update car set name = ?,vehicle = ?, bodyStyle = ?, engine = ?, maxPower = ?, price = ?, image = ? where id = ?;";
    private static final String FIND_CARS_BY_NAME = "select * from car where name like ?";
    private static final String SORT_PRICE_LOW_HIGH = "select * from car order by price ;";


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
            preparedStatement.setString(7, car.getImage());
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
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String vehicle = rs.getString("vehicle");
                String bodyStyle = rs.getString("bodyStyle");
                String engine = rs.getString("engine");
                String price = rs.getString("price");
                String maxPower = rs.getString("maxPower");
                String image =  rs.getString("image");
                cars.add(new Car(id, name, vehicle, bodyStyle,engine,maxPower,price,image));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return cars;
    }

    @Override
    public boolean deleteCar(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_CARS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateCar(Car car) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_CARS_SQL);) {
            statement.setString(1, car.getName());
            statement.setString(2, car.getVehicle());
            statement.setString(3, car.getBodyStyle());
            statement.setString(4, car.getEngine());
            statement.setString(5, car.getMaxPower());
            statement.setString(6, car.getPrice());
            statement.setString(7, car.getImage());
            statement.setInt(8,car.getId());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public Car getCarById(int id) {
        Car car = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CAR_BY_ID);) {
            preparedStatement.setInt(1, id);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String name = rs.getString("name");
                String vehicle = rs.getString("vehicle");
                String bodyStyle = rs.getString("bodyStyle");
                String engine = rs.getString("engine");
                String price = rs.getString("price");
                String maxPower = rs.getString("maxPower");
                String image =  rs.getString("image");
                car = new Car(id, name, vehicle, bodyStyle,engine,maxPower,price,image);

            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return car;
    }

    public List<Car> getCarByName(String carName) {
        List<Car> cars = null;

        try (Connection connection = getConnection();

             PreparedStatement preparedStatement = connection.prepareStatement(FIND_CARS_BY_NAME);) {
            cars = new ArrayList<>();
            preparedStatement.setString(1, "%" + carName + "%");

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String vehicle = rs.getString("vehicle");
                String bodyStyle = rs.getString("bodyStyle");
                String engine = rs.getString("engine");
                String price = rs.getString("price");
                String maxPower = rs.getString("maxPower");
                String image =  rs.getString("image");
                Car car = new Car(id, name, vehicle, bodyStyle,engine,maxPower,price,image);
                cars.add(car);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }

    public List<Car> sortPriceLowHigh() {
        List<Car> cars = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SORT_PRICE_LOW_HIGH);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String vehicle = rs.getString("vehicle");
                String bodyStyle = rs.getString("bodyStyle");
                String engine = rs.getString("engine");
                String price = rs.getString("price");
                String maxPower = rs.getString("maxPower");
                String image =  rs.getString("image");
                cars.add(new Car(id, name, vehicle, bodyStyle,engine,maxPower,price,image));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return cars;
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

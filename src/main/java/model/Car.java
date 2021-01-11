package model;

public class Car {
    private int id;
    private String name;
    private String vehicle;
    private String bodyStyle;
    private String engine;
    private String maxPower;
    private String price;
    private String image;

    public Car() {
    }

    public Car(String name, String vehicle, String bodyStyle, String engine, String maxPower, String price, String image) {
        this.name = name;
        this.vehicle = vehicle;
        this.bodyStyle = bodyStyle;
        this.engine = engine;
        this.maxPower = maxPower;
        this.price = price;
        this.image = image;
    }

    public Car(int id, String name, String vehicle, String bodyStyle, String engine, String maxPower, String price, String image) {
        this.id = id;
        this.name = name;
        this.vehicle = vehicle;
        this.bodyStyle = bodyStyle;
        this.engine = engine;
        this.maxPower = maxPower;
        this.price = price;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVehicle() {
        return vehicle;
    }

    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    public String getBodyStyle() {
        return bodyStyle;
    }

    public void setBodyStyle(String bodyStyle) {
        this.bodyStyle = bodyStyle;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getPrice() {
        return price;
    }

    public String getMaxPower() {
        return maxPower;
    }

    public void setMaxPower(String maxPower) {
        this.maxPower = maxPower;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}


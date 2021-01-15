package controller;

import dao.CarDAO;
import model.Car;
import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CarServlet", urlPatterns = "/cars")
public class CarServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CarDAO carDAO;

    public void init(){
        carDAO = new CarDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServerException, IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertCar(request, response);
                    break;
                case "edit":
                    updateCar(request, response);
                    break;
                case "search":
                    searchCar(request,response);
                    break;
                case "priceLowHigh":
                    priceLowHigh(request,response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteCar(request, response);
                    break;
                case "view":
                    viewCar(request, response);
                    break;
                case "search":
                    searchCar(request,response);
                    break;
                case "priceLowHigh":
                    priceLowHigh(request,response);
                    break;
                default:
                    listCar(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }


    private void listCar(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Car> listCar = carDAO.selectAllCars();
        request.setAttribute("listCar", listCar);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listCar.jsp");
        dispatcher.forward(request, response);
    }


    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("createCar.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Car existingCar = carDAO.getCarById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("editCar.jsp");
        request.setAttribute("car", existingCar);
        dispatcher.forward(request, response);
    }
    private void insertCar(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        String vehicle = request.getParameter("vehicle");
        String bodyStyle = request.getParameter("bodyStyle");
        String engine = request.getParameter("engine");
        String price =request.getParameter("price");
        String maxPower = request.getParameter("maxPower");
        String image =  request.getParameter("image");
        Car newCar = new Car(name, vehicle, bodyStyle, engine, maxPower, price, image);
        carDAO.insertCar(newCar);
        RequestDispatcher dispatcher = request.getRequestDispatcher("createCar.jsp");
        request.setAttribute("message", "Success");
        dispatcher.forward(request, response);
    }

    private void updateCar(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String vehicle = request.getParameter("vehicle");
        String bodyStyle = request.getParameter("bodyStyle");
        String engine = request.getParameter("engine");
        String price = request.getParameter("price");
        String maxPower = request.getParameter("maxPower");
        String image =  request.getParameter("image");
        Car editCar = new Car(id,name, vehicle, bodyStyle, engine,maxPower, price, image);
        carDAO.updateCar(editCar);
        RequestDispatcher dispatcher = request.getRequestDispatcher("editCar.jsp");
        request.setAttribute("message", "Success");
        dispatcher.forward(request, response);
    }

    private void deleteCar(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        carDAO.deleteCar(id);
        List<Car> listCar = carDAO.selectAllCars();
        request.setAttribute("listCar", listCar);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listCar.jsp");
        dispatcher.forward(request, response);
    }

    private void viewCar(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Car car = this.carDAO.getCarById(id);
        RequestDispatcher dispatcher;
        if(car == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("car", car);
            dispatcher = request.getRequestDispatcher("view.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void searchCar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        List<Car> listCar = carDAO.getCarByName(name);
        request.setAttribute("_searchCar", listCar);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("searchCar.jsp");
        requestDispatcher.forward(request, response);
    }

    private void priceLowHigh(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Car> listCar = carDAO.sortPriceLowHigh();
        request.setAttribute("priceLowHigh", listCar);
        RequestDispatcher dispatcher = request.getRequestDispatcher("priceLowHigh.jsp");
        dispatcher.forward(request, response);
    }
}

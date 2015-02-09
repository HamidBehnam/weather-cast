package com.hamidapps.weathercast;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

/**
 * Servlet implementation class Weather
 */
@WebServlet("/weather")
public class Weather extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
        String location = request.getParameter("location");

        try {

            HttpResponse<JsonNode> data = Unirest.get("https://george-vustrey-weather.p.mashape.com/api.php")
                    .queryString("location", location)
                    .header("X-Mashape-Key", "hU88zUvgKNmshIWnxYpekb4Obj2jp1wKcbDjsnONWsDU3zCFT5")
                    .header("Accept", "application/json")
                    .asJson();

            response.setContentType("application/json");
            response.getWriter().println(data.getBody().toString());

        } catch (UnirestException e) {
            e.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

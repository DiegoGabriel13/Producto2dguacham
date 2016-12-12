package controllers;

import java.util.List;


import models.Postres;
import play.mvc.*;

import views.html.*;

/**
 * This controller contains an action to handle HTTP requests
 * to the application's home page.
 */
public class HomeController extends Controller {

	public Result index() {
    	List<Postres> postres=Postres.listadoPostres();
    	
        return ok(index.render(Postres.listadoPostres()));
        
    }

}

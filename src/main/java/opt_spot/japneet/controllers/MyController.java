
package opt_spot.japneet.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class MyController {
    @GetMapping("/")
    String go1()
    {
        return ("index.jsp");
    }
    

    
}






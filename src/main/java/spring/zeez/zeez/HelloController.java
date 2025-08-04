package spring.zeez.zeez;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
   @GetMapping("/")
   public String home() {
       return "This is Zeez. I am a DevOps Engineer";
   }
}
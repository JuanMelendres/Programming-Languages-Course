
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author juanantoniomelendresvilla
 */
public class NewClass extends Thread {
    
    static int index = 0; 
    int id, num;
    boolean bandera;
    
    public NewClass (int id, int num) {
        this.id = id;
        this.num = num;
        this.bandera = true;
    }
    
    public void run() {
        System.out.println("Thread id: " + this.id);
        while (this.bandera) {
            try {
                System.out.println("Cycle: " + NewClass.index++);
                Thread.sleep(1000);
            } catch (InterruptedException ex) {
                Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public void finish() {
        this.bandera = false;
    }
    
}

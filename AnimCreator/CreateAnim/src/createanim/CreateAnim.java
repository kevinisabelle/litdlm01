/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package createanim;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;

/**
 *
 * @author kevin
 */
public class CreateAnim {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // TODO code application logic here
            int[][] result = seeBMPImage(args[0]);
            
            String str = "";
            
            for (int[] row : result) {
                
                str += "{";
                
                boolean first = true;
                
                for (int col : row){
                    
                    if (first) {
                        first = false;
                        
                    } else {
                        str += ",";
                    }
                    
                    str += col;                    
                }
                
                str += "},\n";
            }
            
            System.out.println(str);
            
        } catch (IOException ex) {
            Logger.getLogger(CreateAnim.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static int[][] seeBMPImage(String BMPFileName) throws IOException {
        
    BufferedImage image = ImageIO.read(new File(BMPFileName));

    int[][] array2D = new int[image.getHeight()][image.getWidth()];

    for (int xPixel = 0; xPixel < image.getWidth(); xPixel++)
        {
            for (int yPixel = 0; yPixel < image.getHeight(); yPixel++)
            {
                int color = image.getRGB(xPixel, yPixel);
                Color test = new Color(color);
                
                if (test.getRGB()==Color.BLACK.getRGB()) {
                    array2D[yPixel][xPixel] = 1;
                } 
                else if (test.getRGB()==Color.WHITE.getRGB()){
                
                    array2D[yPixel][xPixel] = 0; // ?
                }
                else {
                    array2D[yPixel][xPixel] = 2; // ?
                }
            }
        }
     return array2D;
    }
    
   
    
}

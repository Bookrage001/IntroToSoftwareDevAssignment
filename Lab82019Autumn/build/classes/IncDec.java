
import javafx.application.Application;
import javafx.event.*;
import javafx.event.EventHandler;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author husei
 */
public class IncDec extends Application {
    public static void main(String[] args){launch(args);}

    private Label valueLbl;
    private TextField valueTf;
    private Button decBtn;
    private Button incBtn;
    
    @Override
    public void start (Stage stage){
    //create leaf nodes
    valueLbl = new Label("value");
    valueTf = new TextField("4");
    decBtn = new Button("-1");
    incBtn = new Button("+1");
    //create the branch nodes
    HBox hbox = new HBox(10, valueLbl,valueTf,decBtn,incBtn); 
    hbox.setAlignment(Pos.CENTER);
    //setup event handlers
    decBtn.setOnAction(new DecBtnHandler());
    incBtn.setOnAction(new IncBtnHandler());
    //setup scene and stage
    Scene scene = new Scene(hbox);
    stage.setScene(scene);
    stage.show();
    
    }
    
    private int getValue(){
        return Integer.parseInt(valueTf.getText());
    }
    
    private void setValue(int newValue) {
        valueTf.setText("" + newValue);
    
    }
    
    
    private class DecBtnHandler implements EventHandler<ActionEvent>{

        @Override
        public void handle(ActionEvent event) {
           //get the value
           int value = getValue();
           //take one off
           value -=1;
           //set the new value
          setValue(value);
        }
    }
    
        private class IncBtnHandler implements EventHandler<ActionEvent>{

        @Override
        public void handle(ActionEvent event) {
           //get the value
           int value = getValue();
           //take one off
           value +=1;
           //set the new value
          setValue(value);
        }
    }
       }

import javax.swing.*;
import java.awt.event.*;

public class ClickMeLambda
    extends JFrame
{
    public static void main(String [] args)
    {
        new ClickMeLambda();
    }

    private JButton button1;

    public ClickMeLambda()
    {
        this.setSize(300,150);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setTitle("I'm Listening");

        JPanel panel1 = new JPanel();
        button1 = new JButton("Click Me!");
        button1.addActionListener(e -> button1Click() );	
        panel1.add(button1);
        this.add(panel1);

        this.setVisible(true);
    }

    private int clickCount = 0;	

    public void button1Click()	
    {
        clickCount++;
        if (clickCount == 1)
            button1.setText("I've been clicked!");
        else
            button1.setText("I've been clicked "
                + clickCount + " times!");
    }
}

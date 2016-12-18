import javax.swing.*;

class Items extends JFrame 
{
	JPanel pnl = new JPanel();
	
	String[] toppings = { "Pepperoni", "Mushroom","Ham","Tomato" } ;

	JCheckBox chk1 = new JCheckBox( toppings[0] ) ;
	JCheckBox chk2 = new JCheckBox( toppings[1], true) ; 
	JCheckBox chk3 = new JCheckBox( toppings[2] ) ;
	JCheckBox chk4 = new JCheckBox( toppings[3] ) ;

	String[] styles = { "Deep Dish", "Gourmet Style", "Thin & Crispy" } ;	

	JComboBox box1 = new JComboBox( styles ) ;

	JList lst1 = new JList( toppings ) ;

	public Items()
	{
		super( "Swing Window" );
		setSize( 500,200 );
		setDefaultCloseOperation( EXIT_ON_CLOSE );
		add(pnl);

		pnl.add( chk1 ) ;
		pnl.add( chk2 ) ;
		pnl.add( chk3 ) ;
		pnl.add( chk4 ) ;
		
		box1.setSelectedIndex(0);
		pnl.add( box1 ) ;
		
		pnl.add( lst1 ) ;

		setVisible( true );
	}

	public static void main ( String[] args )
	{
		Items gui = new Items();
	} 
}

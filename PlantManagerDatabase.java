import java.util.ArrayList;
import java.sql.*;

public class PlantManagerDatabase
{
	private PlantCollection plants;
	//AdminCollection admins;
	// private MemberCollection members;
	// private GuestsCommentCollection guestscomments;
	// private MembersCommentCollection memberscomments;
	Connection conn;

	public PlantManagerDatabase() {
		plants = new PlantCollection();
		// admins = new AdminCollection();
		// members = new MemberCollection();
		// guestscomments = new GuestsCommentCollection();
		// memberscomments = new MembersCommentCollection();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/cactiandsucculentsdb?user=cactiandsucculent&password=cactiandsucculent&serverTimezone=UTC&useSSL=false");
			readFromDB(conn);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Object> search(String s) {
		ArrayList<Object> ao = new ArrayList<Object>();
		//ArrayList<Plant> ps = new plants.search(s);
		// ArrayList<Admin> as = new admins.search(s);
		// ArrayList<Member> ms = new members.search(s);
		// ArrayList<GuestsComment> gc = new guestscomments.search(s);
		// ArrayList<MembersComment> mc = new memberscomments.search(s);
		// ao.addAll(ps);
		// ao.addAll(as);
		// ao.addAll(ms);
		// ao.addAll(gc);
		// ao.addAll(mc);
		return(ao);
	}

	public boolean readFromDB(Connection conn) {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM plants");
			while(rs.next()) {
				String[] str = {
					rs.getString("pid"),
					rs.getString("name"),
					rs.getString("type"),
					rs.getString("origin"),
					rs.getString("category"),
					rs.getString("scientificname"),
					rs.getString("alsoknownas"),
					rs.getString("colors"),
					rs.getString("howtogrow"),
					rs.getString("image"),
					"plant"
				};
				createObject(str);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			try { if(stmt!=null) {stmt=null;}} catch(Exception e){};
			try { if(rs!=null) {rs=null;}} catch(Exception e){};
		}
		return(true);
	}

	public void createObject(String... details) {
		int len = details.length - 1;
		String d = details[len];
		if("plant".equals(d)) {
			Plant p = new Plant(details[0], details[1], details[2], details[3], details[4], details[5], details[6], details[7], details[8], details[9]);
			//plant.addPlant(details[0], p);
		}
	}
}

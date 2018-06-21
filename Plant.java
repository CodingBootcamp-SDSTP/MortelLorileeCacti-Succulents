public class Plant
{
	private String pid;
	private String name;
	private String type;
	private String origin;
	private String category;
	private String scientificname;
	private String alsoknownas;
	private String color;
	private String howtogrow;
	private String image;

	public Plant(String pid, String n, String t, String o, String c, String sn, String aka, String co, String hg, String i) {
		pid = pid;
		name = n;
		type = t;
		origin = o;
		category = c;
		scientificname = sn;
		alsoknownas = aka;
		color = co;
		howtogrow = hg;
		image = i;
	}

	public void setPid(String pids) {
		pid = pids;
	}

	public String getPid() {
		return(pid);
	}

	public void setName(String names) {
		name = names;
	}

	public String getName() {
		return(name);
	}

	public void setType(String types) {
		type = types;
	}

	public String getType() {
		return(type);
	}

	public void setOrigin(String origins) {
		origin = origins;
	}

	public String getOrigin() {
		return(origin);
	}

	public void setCategory(String categories) {
		category = categories;
	}

	public String getCategory() {
		return(category);
	}

	public void setScientificName(String scientificnames) {
		scientificname = scientificnames;
	}

	public String getScientificName() {
		return(scientificname);
	}

	public void setAlsoKnownAs(String alsoknownass) {
		alsoknownas = alsoknownass;
	}

	public String getAlsoKnownAs() {
		return(alsoknownas);
	}

	public void setColor(String colors) {
		color = colors;
	}

	public String getColors() {
		return(color);
	}

	public void setHowToGrow(String howtogrows) {
		howtogrow = howtogrows;
	}

	public String getHowToGrow() {
		return(howtogrow);
	}

	public void setImage(String images) {
		image = images;
	}

	public String getImage() {
		return(image);
	}
}

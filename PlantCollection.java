import java.util.ArrayList;

public class PlantCollection
{
	private ArrayList<Plant> plants;

	public PlantCollection() {
		plants = new ArrayList<Plant>();
	}

	public void addPlant(Plant plant) {
		plants.add(plant);
	}

	public void removePlant(Plant plant) {
		plants.remove(plant);
	}

	public ArrayList<Plant> getAllPlants() {
		return(plants);
	}

	public Plant getPlantByIndex(int n) {
		return(plants.get(n));
	}

	public int getPlantCount() {
		return(plants.size());
	}

	public ArrayList<Plant> search(String s) {
		Plant a = null;
		ArrayList<Plant> al = new ArrayList<Plant>();
		String str = s.toLowerCase();
		for(int i=0; i<getPlantCount(); i++) {
			a = getPlantByIndex(i);
			if(matches(a, str)) {
				al.add(a);
			}
		}
		return(al);
	}

	public boolean matches(Plant a, String str) {
		String text = str.toLowerCase();
		String name = a.getName().toLowerCase();
		String type = a.getType().toLowerCase();
		String origin = a.getOrigin().toLowerCase();
		String category = a.getCategory().toLowerCase();
		String color = a.getColor().toLowerCase();
		if(name.contains(text) || type.contains(text) || origin.contains(text) || category.contains(text) || color.contains(text)) {
			return(true);
		}
		return(false);
	}
}

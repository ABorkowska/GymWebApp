package pl.company.enums;

public enum WorkoutType {
	MASS(3,8),
	SHAPE(4, 15),
	STRENGTH(4,5);
	
	private int sets;
	private int reps;
	
	WorkoutType(int sets, int reps) {
		this.sets = sets;
		this.reps = reps;
	}
	
	public int getSets() {
		return sets;
	}
	
	public int getReps() {
		return reps;
	}
}

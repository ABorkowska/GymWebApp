package pl.company.enums;

public enum MuscleGroup {
	KLATKA("Klatka"), NOGI_POŚLADKI("Nogi-Pośladki"), RAMIONA("Ramiona"), PLECY("Plecy"), BARKI("Barki");
	
	private String name;
	
	MuscleGroup(String name) {
		this.name = name;
	}
	
}

package pl.company.model.view;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.jetbrains.annotations.Nullable;
import pl.company.enums.Equipment;
import pl.company.enums.MuscleGroup;
import pl.company.enums.WorkoutType;
import pl.company.model.Exercise;
import pl.company.model.User;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CustomWorkout {
	
	private String name;
	private WorkoutType type;
	private Integer sets;
	private Integer reps;
	
	private List<MuscleGroup> muscleGroups;
	private List<Equipment> equipment;
	
	@Override
	public String toString() {
		return "CustomWorkout{" +
				"name='" + name + '\'' +
				", type=" + type +
				", sets=" + sets +
				", reps=" + reps +
				", muscleGroups=" + muscleGroups +
				", equipment=" + equipment +
				'}';
	}
}

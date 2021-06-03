package pl.company.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.lang.Nullable;
import pl.company.enums.Equipment;
import pl.company.enums.MuscleGroup;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;


@Table(name = "exercises")
@Entity
@Getter
@Setter
@NoArgsConstructor
public class Exercise {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	private String name;
	
	@Enumerated(EnumType.STRING)
	private MuscleGroup muscleGroup;
	
	@Enumerated(EnumType.STRING)
	private Equipment equipment;
	
	@ManyToMany
	@JoinTable(name = "exercises_workouts",
			joinColumns = @JoinColumn(name = "exercise_id"),
			inverseJoinColumns = @JoinColumn(name = "workout_id"))
	private List<Workout> workouts = new ArrayList<>();
	
	@Override
	public String toString() {
		return "Exercise{" +
				"id=" + id +
				", name='" + name + '\'' +
				", muscleGroup=" + muscleGroup +
				", equipment=" + equipment +
				'}';
	}
}
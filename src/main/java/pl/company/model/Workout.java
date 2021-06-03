package pl.company.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.jetbrains.annotations.Nullable;
import pl.company.enums.WorkoutType;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Table(name = "workouts")
@Entity
@Getter
@Setter
@NoArgsConstructor
public class Workout {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Enumerated(EnumType.STRING)
	private WorkoutType type;
	
	private Integer sets;
	
	private Integer reps;
	
	private String name;
	
	@Nullable
	@OneToMany(mappedBy = "workout", cascade=CascadeType.ALL)
	private List<SavedWorkouts> exerciseList = new ArrayList<>();
	
	@Nullable
	@ManyToOne
	private User user;
	
}

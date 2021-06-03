package pl.company.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Table(name = "workouts_exercises")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class SavedWorkouts {
	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	private Exercise exercise;
	
	@ManyToOne
	private Workout workout;
	}

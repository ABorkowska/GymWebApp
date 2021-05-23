package pl.company.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "plan_order")
@Entity

public class PlanOrder {
	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private boolean nutrition;
	
	@ManyToOne
	private Plan plan;
	
	@ManyToOne
	private Trainer trainer;
	
	@ManyToOne
	private User user;
	
	@Override
	public String toString() {
		return "PlanOrder{" +
				"id=" + id +
				", nutrition=" + nutrition +
				", plan=" + plan +
				", trainer=" + trainer +
				", user=" + user +
				'}';
	}
}
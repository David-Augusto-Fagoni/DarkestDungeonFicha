package model;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Personagem {
	private String nome;
	private List<Integer> vida = new ArrayList<>();
	private List<Float> esquiva = new ArrayList<>();
	private List<String> protecao = new ArrayList<>();
	private List<Integer> velocidade = new ArrayList<>();
	private List<Integer> precisaoMOD = new ArrayList<>();															
	private List<String> critico = new ArrayList<>();
	private List<String> dano = new ArrayList<>();
	private List<Resistencia> resistencia = new ArrayList<>();
	private List<Proprio> proprio = new ArrayList<>();
	private List<Ataque> ataque = new ArrayList<>();
	private List<Buff> buff = new ArrayList<>();
}

package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
public class Resistencia {
	private String nome;
	private String valor;
	
	
	
	private String nome(int num) {
		String nome;
		switch (num) {
			case 1 -> nome = "Atordoamento";
			case 2 -> nome = "Envenenamento";
			case 3 -> nome = "Doença";
			case 4 -> nome = "Morte";
			case 5 -> nome = "Movimento";
			case 6 -> nome = "Sangramento";
			case 7 -> nome = "Debuff";
			case 8 -> nome = "Armadilha";
			default -> nome = "invalido";
		}
	return nome;
	}



	public Resistencia(int nome,String valor) {
		this.nome = nome(nome);
		this.valor = valor;
	}
}

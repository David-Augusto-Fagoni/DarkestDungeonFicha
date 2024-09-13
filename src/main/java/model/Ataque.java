package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Ataque extends Proprio {
	private boolean corpo;
	private	String atingir[] = new String[4];
	private	int	precisao;
	private	String	criticoMOD;
	private String	danoMOD;
	
	public Ataque (Proprio proprio) {
		this.tipo = proprio.tipo;
		this.nome = proprio.nome;
		this.local = proprio.local;
		this.efeito = proprio.efeito;
		this.si = proprio.si;
		this.limite = proprio.limite;
	}
}

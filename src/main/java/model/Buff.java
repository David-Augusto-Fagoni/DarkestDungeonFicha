package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Buff extends Proprio{
	protected String atingir[] = new String[4];
	protected String cura;
	
	public Buff (Proprio proprio) {
		this.tipo = proprio.tipo;
		this.nome = proprio.nome;
		this.local = proprio.local;
		this.efeito = proprio.efeito;
		this.si = proprio.si;
		this.limite = proprio.limite;
	}
}

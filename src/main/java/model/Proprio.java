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
public class Proprio {
	protected String tipo;
	protected String nome;
	protected String local[] = new String[4];
	protected List<String> efeito = new ArrayList<>();
	protected List<String> si = new ArrayList<>();
	protected Limite limite;

}

package persistence;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import model.Ataque;
import model.Buff;
import model.Personagem;
import model.Proprio;
import model.Resistencia;

public class fichaDao {
	public Personagem buscarFicha(String personagem) throws IOException {
		String vt[];
		Personagem p = new Personagem();
		File arq = new File("C:\\Users\\david\\Documents\\ficha","personagem.csv");
		List<String> resultado= busca(arq,personagem);
		resultado = busca(arq, personagem);
		//Status de personagem
		while (!resultado.isEmpty()) {
			vt = resultado.remove(0).split(";");
			p.setNome(vt[0]);
			p.setVida(toIntList(vt[1].split(",")));
			p.setEsquiva(toFloatList(vt[2].split(",")));
			p.setProtecao(toStringList(vt[3].split(",")));
			p.setVelocidade(toIntList(vt[4].split(",")));
			p.setPrecisaoMOD(toIntList(vt[5].split(",")));
			p.setCritico(toStringList(vt[6].split(",")));
			p.setDano(toStringList(vt[7].split(",")));
		}
		//-----------------------------
		arq = new File("C:\\Users\\david\\Documents\\ficha","resistencia.csv");
		resultado = busca(arq, personagem);
		List<Resistencia> resistencias = new ArrayList<>();
		//Resistencia de personagem
		while (!resultado.isEmpty()) {
			vt = resultado.remove(0).split(";");
			for(int J=1;J<9;J++) {
				Resistencia res = new Resistencia(J,vt[J]);
				resistencias.add(res);
			}
		}
		p.setResistencia(resistencias);
		//-----------------------------
		arq = new File("C:\\Users\\david\\Documents\\ficha","proprio.csv");
		resultado = busca(arq, personagem);
		List<Proprio> proprios = new ArrayList<>();
		List<Ataque> ataques = new ArrayList<>();

		List<Buff> buffs = new ArrayList<>();

		//Proprio
		//vt [0] e [1] inutilizados
		while (!resultado.isEmpty()) {
			vt = resultado.remove(0).split(";");
			Proprio proprio = new Proprio();
			proprio.setTipo(vt[1]);
			proprio.setNome(vt[2]);
			proprio.setLocal(vt[3].split(","));
			proprio.setEfeito(toStringList(vt[4].split(",")));
			proprio.setSi(toStringList(vt[5].split(",")));
			Ataque ataque = new Ataque(proprio);
			Buff buff = new Buff(proprio);
			switch (vt[1]) {
				case "ataque" ->ataques.add(ataque) ;
				case "buff" -> buffs.add(buff);
				default -> proprios.add(proprio);
			}
			
		}
		p.setProprio(proprios);
		//-----------------------------
		arq = new File("C:\\Users\\david\\Documents\\ficha","ataque.csv");
		//Ataque
		for(int J=0;J<ataques.size();J++) {
			resultado = busca(arq, ataques.get(J).getNome());
			while (!resultado.isEmpty()) {
				vt = resultado.remove(0).split(";");
				ataques.get(J).setCorpo(toBoolean(vt[1]));
				ataques.get(J).setAtingir(vt[2].split(","));
				ataques.get(J).setPrecisao(Integer.parseInt(vt[3]));
				ataques.get(J).setDanoMOD(vt[4]);
				ataques.get(J).setCriticoMOD(vt[5]);
			}
		}
		p.setAtaque(ataques);
		//-----------------------------
		arq = new File("C:\\Users\\david\\Documents\\ficha","buff.csv");
		//buff
		for(int J=0;J<buffs.size();J++) {
			resultado = busca(arq, buffs.get(J).getNome());
			while (!resultado.isEmpty()) {
				vt = resultado.remove(0).split(";");
				buffs.get(J).setAtingir((vt[1].split(",")));
				buffs.get(J).setCura(vt[2]);
			}
		}
		p.setBuff(buffs);
		return p;
	}
	private List<String> busca(File local,String procura) throws IOException{
		if (local.exists() && local.isFile()) {
			List<String> resultado = new ArrayList<String>();
			FileInputStream abreFluxoArq = new FileInputStream(local);
			InputStreamReader leitorFluxo = new InputStreamReader(abreFluxoArq);
			BufferedReader buffer = new BufferedReader(leitorFluxo);
			String linha = buffer.readLine();
			while (linha != null) {
				if(linha.contains(procura)){
					resultado.add(linha);
				}
				linha = buffer.readLine();
			}
			buffer.close();
			leitorFluxo.close();
			abreFluxoArq.close();
			return resultado;
		}
		return null;
	}
	private List<String> toStringList(String vt[]){
		int tam = vt.length;
		List<String> lista = new ArrayList<>();
		for(int J=0;J<tam;J++) {
			lista.add(vt[J]);
		}
			
		return lista;
	}
	private List<Integer> toIntList(String vt[]){
		int tam = vt.length;
		List<Integer> lista = new ArrayList<>();
		for(int J=0;J<tam;J++) {
			lista.add(Integer.parseInt(vt[J]));
		}
			
		return lista;
	}
	private List<Float> toFloatList(String vt[]){
		int tam = vt.length;
		List<Float> lista = new ArrayList<>();
		for(int J=0;J<tam;J++) {
			lista.add(Float.parseFloat(vt[J]));
		}
			
		return lista;
	}
	private boolean[] toBooleanVetor(String[] vt){
		boolean[] vtb = new boolean[4];
		for(int J=0;J<4;J++) {
			if (vt[J].contains("1")) {
				vtb[J] = true;
			}else {
				vtb[J] = false;
			}
		}
		return vtb;
		
	}
	private boolean toBoolean(String vt){
		boolean vtb = false;
		if (vt.contains("1")) {
			vtb = true;
		}
		return vtb;
		
	}
}

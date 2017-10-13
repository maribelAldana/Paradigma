
class Casa {
	const posicion = game.at(0,0)
	var material = ""
	var tiempo = 0
	
	constructor(m,t){
		material = m
		tiempo = t
	}
	
	method material(m){ material = m}
	
	method material() = material
	
	method tiempoDeConstruccion(t){
		tiempo= t
	}
	
	method tiempo()= tiempo
	
	
}

class CasaDePaja inherits Casa{
	method modificarCanchito(chanchito){
		if(chanchito.energia()< 0){
			game.say(self, "No tengo energia para construir esta casita")
		}
		
		chanchito.perderEnergia(0)
		return "chanchitosTrabajando2.jpg"
	}
}

class CasaDeMadera inherits Casa{
	method modificarCanchito(chanchito){
		if(chanchito.energia()< 0){
			error.throwWithMessage("No tengo energia para construir esta casita")
		}
		
		chanchito.perderEnergia(tiempo)
	}
}

class CasaDeLadrillo inherits Casa{
	var ladrillo = 1
	
	constructor(m,t,l) = super(m,t){
		ladrillo = l
	}
	
	method modificarCanchito(chanchito){
		if(chanchito.energia()< 0){
			game.say(self, "No tengo energia para construir esta casita")
		}
		
		chanchito.perderEnergia(tiempo/ladrillo)
	}
}

class Chanchito{
	
	const posicion = game.at(0,0)
	var edad = ""
	var energia = 0
	
	
	method edad(e){ edad = e }
	method edad() = edad
	
	method energia(e){ energia =energia + e}
	method energia() = energia
	
	method perderEnergia(e){
		energia= energia - e
	}
	
	method construir(casa){
		casa.modificarCanchito(self)
	}
	
	method jugar(){ }
	
	method descansa(){}
	
	method estasCansado(){
		return energia < 8
	}
}

class Medio{}

class Mayor{}

object cuento{
	const posicion = game.at(0,0)
	
	method getPosicion() = posicion
	
	method imagen(){
		game.say(self, "Esta es la historia de los 3 Cerditos")
		return "cuento1.jpg"
		
	}
	
	method parte1(){
		game.say(self, "Habia una vez 3 Cerditos que vivian en el medio del bosque")
		game.say(self, "Los cerditos tenian mucho miedo")
		game.say(self, "porque un lobo feroz queria comerselos")
	}
}


abstract class Cozinhar {
  void separarIngredientes();

  void fazerMassa();

  void assar();

  void pronto();
}

class Almoco implements Cozinhar {
  String nome;
  double peso;
  bool molho;
  String sabor;

  Almoco({required this.nome, required this.peso, required this.molho, required this.sabor});

  @override
  void assar() {
    print("Ponha a $nome no forno!\n");
  }

  @override
  void fazerMassa() {
    print("Misture todos os ingredientes para fazer a $nome!\n");
  }

  @override
  void separarIngredientes() {
    print(
        "Separe todos os ingrentes do $nome na quantidade correta para receita!\n");
  }

  @override
  void pronto() {
    print("\n$nome acaba de ficar pronta!\nEspecificações:\n"
        "Prato: $nome\n"
        "Peso: $peso gramas\n"
        "Sabor: $sabor\n"
        "Tem molho? $molho\n"
        "Tenha um bom apetite!");
  }
}

void main() {
  Almoco almoco_1 = Almoco(nome: "Lasanha", peso: 500, molho: true, sabor: "Salgado");
  almoco_1.separarIngredientes();
  almoco_1.fazerMassa();
  almoco_1.assar();
  almoco_1.pronto();
}

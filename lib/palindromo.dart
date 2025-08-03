bool esPalindromo(String texto) {
  String textoLimpio = texto
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]'), '');

  String textoInvertido = textoLimpio.split('').reversed.join('');
  
  return textoLimpio == textoInvertido;
}

void main() {
  List<String> frases = [
    "La ruta natural",
    "Amor a Roma",
    "El perro juega en el parque",
    "Yo hago yoga hoy"
  ];

  for (String frase in frases) {
    print('"$frase" → ${esPalindromo(frase) ? "Es palindromo" : "No es palindromo"}');
  }
}
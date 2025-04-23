class Login {
  final String usuario;
  final String senha;

  Login({required this.usuario, required this.senha});

  bool autenticar(String usuarioDigitado, String senhaDigitada) {
    return usuarioDigitado == usuario && senhaDigitada == senha;
  }
}

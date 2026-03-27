class AuthService {
  final List<Map<String, String>> _users = [
    {
      "email": "admin@ecotrack.com",
      "senha": "123456",
    }
  ];

  /// LOGIN
  String? login(String email, String senha) {
    for (var user in _users) {
      if (user["email"] == email && user["senha"] == senha) {
        return null; // sucesso
      }
    }

    return "Email ou senha incorretos";
  }

  /// CADASTRO
  String? register(String email, String senha) {
    for (var user in _users) {
      if (user["email"] == email) {
        return "Usuário já cadastrado";
      }
    }

    _users.add({
      "email": email,
      "senha": senha,
    });

    return null; // sucesso
  }
}
import 'package:flutter/material.dart';

class FormularioPage extends StatefulWidget {
  const FormularioPage({super.key});

  @override
  State<FormularioPage> createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  // Atributos
  String _nome = "";
  String _email = "";
  String _senha = "";
  // ignore: unused_field
  String _confirmarSenha = "";
  bool _aceitarTermos = false;
  String _sexo = "Feminino";
  double _idade = 18;
  List<String> _interesses = [];
  String _cidade = "Americana";

  bool _senhaOculta = true;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulário de Cadastro")),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  validator: (value) =>
                      value!.isEmpty ? "Campo Obrigatório" : null,
                  onChanged: (value) => setState(() {
                    _nome = value;
                  }),
                  decoration: InputDecoration(
                    labelText: "Digite seu nome...",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) =>
                      value!.contains("@") ? null : "E-mail Inválido",
                  onChanged: (value) => setState(() {
                    _email = value;
                  }),
                  decoration: InputDecoration(
                    labelText: "Digite seu e-mail...",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) => value!.length >= 6
                      ? null
                      : "As senhas devem conter no mínimo 6 caracteres",
                  onChanged: (value) => setState(() => _confirmarSenha = value),
                  decoration: InputDecoration(
                    labelText: "Confirme sua senha...",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () =>
                          setState(() => _senhaOculta = !_senhaOculta),
                      icon: Icon(
                        _senhaOculta ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  obscureText: _senhaOculta,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RadioGroup<String>(
                      groupValue: _sexo,
                      onChanged: (String? value) => setState(() {
                        _sexo = value!;
                      }),
                      child: Row(
                        children: [
                          Text("Sexo: "),
                          Radio(value: "Feminino"),
                          Text("Feminino"),
                          SizedBox(width: 10),
                          Radio(value: "Masculino"),
                          Text("Masculino"),
                          SizedBox(width: 10),
                          Radio(value: "Outro"),
                          Text("Outro"),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ],
                ),
                //Slider para Selecionar a Idade
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("Idade: ${_idade.toInt()}"),
                    Expanded(
                      child: Slider(
                        value: _idade,
                        onChanged: (value) => setState(() {
                          _idade = value;
                        }),
                        min: 0,
                        max: 100,
                        divisions: 100,
                        label: _idade.toInt().toString(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Text("Interesses Pessoais:"),
                    Row(
                      children: [
                        Checkbox(
                          value: _interesses.contains("Cinema"),
                          onChanged: (bool? value) => setState(() {
                            value!
                                ? _interesses.add("Cinema")
                                : _interesses.remove("Cinema");
                          }),
                        ),
                        Text("Cinema"),
                        SizedBox(width: 5),
                        Checkbox(
                          value: _interesses.contains("Teatro"),
                          onChanged: (bool? value) => setState(() {
                            value!
                                ? _interesses.add("Teatro")
                                : _interesses.remove("Teatro");
                          }),
                        ),
                        Text("Teatro"),
                        SizedBox(width: 5),
                        Checkbox(
                          value: _interesses.contains("RPG"),
                          onChanged: (bool? value) => setState(() {
                            value!
                                ? _interesses.add("RPG")
                                : _interesses.remove("RPG");
                          }),
                        ),
                        Text("RPG"),
                        SizedBox(width: 5),
                        // wrap para quebrar linhas
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: _interesses.contains("Esporte"),
                          onChanged: (bool? value) => setState(() {
                            value!
                                ? _interesses.add("Esporte")
                                : _interesses.remove("Esporte");
                          }),
                        ),
                        Text("Esporte"),
                        SizedBox(width: 5),
                        Checkbox(
                          value: _interesses.contains("Música"),
                          onChanged: (bool? value) => setState(() {
                            value!
                                ? _interesses.add("Música")
                                : _interesses.remove("Música");
                          }),
                        ),
                        Text("Música"),
                        SizedBox(width: 5),
                        Checkbox(
                          value: _interesses.contains("Viagem"),
                          onChanged: (bool? value) => setState(() {
                            value!
                                ? _interesses.add("Viagem")
                                : _interesses.remove("Viagem");
                          }),
                        ),
                        Text("Viagem"),
                        SizedBox(width: 5),
                        // wrap para quebrar linhas
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text("Cidade: "),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  items: [
                    DropdownMenuItem(
                      value: "Americana",
                      child: Text("Americana"),
                    ),
                    DropdownMenuItem(
                      value: "Nova Odessa",
                      child: Text("Nova Odessa"),
                    ),
                    DropdownMenuItem(value: "Sumaré", child: Text("Sumaré")),
                    DropdownMenuItem(
                      value: "Campinas",
                      child: Text("Campinas"),
                    ),
                    DropdownMenuItem(
                      value: "Santa Bárbara d'Oeste",
                      child: Text("Santa Bárbara d'Oeste"),
                    ),
                    DropdownMenuItem(value: "Outra", child: Text("Outra")),
                  ],
                  onChanged: (String? value) => setState(() {
                    _cidade = value!;
                  }),
                ),
                SizedBox(height: 20),

                Row(
                  children: [
                    Switch(
                      value: _aceitarTermos,
                      onChanged: (bool value) => setState(() {
                        _aceitarTermos = value;
                      }),
                    ),
                    Text("Aceitar os Termos de Uso"),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _enviarFormulario(),
                  child: Text("Enviar Formulário"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _enviarFormulario() {
    if (formKey.currentState!.validate()) {
      if (_aceitarTermos) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Dados do Formulário"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Nome: $_nome"),
                  Text("E-mail: $_email"),
                  Text("Senha: $_senha"),
                  Text("Sexo: $_sexo"),
                  Text("Idade: ${_idade.toInt()}"),
                  Text("Interesses: ${_interesses.join(", ")}"),
                  Text("Cidade: $_cidade"),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    _nome = "";
                    _email = "";
                    _senha = "";
                    _confirmarSenha = "";
                    _sexo = "Feminino";
                    _idade = 18;
                    _interesses = [];
                    _cidade = "Americana";
                    _aceitarTermos = false;
                    formKey.currentState!.reset();
                  });
                },
                child: Text("Ok")),
            ],
          ));
      }else{

      }
    }
  }
}

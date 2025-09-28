# Conversor de Moedas Flutter 💱

Um aplicativo Flutter para conversão de moedas desenvolvido com arquitetura MVC e dados mocados para cotações.

## 📱 Sobre o Projeto

Este é um conversor de moedas desenvolvido em Flutter que permite a conversão entre diferentes moedas utilizando cotações mocadas. O projeto foi estruturado seguindo o padrão de arquitetura MVC (Model-View-Controller) e inclui testes unitários para garantir a qualidade do código.

## ✨ Características

- **Conversão de Moedas**: Interface intuitiva para converter valores entre diferentes moedas
- **Dados Mocados**: Cotações fixas definidas no arquivo de modelo (atualizadas em 27/09/2025)
- **Arquitetura MVC**: Código organizado seguindo o padrão Model-View-Controller
- **Testes Unitários**: Cobertura de testes para conversões e validações
- **Interface Responsiva**: Design adaptado para diferentes tamanhos de tela

## 🏗️ Arquitetura

O projeto segue a arquitetura MVC:

- **Model**: Gerencia os dados das moedas e cotações
- **View**: Interface do usuário (HomePage)
- **Controller**: Lógica de negócio para conversões (HomeController)

```
lib/
├── app/
│   ├── components/
│   │   └── currency_box.dart
│   ├── controllers/
│   │   └── home_controller.dart
│   ├── models/
│   │   └── currency_model.dart
│   └── views/
│       └── home_page.dart
├── assets/
│   └── images/
│       └── logo.png
└── test/
    └── [testes unitários]
```

## 🚀 Como Executar

### Pré-requisitos

- Flutter SDK ^3.9.2
- Dart SDK
- Android Studio / VS Code

### Instalação

1. Clone o repositório:

```bash
git clone [https://github.com/WarleyCoutinho/conversor_moedas.git]
cd conversor_moedas
```

2. Instale as dependências:

```bash
flutter pub get
```

3. Execute o aplicativo:

```bash
flutter run
```

### Executar Testes

Para executar os testes unitários:

```bash
flutter test
```

## 💰 Moedas Suportadas

O aplicativo suporta conversões entre as principais moedas mundiais:

- Real Brasileiro (BRL)
- Dólar Americano (USD)
- Euro (EUR)
- Bitcoin (BTC)

_As cotações são dados mocados e foram atualizadas em 27/09/2025._

## 🧪 Testes

O projeto inclui testes unitários que cobrem:

- Conversões entre moedas
- Validações de entrada
- Funcionalidades do controller
- Modelos de dados

## 📦 Dependências Principais

- `flutter`: Framework principal
- `cupertino_icons`: Ícones iOS
- `flutter_test`: Testes unitários
- `flutter_lints`: Análise de código

## 🤝 Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para:

1. Fazer um fork do projeto
2. Criar uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abrir um Pull Request

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## ✏️ Autor

**Warley Coutinho**

- GitHub: [@WarleyCoutinho](https://github.com/WarleyCoutinho)
- LinkedIn: [Warley Coutinho](https://www.linkedin.com/in/coutinho-warley/)
- Demostração[Conversor-de-moedas](assets/images/demostracao.png)
- Projeto ====> [Projeto](https://github.com/WarleyCoutinho/conversor_moedas/blob/5ed9caecc480016c026ef1aaeaf14ce7d0d82ad4/assets/images/demostracao.png)

---

## 🌟 Mostre seu apoio

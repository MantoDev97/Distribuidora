import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mantodistri/src/pages/auth/sing_up_screen.dart';
import '../../config/custom_colors.dart';
import '../base/base_screen.dart';
import '../common_widgets/custon_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.CustomSwathColor.shade800,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //NOME DO APP
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(
                            fontSize: 70,
                          ),
                          children: [
                            const TextSpan(
                              text: 'Cerve',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'já',
                              style: TextStyle(
                                color: CustomColors.CustomContrastColors,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //CATEGORIAS
                      SizedBox(
                        height: 30,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                          child: AnimatedTextKit(
                            pause: Duration.zero,
                            repeatForever: true,
                            animatedTexts: [
                              FadeAnimatedText('cerveja'),
                              FadeAnimatedText('wisk'),
                              FadeAnimatedText('vodka'),
                              FadeAnimatedText('carne'),
                              FadeAnimatedText('petiscos'),
                              //FadeAnimatedText('Laticinios'),
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
              //Formulário
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //EMAIL
                      const CustonTextField(
                        icon: Icons.email,
                        label: 'Email',
                      ),

                      //SENHA
                      const CustonTextField(
                        icon: Icons.lock,
                        label: 'Senha',
                        isSecret: true,
                      ),

                      //BOTÃO ENTRAR
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: CustomColors.CustomContrastColors,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (c) {
                              return const BaseScreen();
                            }));
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      //ESQUECEU A SENHA?
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                                color: CustomColors.CustomContrastColors),
                          ),
                        ),
                      ),

                      //DIVISOR E OU
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text('ou'),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //BOTÃO CRIAR CONTA
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              side: BorderSide(
                                width: 2,
                                color: CustomColors.CustomContrastColors,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (c) {
                                return SingUpScreen();
                              }));
                            },
                            child: Text(
                              'Criar Conta',
                              style: TextStyle(
                                fontSize: 18,
                                color: CustomColors.CustomContrastColors,
                              ),
                            )),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

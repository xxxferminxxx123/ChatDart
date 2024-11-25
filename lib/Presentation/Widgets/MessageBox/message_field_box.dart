import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue;

  const MessageFieldBox({
    super.key
    ,required this.onValue
  });

  @override
  Widget build(BuildContext context) {

    final textController= TextEditingController();
    final focusNode = FocusNode();

    final colors= Theme.of(context).colorScheme;

    final outlinesInputBorder = UnderlineInputBorder(
          borderSide: BorderSide(color: colors.primary),
          borderRadius: BorderRadius.circular(20)
    );

    final inputDecoration= InputDecoration(
      hintText: 'Ingresa tu texto aqui.',
        enabledBorder: outlinesInputBorder,
        focusedBorder: outlinesInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon : const Icon(Icons.send),
          onPressed: (){
              final textValue= textController.value.text;
              textController.clear();
              onValue(textValue);
        },
        ) 
      );

    return TextFormField(
      onTapOutside: (event){
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },

    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(Screen3());
}

class Screen1 extends StatelessWidget {
  Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.only(top: 56),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCard(
                  title: 'Попали в трудную ситуацию?',
                  subTitle: 'Телефоны служб',
                ),
                CustomCard(
                    title: 'Тематически провести день?',
                    subTitle: 'Маршруты прогулок'),
                CustomCard(
                    title: 'Легко общаться с жителями?',
                    subTitle: 'Выучите язык'),
                CustomCard(
                    title: 'Хотите больше увидеть в России?',
                    subTitle: 'Поездка по городам'),
                CustomCard(
                    title: 'Нравится духовно развиваться?',
                    subTitle: 'Музеи города'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  String title;
  String subTitle;
  CustomCard({
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: 343,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff59A4F2),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 76, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        appBar: AppBar(
          title: Container(
            alignment: Alignment.centerRight,
            child: Text(
              'Редактировать',
              style: TextStyle(color: Color(0xff333333), fontSize: 16),
            ),
          ),
          backgroundColor: Color(0xffF9F9F9),
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff59A4F2),
          ),
        ),
        body: Column(
          children: [
            CustomTextt(title: 'Название', subTitle: 'Водитель такси'),
            CustomTextt(title: 'Телефон', subTitle: '8-911-111-22-33'),
            CustomTextt(
                title: 'Описание', subTitle: 'Водитель Владимир; четные даты'),
            SizedBox(height: 40),
            CustomButton(title: 'Добавить'),
            SizedBox(height: 28),
            CustomButton(title: 'Удалить'),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  String title;
  CustomButton({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: 49,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style:
            ElevatedButton.styleFrom(primary: Color(0xff59A4F2), elevation: 0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}

class CustomTextt extends StatelessWidget {
  String title;
  String subTitle;
  CustomTextt({
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 42.61),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                constraints: BoxConstraints(maxWidth: 343),
                hintText: subTitle,
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Color.fromRGBO(51, 51, 51, 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        appBar: AppBar(
          backgroundColor: Color(0xffF9F9F9),
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff59A4F2),
          ),
          centerTitle: true,
          title: Text(
            'список фраз',
            style: TextStyle(
                color: Color(0xff333333), fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  constraints: BoxConstraints(maxWidth: 343, maxHeight: 44),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffC4C4C4),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomButtonText(
                mainText: 'I want to call a taxi',
                firstButtonText: 'transport',
                secondButtonText: 'restaurant',
              ),
              SizedBox(height: 32),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              CustomButtonText(
                mainText: 'I want to call a taxi',
                firstButtonText: 'transport',
                secondButtonText: 'restaurant',
              ),
              SizedBox(height: 32),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              CustomButtonText(
                mainText: 'I want to call a taxi',
                firstButtonText: 'transport',
                secondButtonText: 'restaurant',
              ),
              SizedBox(height: 32),
              Divider(
                color: Color(0xffC4C4C4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtonText extends StatelessWidget {
  String mainText;
  String firstButtonText;
  String secondButtonText;
  CustomButtonText({
    required this.mainText,
    required this.firstButtonText,
    required this.secondButtonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            mainText,
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 96,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF1564A),
                ),
                child: Text(
                  firstButtonText,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 96,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF1564A),
                ),
                child: Text(
                  secondButtonText,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(width: 130),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff59A4F2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff59A4F2),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff59A4F2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

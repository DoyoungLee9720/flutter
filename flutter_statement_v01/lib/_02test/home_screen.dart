import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/_02test/book_cart_page.dart';
import 'package:flutter_statement_v01/_02test/book_list_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  List<String> mySelectedBook = [];
  void _toggleSaveStates(String book) {
    setState(() {
      if (mySelectedBook.contains(book)) {
        mySelectedBook.remove(book);
      } else {
        mySelectedBook.add(book);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('텐코에 서재'),
          backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        ),
        body: IndexedStack(
          index: pageIndex,
          children: [
            BookListPage(
              onToggleSaved: _toggleSaveStates,
              selectedBook: mySelectedBook,
            ),
            BookCartPage(
                // mySelectedBooks: mySelectedBooks,
                ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'book-list',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'cart',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:front/ui/components/components.dart';
import 'package:front/utils/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(8.0),
        child: Row(
            children: [
              IconButton(
                  onPressed: (){
                    showSearch(
                        context: context,
                        delegate: CustomSearchDelegate());
                    },
                  icon: Icon(Icons.search_rounded, size: 20, color: Colors.grey)),
              //SimpleInputForm(labelText: Constants.BLANK, hint: Constants.SEARCH_BAR_HINT, width: 300, inputWidth: 290)
            ],
        ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }
  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }

}
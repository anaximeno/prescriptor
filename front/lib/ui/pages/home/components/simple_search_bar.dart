import 'package:flutter/material.dart';
import 'package:front/ui/components/components.dart';
import 'package:front/utils/constants.dart';

class SimpleSearchBar extends StatelessWidget {
  const SimpleSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
            children: [
              /*IconButton(
                  onPressed: (){
                    showSearch(
                        context: context,
                        delegate: CustomSearchDelegate());
                    },
                  icon: Icon(Icons.search_rounded, size: 20, color: Colors.grey)),*/
              Icon(Icons.search_rounded, size: 20, color: Color(Constants.DEFAULT_2_BLUE)),
              SimpleInputForm(writeEnable: true,labelText: Constants.BLANK, hint: Constants.SEARCH_PRESCRIPTION_BAR_HINT, width: 500, inputWidth: 490),
            ],
        ),
    );
  }
}

//class that control the search by the video:https://www.youtube.com/watch?v=KF1KMfQOpjM
/*
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

}*/

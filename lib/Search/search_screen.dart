import 'package:flutter/material.dart';
import 'package:google_clone/Search/seaarch_tabs.dart';
import 'package:google_clone/Search/search_footer.dart';
import 'package:google_clone/Search/search_header.dart';

import 'package:google_clone/Services/api_service.dart';
import 'package:google_clone/responsive/colors.dart';

import '../responsive/search_result_component.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchHeader(),
              const Padding(
                padding: EdgeInsets.only(left: 150),
                child: SearchTabs(),
              ),
              const Divider(
                thickness: 0.3,
                height: 0,
              ),

              FutureBuilder(
                  future: ApiService().fetchData(queryTerm: 'queryTerm'),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 150, top: 12),
                            child: Text(
                              'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results ${snapshot.data?['searchInformation']['formattedSearchTime']}',
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xFF70757a)),
                            ),
                          ),
                          ListView.builder(
                            itemCount: snapshot.data?['items'].length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 150, top: 10),
                                child: SearchResultComponent(
                                  desc: snapshot.data?['items'][index]
                                      ['snippet'],
                                  link: snapshot.data?['items'][index]['link'],
                                  linkToGo: snapshot.data?['items'][index]
                                      ['formattedUrl'],
                                  text: snapshot.data?['items'][index]['title'],
                                ),
                              );
                            },
                          )
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),

              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        if (start != '0') {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SearchScreen(
                                    searchQuery: searchQuery,
                                    start: (int.parse(start) - 10).toString())),
                          );
                        }
                      },
                      child: const Text(
                        '< Prev',
                        style: TextStyle(fontSize: 15, color: blueColor),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => SearchScreen(
                                  searchQuery: searchQuery,
                                  start: (int.parse(start) + 10).toString())),
                        );
                      },
                      child: const Text(
                        'Next >',
                        style: TextStyle(fontSize: 15, color: blueColor),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SearchFooter(),
              // SearchResults(),
              // Pagination(),
            ]),
      ),
    );
  }
}

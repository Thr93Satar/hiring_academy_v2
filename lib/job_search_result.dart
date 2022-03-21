import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class User {
  final String? name;
  final String? avatar;
  User({this.name, this.avatar});
}

List<User> userList = [
  User(name: "Jon", avatar: ""),
  User(name: "Lindsey ", avatar: ""),
  User(name: "Valarie ", avatar: ""),
  User(name: "Elyse ", avatar: ""),
  User(name: "Ethel ", avatar: ""),
  User(name: "Emelyan ", avatar: ""),
  User(name: "Catherine ", avatar: ""),
  User(name: "Stepanida  ", avatar: ""),
  User(name: "Carolina ", avatar: ""),
  User(name: "Nail  ", avatar: ""),
  User(name: "Kamil ", avatar: ""),
  User(name: "Mariana ", avatar: ""),
  User(name: "Katerina ", avatar: ""),
];

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void openFilterDialog() async {
      await FilterListDialog.display<User>(
        context,
        listData: userList,
        selectedListData: userList,
        choiceChipLabel: (user) => user!.name,
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (user, query) {
          return user.name!.toLowerCase().contains(query.toLowerCase());
        },
        onApplyButtonClick: (list) {
          setState(() {
            userList = List.from(list!);
          });
          Navigator.pop(context);
        },
        choiceChipBuilder: (context, item, isSelected) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected! ? Colors.deepPurple : Colors.grey[300]!,
                )),
            child: Text(
              item.name,
              style: TextStyle(
                  color: isSelected ? Colors.deepPurple : Colors.grey[300]),
            ),
          );
        },
      );
    };
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: themecolor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: const Text(
          'Hiring Academy',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.account_circle,
                size: 25,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: elementcolor,
                      borderRadius: const BorderRadius.all(Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Look for a job',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.work,
                              size: 25,
                              color: Colors.deepPurple,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 10.0),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                controller: controller,
                                decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                      onPressed: (){
                                        Navigator.pushReplacementNamed(context, '/job_search_result');
                                      },
                                      icon: const Icon(Icons.search)),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.clear),
                                        onPressed: () {
                                          controller.clear();
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.filter_alt),
                                        onPressed: openFilterDialog,
                                      ),
                                    ],
                                  ),
                                  hintText: 'Search...',
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                              'List of jobs that match your account criteria'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 140.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Job Title'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('Company'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('Date'),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushReplacementNamed(context, '/view_application');
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 250,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Colors.deepPurple,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text('Computer Engineer',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ) ,
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text('Asus',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ) ,
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Text('25/2/2022',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ) ,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Divider(
                                  height: 10,
                                );
                              },
                              itemCount: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

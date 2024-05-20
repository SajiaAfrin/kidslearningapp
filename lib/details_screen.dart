import 'package:flutter/material.dart';
class StorySelectionScreen extends StatefulWidget {
  @override
  _StorySelectionScreenState createState() => _StorySelectionScreenState();
}

class _StorySelectionScreenState extends State<StorySelectionScreen> {
  List<Story> _stories = [];
  List<Story> _filteredStories = [];
  String _selectedAgeGroup = "All";

  @override
  void initState() {
    super.initState();
    _stories = Story.getStories(); // replace with your own data source
    _filteredStories = _stories;
  }

  void _applyFilter() {
    if (_selectedAgeGroup == "All") {
      setState(() {
        _filteredStories = _stories;
      });
    } else {
      setState(() {
        _filteredStories = _stories.where((story) => story.ageGroup == _selectedAgeGroup).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Story Selection Screen"),
      ),
      body: Column(
        children: [
          // Age group filtering interface
          DropdownButton<String>(
            value: _selectedAgeGroup,
            onChanged: (value) {
              setState(() {
                _selectedAgeGroup = value!;
                _applyFilter();
              });
            },
            items: [
              DropdownMenuItem(
                value: "All",
                child: Text("All"),
              ),
              DropdownMenuItem(
                value: "0-3 years",
                child: Text("0-3 years"),
              ),
              DropdownMenuItem(
                value: "4-6 years",
                child: Text("4-6 years"),
              ),
              DropdownMenuItem(
                value: "7-10 years",
                child: Text("7-10 years"),
              ),
              DropdownMenuItem(
                value: "11 and up",
                child: Text("11 and up"),
              ),
            ],
          ),
          // List view of filtered stories
          Expanded(
            child: ListView.builder(
              itemCount: _filteredStories.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredStories[index].title),
                  subtitle: Text(_filteredStories[index].author),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Story {
  String title;
  String author;
  String ageGroup;

  Story({required this.title, required this.author, required this.ageGroup});

  static List<Story> getStories() {
    // replace with your own data source
    return [
      Story(title: "The Lion and the Mouse", author: "Aesop", ageGroup: "4-6 years"),
      Story(title: "The Clever Monkey", author: "Indian Folklore", ageGroup: "3-5 years"),
    ];}}
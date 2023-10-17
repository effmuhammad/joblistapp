import 'package:flutter/material.dart';

class DHeader extends StatelessWidget {
  const DHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Theme.of(context).colorScheme.secondary,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Job List App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'by Effry Muhammad',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      color: Colors.white,
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

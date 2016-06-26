classroom = {
  podium: {
    material: "oak",
    gavel_present: true
  },
  desk1: {
    assigned: true,
    name: "Steven Rogers",
    grade: 5,
    writing_utensils: {
      pencils: 2,
      pens: 1,
      highlighters: {
        wide: "yellow",
        thin: "blue"
      },
    },
    books: [
      "Trump: The Art of the Deal", "How to Make Friends and Influence People", "The Diary of a Wimpy Kid"]
  },
  desk2: {
    assigned: false,
    gum_under_chair: true,
    books: ["Field of Dreams"]
  },
  desk3: {
    assigned: true,
    name: "Rio Sam",
    grade: 3,
    writing_utensils: {
      pencils: 0,
      pens: 5,
      highlighters: {
        wide: "pink",
        thin: "orange"
        },

    },
    books: ["Captain Underpants and the Attack of the Talking Toilets", "Captain Underpants and the Terrifying Return of Tippy Tinkletrousers"]
  }
}

# Access information from nested data structure

p classroom[:desk2][:name] = "Leo Kosinski"
p classroom[:desk2][:grade] = 7
p classroom[:desk2][:assigned] = true
p classroom[:desk2][:books].push("Where the Red Ferns Grow")
p classroom[:desk1][:writing_utensils].keys.sort.reverse
p classroom[:desk3][:writing_utensils].keys.sort


class OneMealModel {
  final dynamic id;
  final String title;
  final String image;
  final dynamic readyInMinutes;
  final dynamic servings;
  final String sourceUrl;
  final List<Ingredient> ingredients;
  final Nutrition nutrition;
  final List<InstructionStep> instructions; // New field

  OneMealModel({
    required this.id,
    required this.title,
    required this.image,
    required this.readyInMinutes,
    required this.servings,
    required this.sourceUrl,
    required this.ingredients,
    required this.nutrition,
    required this.instructions,
  });

  factory OneMealModel.fromJson(json) {
    // Parsing the list of ingredients
    List<Ingredient> ingredientsList = (json['extendedIngredients'] as List)
        .map((ingredient) => Ingredient.fromJson(ingredient))
        .toList();

    // Parsing nutrition information
    Nutrition nutrition = Nutrition.fromJson(json['nutrition']);

    // Parsing instructions
    List<InstructionStep> instructionsList =
        (json['analyzedInstructions'] as List)
            .expand((instruction) =>
                (instruction['steps'] as List)) // Combine all steps
            .map((step) => InstructionStep.fromJson(step))
            .toList();

    return OneMealModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      readyInMinutes: json['readyInMinutes'],
      servings: json['servings'],
      sourceUrl: json['sourceUrl'],
      ingredients: ingredientsList,
      nutrition: nutrition,
      instructions: instructionsList, // Assign parsed instructions
    );
  }
}

class Ingredient {
  final dynamic id;
  final String name;
  final dynamic amount;
  final String unit;
  final String original;
  final String imageUrl;

  Ingredient({
    required this.id,
    required this.name,
    required this.amount,
    required this.unit,
    required this.original,
    required this.imageUrl,
  });

  factory Ingredient.fromJson(json) {
    return Ingredient(
      id: json['id'],
      name: json['name'],
      amount: json['amount'],
      unit: json['unit'],
      original: json['original'],
      imageUrl: json['image'] ??
          'assets/webvilla-hv1MrBzGGNY-unsplash.jpg', // Handle null image
    );
  }
}

class Nutrition {
  final dynamic calories;
  final dynamic carbohydrates;
  final dynamic fat;
  final dynamic protein;
  final dynamic fiber;
  final dynamic sugar;

  Nutrition({
    required this.calories,
    required this.carbohydrates,
    required this.fat,
    required this.protein,
    required this.fiber,
    required this.sugar,
  });

  factory Nutrition.fromJson(json) {
    return Nutrition(
      calories: json['calories'],
      carbohydrates: json['carbohydrates'],
      fat: json['fat'],
      protein: json['protein'],
      fiber: json['fiber'],
      sugar: json['sugar'],
    );
  }
}

class InstructionStep {
  final dynamic number;
  final String step;

  InstructionStep({
    required this.number,
    required this.step,
  });

  factory InstructionStep.fromJson(json) {
    return InstructionStep(
      number: json['number'],
      step: json['step'],
    );
  }
}

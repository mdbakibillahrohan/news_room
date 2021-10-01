import 'package:news_app/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];

  CategoryModel category = CategoryModel();
  category.categoryName = "Business";
  category.imageUrl =
      "https://images.unsplash.com/photo-1462206092226-f46025ffe607?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1174&q=80";
  categories.add(category);

  category = CategoryModel();
  category.categoryName = "Technology";
  category.imageUrl =
      "https://images.unsplash.com/photo-1518770660439-4636190af475?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80";
  categories.add(category);

  category = CategoryModel();
  category.categoryName = "Sports";
  category.imageUrl =
      "https://images.unsplash.com/photo-1484482340112-e1e2682b4856?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1176&q=80";
  categories.add(category);

  category = CategoryModel();
  category.categoryName = "Politics";
  category.imageUrl =
      "https://images.unsplash.com/photo-1541872703-74c5e44368f9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1106&q=80";
  categories.add(category);

  return categories;
}

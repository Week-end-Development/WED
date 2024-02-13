"""
██╗    ██╗███████╗███████╗██╗  ██╗     ███████╗███╗   ██╗██████╗      ██████╗ ███████╗██╗   ██╗███████╗
██║    ██║██╔════╝██╔════╝██║ ██╔╝     ██╔════╝████╗  ██║██╔══██╗     ██╔══██╗██╔════╝██║   ██║██╔════╝
██║ █╗ ██║█████╗  █████╗  █████╔╝█████╗█████╗  ██╔██╗ ██║██║  ██║     ██║  ██║█████╗  ██║   ██║███████╗
██║███╗██║██╔══╝  ██╔══╝  ██╔═██╗╚════╝██╔══╝  ██║╚██╗██║██║  ██║     ██║  ██║██╔══╝  ╚██╗ ██╔╝╚════██║
╚███╔███╔╝███████╗███████╗██║  ██╗     ███████╗██║ ╚████║██████╔╝     ██████╔╝███████╗ ╚████╔╝ ███████║
 ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝     ╚══════╝╚═╝  ╚═══╝╚═════╝      ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝
######################WEEK#END#DEVELOPMENT######################
title:      "Klasyfikacja kwiatów Iris"
author:     ["BO$", "Nikolas"]
date:       09/10/2023
tags:       ["ai", "ml"]
copyright:  "All rights reserved (c) 2024  WEEK-END DEVELOPMENT"
version:    1.0
================================================================
TASK_No:  1
TOPIC:    Klasyfikacja kwiatów Iris za pomocą uczenia maszynowego.
----------------------------------------------------------------
TASK DESCRIPTION:
  Twoim zadaniem jest stworzenie modelu uczenia maszynowego, który będzie klasyfikował gatunki kwiatów Iris na podstawie ich cech morfologicznych. Zbiór danych Iris zawiera informacje o czterech cechach: długości i szerokości płatków oraz długości i szerokości działek kielicha dla trzech różnych gatunków: Iris setosa, Iris versicolor i Iris virginica.
----------------------------------------------------------------
SUBTASKS:
1.  [v]	Przygotowanie danych: Zaimportuj zbiór danych Iris i podziel go na zbiór treningowy i testowy. Sprawdź, czy dane są zbalansowane pod względem liczby przykładów dla każdego gatunku.
2.	[v] Eksploracja danych: Przeanalizuj dane, wykonując wizualizacje, takie jak wykresy punktowe i histogramy, aby zrozumieć relacje między cechami a klasami. Zidentyfikuj ewentualne zależności i różnice między gatunkami.
3.	[v] Wybór modelu: Wybierz odpowiedni model klasyfikacji do zadania. Możesz rozważyć algorytmy takie jak K-nearest neighbors (k najbliższych sąsiadów), Support Vector Machines (SVM) lub Random Forests.
4.	[v] Trenowanie modelu: Skonfiguruj model, wybierając odpowiednie hiperparametry i funkcję straty. Trenuj model na zbiorze treningowym i monitoruj postęp uczenia. Eksperymentuj z różnymi hiperparametrami, takimi jak liczba sąsiadów w KNN czy parametry kernela w SVM.
5.	[v] Ocena modelu: Ocenić wydajność modelu na zbiorze testowym. Oblicz metryki oceny, takie jak dokładność klasyfikacji, precyzja, czułość i krzywa ROC. Porównaj wyniki dla różnych modeli i wybierz ten, który osiąga najlepsze wyniki.
6.	[v] Interpretacja wyników: Przeanalizuj wyniki modelu i zastanów się, jakie cechy mają największy wpływ na klasyfikację gatunków Iris. Możesz wykorzystać miary ważności cech, takie jak współczynniki SVM lub ważności cech w Random Forests.
7.	[v] Walidacja krzyżowa: Przeprowadź walidację krzyżową, aby sprawdzić stabilność i ogólną wydajność modelu. Oceń wydajność modelu na różnych podziałach danych treningowych i testowych.
8.	[v] Optymalizacja modelu: możesz eksperymentować z różnymi technikami regularyzacji, skalowaniem danych czy technikami dostrajania hiperparametrów, takimi jak Grid Search lub Random Search.
================================================================
REQUIRED COMPONENTS:
  pip install pandas, scikit-learn, matplotlib, seaborn
######################WEEK#END#DEVELOPMENT######################
"""
import pandas
import matplotlib.pyplot
import seaborn

from sklearn.model_selection import train_test_split, cross_val_score, GridSearchCV
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix, recall_score, roc_auc_score, precision_score
from sklearn.neighbors import KNeighborsClassifier
######################WEEK#END#DEVELOPMENT######################
class bcolors:
  HEADER = '\033[95m'
  OKBLUE = '\033[94m'
  OKCYAN = '\033[96m'
  OKGREEN = '\033[92m'
  WARNING = '\033[93m'
  FAIL = '\033[91m'

  RESET = "\033[0m"
  BOLD = "\033[1m"
  ITALIC = "\033[3m"
  UNDERLINE = "\033[4m"

  BLACK = "\033[30m"
  RED = "\033[31m"
  GREEN = "\033[32m"
  YELLOW = "\033[33m"
  BLUE = "\033[34m"
  MAGENTA = "\033[35m"
  CYAN = "\033[36m"
  WHITE = "\033[37m"
######################WEEK#END#DEVELOPMENT######################
# Wczytanie pliku
iris_csv_file = pandas.read_csv("./Iris.csv") # Ścieżka do pliku
print(iris_csv_file.head())
######################WEEK#END#DEVELOPMENT######################
# region SUBTASK01 =============================================
print(bcolors.WARNING + "### SUBTASK01 ###" + bcolors.RESET)
# Podział danych na treningowy(70%) i testowy (30%)
X = iris_csv_file.iloc[:, :-1]  # Wszystkie kolumny z wyjątkiem ostatniej to cechy
y = iris_csv_file.iloc[:, -1]   # Ostatnia kolumna to etykiety gatunków

# Podział danych na treningowy(70%) i testowy (30%)
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=50)

# Sprawdzenie danych + wyświetlenie
counts_train = y_train.value_counts()
counts_test = y_test.value_counts()
print("Liczba przykładów dla każdego gatunku w zbiorze treningowym:")
print(counts_train)
print("\nLiczba przykładów dla każdego gatunku w zbiorze testowym:")
print(counts_test)
# endregion ################WEEK#END#DEVELOPMENT################
# region SUBTASK02 =============================================
print(bcolors.WARNING + "### SUBTASK02 ###" + bcolors.RESET)
# wykres punktowy dla 2 cech gatunków
seaborn.scatterplot(x="PetalLengthCm", y="PetalWidthCm", hue="Species", data=iris_csv_file)
matplotlib.pyplot.title("Wykres punktowy dla długości i szerokości płatka")
matplotlib.pyplot.show()
# Histogram
histogram = seaborn.FacetGrid(iris_csv_file, hue="Species")
histogram.map(seaborn.histplot, "SepalLengthCm", bins=20)
histogram.add_legend()
matplotlib.pyplot.title("Histogram długości działki kielicha dla gatównków")
matplotlib.pyplot.show()
# Macierz
seaborn.pairplot(iris_csv_file.drop('Id', axis=1), hue="Species")
matplotlib.pyplot.title("Macierz wykresów punktowych dla wszystkich cech")
matplotlib.pyplot.show()
# endregion ################WEEK#END#DEVELOPMENT################
# region SUBTASK03 =============================================
print(bcolors.WARNING + "### SUBTASK03 ###" + bcolors.RESET)
# Utworzenie modelu Random Forest
rForest = RandomForestClassifier(n_estimators=150, random_state=42)
rForest.fit(X_train, y_train) # Trenowanie modelu
y_pred = rForest.predict(X_test) # Predykcja

#Ocena dokładności
accuracy = accuracy_score(y_test, y_pred)
print(f"Dokładność modelu rForest: {accuracy:.2f}")
#Macierz pomyłek
erMatrix = confusion_matrix(y_test, y_pred)
print("ERROR MATRIX")
print(erMatrix)

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()
y = le.fit_transform(y)

# Wygenerowanie wykresu macierzy pomyłek
matplotlib.pyplot.figure(figsize=(8, 6))
seaborn.heatmap(erMatrix, annot=True, fmt='d', cmap='Blues', xticklabels=le.classes_, yticklabels=le.classes_)
matplotlib.pyplot.xlabel('Przewidywane')
matplotlib.pyplot.ylabel('Rzeczywiste')
matplotlib.pyplot.title(f'Error Matrix')
matplotlib.pyplot.show()

# Raport Klasyfikacji
class_report = classification_report(y_test, y_pred, target_names=iris_csv_file["Species"].unique())
print("Raport Kalsyfikacji:")
print(class_report)
# endregion ################WEEK#END#DEVELOPMENT################
# region SUBTASK04 =============================================
print(bcolors.WARNING + "### SUBTASK04 ###" + bcolors.RESET)
# Przykład różnych zestawów hiperparametrów
hyperparameters = [
  {"n_estimators": 1, "max_depth": None, "min_samples_split": .9, "min_samples_leaf": .1},
  #{"n_estimators": 1, "max_depth": None, "min_samples_split": .2, "min_samples_leaf": .1},
  {"n_estimators": 1, "max_depth": None, "min_samples_split": .5, "min_samples_leaf": 1},
  {"n_estimators": 1, "max_depth": None, "min_samples_split": 2, "min_samples_leaf": 1},
  {"n_estimators": 2, "max_depth": None, "min_samples_split": 2, "min_samples_leaf": 1},
  {"n_estimators": 2, "max_depth": None, "min_samples_split": 2, "min_samples_leaf": 2},
  {"n_estimators": 8, "max_depth": 8, "min_samples_split": .01, "min_samples_leaf": .01},
  #{"n_estimators": 10, "max_depth": None, "min_samples_split": 2, "min_samples_leaf": 1},
  {"n_estimators": 50, "max_depth": None, "min_samples_split": 2, "min_samples_leaf": 1},
  {"n_estimators": 100, "max_depth": 10, "min_samples_split": 2, "min_samples_leaf": 1},
  #{"n_estimators": 100, "max_depth": 5, "min_samples_split": 2, "min_samples_leaf": 2},
  {"n_estimators": 150, "max_depth": 20, "min_samples_split": 4, "min_samples_leaf": 4},
]

for params in hyperparameters:
  rf_classifier = RandomForestClassifier(**params, random_state=42)
  rf_classifier.fit(X_train, y_train)
  y_pred = rf_classifier.predict(X_test)
  accuracy = accuracy_score(y_test, y_pred)
  print(f"Hiperparametry: {params}")
  print(f"Dokładność: {accuracy:.2f}")
# endregion ################WEEK#END#DEVELOPMENT################
# region SUBTASK05 =============================================
print(bcolors.WARNING + "### SUBTASK05 ###" + bcolors.RESET)
# random Forest
rf_classifier = RandomForestClassifier(n_estimators=150, random_state=42)
rf_classifier.fit(X_train, y_train)
y_pred_rf = rf_classifier.predict(X_test)

# model K-NN
from sklearn.neighbors import KNeighborsClassifier
knn_clasifier = KNeighborsClassifier(n_neighbors=3)
knn_clasifier.fit(X_train, y_train)
y_pred_knn = knn_clasifier.predict(X_test)

# model SVC
from sklearn.svm import SVC
svm_clasifier = SVC(kernel='linear', C=1)
svm_clasifier.fit(X_train, y_train)
y_pred_svm = svm_clasifier.predict(X_test)

from sklearn.preprocessing import LabelBinarizer
label_binarizer = LabelBinarizer()

# metryki modelów
def evaluate_model(y_true, y_pred):
  accuracy = accuracy_score(y_true, y_pred)
  precision = precision_score(y_true, y_pred, average='weighted')
  recall = recall_score(y_true, y_pred, average='weighted')
  y_test_one_hot = label_binarizer.fit_transform(y_true)
  y_pred_rf_one_hot = label_binarizer.transform(y_pred)

  # Calculate ROC AUC for each class
  roc_auc = roc_auc_score(y_test_one_hot, y_pred_rf_one_hot, average='weighted', multi_class='ovr')

  return accuracy, precision, recall, roc_auc

# Oceniaj modele
accuracy_rf, precision_rf, recall_rf, roc_auc_rf = evaluate_model(y_test, y_pred_rf)
accuracy_knn, precision_knn, recall_knn, roc_auc_knn = evaluate_model(y_test, y_pred_knn)
accuracy_svm, precision_svm, recall_svm, roc_auc_svm = evaluate_model(y_test, y_pred_svm)

# Wyniki dla modelu Random Forest
print("Wyniki dla modelu Random Forest:")
print(f"Dokładność: {accuracy_rf:.2f}")
print(f"Precyzja: {precision_rf:.2f}")
print(f"Czułość: {recall_rf:.2f}")
print(f"Krzywa ROC AUC: {roc_auc_rf:.2f}")
print()

# Wyniki dla modelu K-NN
print("Wyniki dla modelu K-NN:")
print(f"Dokładność: {accuracy_knn:.2f}")
print(f"Precyzja: {precision_knn:.2f}")
print(f"Czułość: {recall_knn:.2f}")
print(f"Krzywa ROC AUC: {roc_auc_knn:.2f}")
print()

# Wyniki dla modelu SVM
print("Wyniki dla modelu SVM:")
print(f"Dokładność: {accuracy_svm:.2f}")
print(f"Precyzja: {precision_svm:.2f}")
print(f"Czułość: {recall_svm:.2f}")
print(f"Krzywa ROC AUC: {roc_auc_svm:.2f}")

# endregion ################WEEK#END#DEVELOPMENT################
# region SUBTASK06 =============================================
print(bcolors.WARNING + "### SUBTASK06 ###" + bcolors.RESET)

# Uzyskaj ważność cech z modelu Random Forest
feature_importance = rf_classifier.feature_importances_

# Przyporządkuj ważność cech do odpowiadających im nazw cech
feature_names = iris_csv_file.columns[1:-1]
feature_importance_dict = dict(zip(feature_names, feature_importance))

# Wyświetl ważność cech
print("Ważność cech w modelu Random Forest:")
for feature, importance in feature_importance_dict.items():
  print(f"{feature}: {importance:.2f}")

# Pobierz współczynniki SVM
svm_coef = svm_clasifier.coef_

# Przyporządkuj współczynniki cech do odpowiadających im nazw cech
feature_names = iris_csv_file.columns[1:-1]  # Zakładając, że ostatnia kolumna to etykiety klas

# Wyświetl współczynniki cech dla każdej klasy
for class_index, class_coef in enumerate(svm_coef):
  print(f"Współczynniki SVM dla klasy {class_index}:")
  for feature_index, feature_coef in enumerate(class_coef):
    print(f"{feature_names[feature_index]}: {feature_coef:.2f}")

# endregion ################WEEK#END#DEVELOPMENT################
# region SUBTASK07 =============================================
print(bcolors.WARNING + "### SUBTASK07 ###" + bcolors.RESET)

scores = cross_val_score(svm_clasifier, X, y, cv=8)
# Wyświetl wyniki walidacji krzyżowej
print("Wyniki walidacji krzyżowej:")
for fold, score in enumerate(scores, 1):
  print(f"Fold {fold}: {score:.2f}")

# Oblicz średnią wyników
average_score = scores.mean()
print(f"Średnia dokładność: {average_score:.2f}")
# endregion ################WEEK#END#DEVELOPMENT################
# region SUBTASK08 =============================================
print(bcolors.WARNING + "### SUBTASK08 ###" + bcolors.RESET)

param_grid = {
  'C': [.1, 1, 10],
  'kernel': ['linear', 'rbf', 'poly'],
  'gamma': ['scale', 'auto'] + [.001, .01, .1, 1]
}

# Utwórz obiekt GridSearchCV
grid_search = GridSearchCV(estimator=svm_clasifier, param_grid=param_grid, cv=5)

# Przeprowadź proces wyszukiwania hiperparametrów na zbiorze treningowym
grid_search.fit(X_train, y_train)

# Wyświetl najlepsze znalezione hiperparametry
best_params = grid_search.best_params_
print("Najlepsze hiperparametry znalezione przez Grid Search:")
print(best_params)

# Użyj modelu z najlepszymi hiperparametrami do oceny na zbiorze testowym
best_model = grid_search.best_estimator_
y_pred_best = best_model.predict(X_test)

# Oceń wyniki modelu z najlepszymi hiperparametrami
accuracy_best = accuracy_score(y_test, y_pred_best)
print(f"Dokładność modelu z najlepszymi hiperparametrami: {accuracy_best:.2f}")

rf_param_grid = {
  'n_estimators': [1, 10, 50],
  'max_depth': [None, 10, 20],
  'min_samples_split': [.5, 2, 4],
  'min_samples_leaf': [1, 2]
}

# Utwórz obiekt GridSearchCV
grid_search_rf = GridSearchCV(estimator=rf_classifier, param_grid=rf_param_grid, cv=5)

# Przeprowadź proces wyszukiwania hiperparametrów na zbiorze treningowym
grid_search_rf.fit(X_train, y_train)

# Wyświetl najlepsze znalezione hiperparametry
best_params_rf = grid_search_rf.best_params_
print("Najlepsze hiperparametry znalezione przez Grid Search dla Random Forest:")
print(best_params_rf)

# Użyj modelu z najlepszymi hiperparametrami do oceny na zbiorze testowym
best_model_rf = grid_search_rf.best_estimator_
y_pred_best_rf = best_model_rf.predict(X_test)

# Oceń wyniki modelu z najlepszymi hiperparametrami
accuracy_best_rf = accuracy_score(y_test, y_pred_best_rf)
print(f"Dokładność modelu Random Forest z najlepszymi hiperparametrami: {accuracy_best_rf:.2f}")

knn_param_grid = {
  'n_neighbors': [3, 5, 7],
  'weights': ['uniform', 'distance'],
  'p': [1, 2]
}
# Utwórz obiekt GridSearchCV
grid_search_knn = GridSearchCV(estimator=knn_clasifier, param_grid=knn_param_grid, cv=5)

# Przeprowadź proces wyszukiwania hiperparametrów na zbiorze treningowym
grid_search_knn.fit(X_train, y_train)

# Wyświetl najlepsze znalezione hiperparametry
best_params_knn = grid_search_knn.best_params_
print("Najlepsze hiperparametry znalezione przez Grid Search dla K-NN:")
print(best_params_knn)

# Użyj modelu z najlepszymi hiperparametrami do oceny na zbiorze testowym
best_model_knn = grid_search_knn.best_estimator_
y_pred_best_knn = best_model_knn.predict(X_test)

# Oceń wyniki modelu z najlepszymi hiperparametrami
accuracy_best_knn = accuracy_score(y_test, y_pred_best_knn)
print(f"Dokładność modelu K-NN z najlepszymi hiperparametrami: {accuracy_best_knn:.2f}")
# endregion ################WEEK#END#DEVELOPMENT################
# Mon Projet Ruby

## Résumé et Structure

### Résumé

Ce projet consiste à développer une application de gestion d'événements et d'utilisateurs en Ruby. Nous commencerons par créer une classe User simple pour gérer les utilisateurs.

### Structure

Le projet est structuré comme suit :

```
mon_projet
├── lib
│   ├── event.rb
│   └── user.rb
├── app.rb
├── README.md
├── Gemfile
├── Gemfile.lock
└── Autres fichiers (.env, .gitignore)
```

Le fichier `app.rb` servira de point d'entrée pour notre application en chargeant les fichiers `lib/event.rb` et `lib/user.rb`.

## On s'échauffe avec la classe User

La classe User permet de créer des utilisateurs avec une adresse email et un âge, et de récupérer la liste de tous les utilisateurs créés.

### Spécifications de la classe User

- Créer une instance de `User` avec un email et un âge.
- Accéder et modifier l'email et l'âge de l'utilisateur.
- Obtenir la liste de tous les utilisateurs créés avec `User.all`.

## Les événements

Nous développerons ensuite la classe Event pour gérer les événements planifiés.

### Attributs de la classe Event

- `start_date` : Date de début de l'événement (de type `Time`).
- `duration` : Durée de l'événement en minutes.
- `title` : Titre de l'événement.
- `attendees` : Liste des participants (tableau d'emails).

## Fonctionnalités Bonus

Nous pourrions envisager des fonctionnalités supplémentaires telles qu'un créateur d'événements interactif (`EventCreator`), un afficheur de calendrier (`CalendarDisplayer`), un parseur de dates (`DateParser`), etc.


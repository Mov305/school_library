![Microverse](https://img.shields.io/badge/Microverse-blueviolet) ![Ruby](https://img.shields.io/badge/-Ruby-red)

# School_library

- For this project we learned how to use a module inside a class in Ruby. We created classes and methods to manage a school library.
  We created a class `Person` with the following:
  - Instance vars: `@id`, `@name`, and `@age`.
  - Getters for `@id`, `@name`, and `@age`.
  - Setters for `@name` and `@age`.
  - `private` `is_of_age?` that returns `true` if `@age` is greater or equal to 18 and `false` otherwise.
  - `public` method `can_use_services?` that returns `true` if person is of age or if they have permission from a parent.
    we created a class `Student` with the following:
  - Inherits from `Person`.
  - Constructor extends parent's constructar by adding `@classroom` and a parameter for it.
  - Method `play_hooky` that returns `"¯\(ツ)/¯"`.
    we created a class `Teacher` with the following:
  - Inherits from `Person`.
  - Constructor extends parent's constructar by adding `@specialization` and a parameter for it.
  - Override `can_use_services?` so it always returns `true`.

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

- Internet service.
- Knowledge of Git/Terminal.
- Ruby installed locally in your machine.
- Visual Studio Code.

### Setup

- Open the terminal on your computer
- Navigate through directories using [change directory (cd)](https://www.howtogeek.com/659411/how-to-change-directories-in-command-prompt-on-windows-10) command to where you want to clone the repository.

- **Type the following lists of commands and press "ENTER" after each command:**

- **Open folder in VSC**

  - code .

  - _Install dependencies locally_
    - bundle install

## Built With

- **Ruby**

## Authors

👤 **Abdelrhman Samy Saad**

- GitHub: [@Mov305](https://github.com/Mov305)
- Twitter: [@Mov305](https://twitter.com/Mov_abd)
- LinkedIn: [@Mov305](https://www.linkedin.com/in/abdelrhman-samy-80b14b215/)



## Acknowledgements ⭐️

- Special thanks to the team for being fully commited on finishing this project together.

## Show your support

- Give a ⭐️ if you like this project!

## 📝 License

- This project is [MIT](./LICENSE) licensed.

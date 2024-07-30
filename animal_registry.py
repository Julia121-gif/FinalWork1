class Animal:
    def __init__(self, name, commands, birth_date):
        self._name = name
        self._commands = commands
        self._birth_date = birth_date

    def add_command(self, command):
        self._commands.append(command)

    def get_commands(self):
        return self._commands

class DomesticAnimal(Animal):
    def __init__(self, name, commands, birth_date, species):
        super().__init__(name, commands, birth_date)
        self._species = species

class Dog(DomesticAnimal):
    def __init__(self, name, commands, birth_date):
        super().__init__(name, commands, birth_date, "Собака")

class AnimalRegistry:
    def __init__(self):
        self.animals = []

    def add_animal(self, animal):
        self.animals.append(animal)

    def list_commands(self, animal):
        return animal.get_commands()

    def train_animal(self, animal, new_command):
        animal.add_command(new_command)

class Counter:
    def __init__(self):
        self.value = 0
        self.open = False

    def __enter__(self):
        self.open = True
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.open = False

    def add(self):
        if not self.open:
            raise ValueError("Счетчик не открыт")
        self.value += 1

    def get_value(self):
        return self.value

def main():
    registry = AnimalRegistry()
    
    while True:
        print("\n1. Добавить новое животное")
        print("2. Показать команды животного")
        print("3. Обучить животное новой команде")
        print("4. Выход")
        
        choice = input("Выберите действие: ")
        
        if choice == "1":
            with Counter() as counter:
                name = input("Имя животного: ")
                species = input("Вид животного: ")
                commands = input("Команды (через запятую): ").split(',')
                birth_date = input("Дата рождения (ГГГГ-ММ-ДД): ")
                
                if species.lower() == "собака":
                    animal = Dog(name, commands, birth_date)
                # Добавьте другие виды животных
                
                registry.add_animal(animal)
                counter.add()
                print(f"{species} {name} добавлен(а) в реестр.")
                print(f"Всего животных: {counter.get_value()}")
        
        elif choice == "2":
            name = input("Имя животного: ")
            for animal in registry.animals:
                if animal._name == name:
                    print(f"Команды для {name}: {registry.list_commands(animal)}")
                    break
            else:
                print("Животное не найдено.")
        
        elif choice == "3":
            name = input("Имя животного: ")
            new_command = input("Новая команда: ")
            for animal in registry.animals:
                if animal._name == name:
                    registry.train_animal(animal, new_command)
                    print(f"{name} обучен(а) новой команде: {new_command}")
                    break
            else:
                print("Животное не найдено.")
        
        elif choice == "4":
            break
        
        else:
            print("Неверный выбор. Попробуйте снова.")

if __name__ == "__main__":
    main()

# Laboratories 3
Panstwa zadaniem jest napisanie automatycznie rozszerzajacej sie tablicy dynamicznej (zwanej potocznie Vector), oraz funkcji do jej   obslugi. Nasz Vector ma byc tablica elementow typu Fraction. Nasza implementacja wzorowana C++owym std::vector, aczkolwiek inna:   http://www.cplusplus.com/reference/vector/vector/  
Nie wolno uzyc w srodku std::vector! Zaawansowani moga uzyc uzyc inteligetnych wskaznikow, jesli chca.  
Nasza implementacja w razie automatycznego zwiekszania rozmiaru ma allokowac pamiec tylko o 1 wieksza!  
Ma to byc klasa Vector, ktora zawiera w sobie:  
- wskaznik na tablice dynamiczna (ang. data)  
- rozmiar aktualnie zaalokowanej tablicy dynamicznej (ang. capacity)  
- ilosc elementow w tablicy (ang. size)
Ponadto proszę o zaimplementowanie metod zwracającej liczbę elementów w tablicy size(), wielkosc tablicy capacity()  
Implementacja ulamka:  
[3pkt] Zaimplementuj klase Ulamek (ang. Fraction), posiadająca licznik (ang. numerator) i mianownik (ang. denominator).  
       Powinna zawierac jeden konstruktor ustawiajacy licznik i mianownik (domyslne wartosci licznika=0 a mianownika domyslna 1)  
       Gettery i settery do wartosci licznika i mianownika  
       operator+ dla ulamka zwracajacy ulamek  
       operator* dla ulamka zwracajacy ulamek  
[1pkt] Niepoprawny mianownik powinien byc zglaszany przez wyjatek std::invalid_argument.  
[1pkt] Prosze o skracanie ulamkow po operacji + i * (pomocny moze sie okazac algorytm euklidesa), oczywiscie tutaj robimy tylko dla   przypadkow dodatnich  
  
[6pkt] Uzupełnij drugą klasę o następujące elementy:  
    - konstruktor przyjmujacy liczbe do wstepnej allokacji (z wartoscia domyslna 0)  
    - destruktor (zwalniajacy pamiec),  
    - konstruktor kopiujący (gleboko) oraz przenoszący,  
    - operator podstawienia oraz przenoszący operator podstawienia,  
    - metodę dodającą obiekt na koncu tablicy push_back()  
    - operator dostepu po indeksie operator[](size_t index)  
[1pkt] Dostep po indeksie poza rozmiar tablicy (size) powinny być zgłaszane poprzez wyjątki std::out_of_range  
[1pkt] Auto-realokacja tablicy w razie braku elementow  
  
[1pkt] Deklaracje klasy powinny znaleźć się w odpowiednich plikach nagłówkowych, definicje metod i konstruktorów - w plikach źródłowych.  
[1pkt] Wszystkie atrybuty powinny być prywatne, konstruktory i metody - publiczne, metody/konstruktory/destruktory większe niż 1-  linijkowe powinny być zadeklarowane w klasie, zdefiniowane poza klasą,  
  
[1pkt] Obiekty typów klasowych powinny być przekazywane do funkcji/metod przez referencje (zwykłe lub stałe), metody niemodyfikujące   zawartości klasy powinny być oznaczane jako const.  
[1pkt] Wszystkie metody, które mogą być stałe proszę aby były  

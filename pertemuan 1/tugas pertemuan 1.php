<?php
class Fruit {
  public $name;
  public $color;
  public function __construct($name, $color) {
    $this->name = $name;
    $this->color = $color;
  }
  public function intro() {
    echo "Buah adalah {$this->name} dan warna adalah {$this->color}.";
  }
}

class Strawberry extends Fruit {
  public function message() {
    echo "Apakah buah kesukaan saya? ";
    echo "<br>";
  }
  public function send() {
    echo "Apakah buah yang sering dimakan? ";
    echo "<br>";
  }

}

class Melon extends Fruit {
    public function message() {
      echo "Apakah buah kesukaan kakak? ";
      echo "<br>";
    }
    public function send() {
      echo "Apakah buah yang sering dimakan ";
      echo "<br>";
    }
  
  }

// Coba panggil ketiga metode dari luar kelas
$strawberry = new Strawberry("Strawberry", "red");  // OK. __construct() adalah public
$strawberry->message(); // OK. message() adalah public
$strawberry->intro(); // ERROR. intro() adalah protected

echo "<br>";

$Melon = new Melon("Melon", "yellow");  // OK. __construct() adalah public
$Melon->message(); // OK. message() adalah public
$Melon->intro(); // ERROR. intro() adalah protecte

echo "<br>";

class Pakaian {
    public $merek;
    public $size;
    public function __construct($merek, $size) {
      $this->merek = $merek;
      $this->size = $size;
    }
    public function intro() {
      echo "Pakaian adalah {$this->merek} dan ukuran adalah {$this->size}.";
    }
  }
  
  class Baju extends Pakaian {
    public function message() {
      echo "Pakaian baju terkenal? ";
      echo "<br>";
    }
    public function send() {
      echo "Apakah saya buah atau beri? ";
      echo "<br>";
    }
  
  }
  
  class Celana extends Pakaian {
      public function message() {
        echo "Pakaian celana sport?";
        echo "<br>";
      }

      public function send() {
        echo "Apakah saya buah atau beri? ";
        echo "<br>";
      }
    
    }
  
    echo "<br>";

  // Coba panggil ketiga metode dari luar kelas
  $baju = new baju("Adidas", "green");  // OK. __construct() adalah public
  $baju->message(); // OK. message() adalah public
  $baju->intro(); // ERROR. intro() adalah protected
  
  echo "<br>";

  $celana = new celana("Puma", "black");  // OK. __construct() adalah public
  $celana->message(); // OK. message() adalah public
  $celana->intro(); // ERROR. intro() adalah protected
?>

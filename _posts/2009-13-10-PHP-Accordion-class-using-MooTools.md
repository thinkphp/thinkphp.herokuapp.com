```php
class Accordion {

      private $toggler_class;

      private $item_class;

      private $items;

      private $open;

      public function __construct($toggler_class = 'toggler', $item_class = 'item') {

            $this->items = array();

            $this->toggler_class = $toggler_class;

            $this->item_class = $item_class;
           
                   $this->open = 0;     
            }  

      public function addItem($toggler_content = '',$item_content = '',$open = 0) {

             $this->items[] = array('toggler'=>$toggler_content,'item'=>$item_content,'open'=>(int)$open);
                 }  

     public function build() {

             foreach($this->items as $index=>$item) {

                                 $out .= '<div class="'.$this->toggler_class.'">'.$item['toggler'].'</div>';

                                 $out .= '<div class="'.$this->item_class.'">'.$item['item'].'</div>';

                                 if($item['open'])  {$this->open = $index;}
                         } 

                    return $out;
                 }

       public function output() {

                        echo$this->build();
                }  

       public function output_js($options = '') {

                        return 'window.addEvent("domready",function(){ var acc = new Accordion($$(".'.$this->toggler_class.'"),$$(".'.$this->item_class.'"),{display: '.$this->open.'}); })';
                }

       public function addStyle($css = '') {

                        $selectors = ' .toggler{cursor:pointer; font-weight:bold; color:#c00; margin: 0; padding:5px; font-size: 16px; font-family: Arial,sans-serif; }';

                $selectors .=' .toggler:hover{background: #eee;}';

                        $selectors .= $css;

                   return '<style type="text/css">'.$selectors.'</style>';
                }

    } 


```

Usage:

```php
$ob = new Accordion('toggler_class','item_class');

$ob->addItem('toggler_header1','xyz');

$ob->addItem('toggler_header2','xyz');

$ob->addItem('toggler_header2','xyz');

$ob->output();

echo'<script type="text/javascript">'.$ob->output_js().'</script>';

$css = ' .toggler{border: 1px solid #ccc;margin: 1px}';
             
echo$ob->addStyle($css);p

```

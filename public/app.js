function add_to_cart(id)
{
    var key = 'product_' + id;
    var x = window.localStorage.getItem(key);
    x = x * 1 + 1;
    window.localStorage.setItem(key, x);
}

function cart_total()
{
    var total = 0;
    var cart_array = [];
    for(var i in localStorage){
        if(localStorage.hasOwnProperty(i)){
            cart_array.push(localStorage[i]);
        }
    }
    cart_array.forEach(Element => total = total * 1 + Element * 1);
    console.log(total);
}

cart_total();

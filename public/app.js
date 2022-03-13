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
    for(var i = 0; i < window.localStorage.length; i++)
    {
        var key = window.localStorage.key(i);
        var value = window.localStorage.getItem(key);

        if(key.indexOf('product_') == 0)
        {
            total = total * 1 + value * 1;
        }
    }
    return total;
}

cart_total();

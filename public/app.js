function add_to_cart(id)
{
    var key = 'product_' + id;
    var x = window.localStorage.getItem(key);
    x = x * 1 + 1;
    window.localStorage.setItem(key, x);
    update_orders();
    update_cart_span();
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

function update_orders()
{
    var orders = cart_orders();
    $('#cart').val(orders);
    $('#cart_order').val(orders);
}

function update_cart_span() 
{
    var text = cart_total();
    document.getElementById("cart_span").innerHTML = text;
}

function cart_orders()
{
    var orders = '';
    for(var i = 0; i < window.localStorage.length; i++)
    {
        var key = window.localStorage.key(i);
        var value = window.localStorage.getItem(key);

        if(key.indexOf('product_') == 0)
        {
            orders = orders + key + ':' + value + ',';
        }
    }
    return orders;
}

function clear_cart()
{
    localStorage.clear();
}

function cancel_order()
{
    clear_cart();
    update_cart_span();
    $('#cart_page').text('Корзина очищена');
    document.getElementById("cart_page").style = "text-align: center";
    return false;
}

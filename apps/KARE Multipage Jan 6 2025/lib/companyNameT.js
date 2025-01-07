var text = {{  account_name?.value }};
var textA = text.split(" ");
var customers = {{  Cust2?.data }};
var data = [];
var result = [];
customers.account_name?.forEach(function (item) {
  textA.forEach(function (word) {
    if (item.toUpperCase().includes(word.toUpperCase()) != false) {
      data.push({ Name: item });
    }
  });
});
result = data.filter((item, index) => data.indexOf(item) === index);

return result;

import "bootstrap";
import 'easy-autocomplete';

var options = {
  data: $("#query").data("filter")
};

$("#query").easyAutocomplete(options);















// This is backlog
  // const filteredResearchers = (researchers, filterString) => {
  //   return researchers.filter((researcher) => researcher.startsWith(filterString));
  // }

  // // tirar o primeiro e o ultimo elementos que sao os brackets
  // const removeBracketsAndQuotes = (string) => {
  //   return string.slice(1,-1).replace(/\"/g, '');
  // };

  // // transformar em array, separando pela virgula, provavelmente usando split()
  // const stringToArray = (string, selector) => {
  //   return string.split(selector);
  // };

  // const query = document.getElementById('query')
  // query.addEventListener('keyup', (event) => {
  //   const searchText = event.currentTarget.value
  //   let allResearchers = event.currentTarget.dataset.researchers
  //   let filterBox = event.currentTarget.dataset.filter

  //   allResearchers = removeBracketsAndQuotes(allResearchers)
  //   // console.log(allResearchers)

  //   allResearchers = stringToArray(allResearchers, ",")

  //   event.currentTarget.dataset.filter = filteredResearchers(allResearchers, searchText).toString();
  //   console.log(filterBox)
  // });

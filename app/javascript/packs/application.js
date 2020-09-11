// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
//require("channels")
require("@nathanvda/cocoon")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {

  $('.wrap').on('cocoon:after-insert', function() {
    detectInputNumbersChanges()
  });

  $('.wrap').on('cocoon:after-remove', function() {
    detectInputNumbersChanges()
    recountTotalFields()
  });

  detectInputNumbersChanges()
}); 

function detectInputNumbersChanges() {
  $('#invoce_form .nested-fields .total-change').keyup(function() {
    notAllownegative(this)
    recountTotalInvoiceField($(this).closest('.nested-fields'))
  })

  // const totalSumWithoutTaxes = $('#invoce_form .total-sum').map(function(){
  //   return parseFloat($(this).html)
  // }).reduce((a, b) => a + b, 0)

  // console.log({totalSumWithoutTaxes})
}

function notAllownegative(el) {
  if (parseFloat(el.value) < 0) {
    $(el).val(0)
  }
}

function recountTotalInvoiceField(row){
  let rate = parseFloat($(row).find('.rate')[0].value)
  let hours = parseFloat($(row).find('.hours')[0].value)

  rate = isNaN(rate) ? 0 : rate
  hours = isNaN(hours) ? 0 : hours

  $(row).find('.total-sum').html(rate * hours)

  recountTotalFields()
}


function recountTotalFields() {
  const totalsArray = $('#invoce_form .total-sum').map(function() {
    let rowTotal = parseFloat(this.innerText)
    rowTotal = isNaN(rowTotal) ? 0 : rowTotal
    return rowTotal
  }).toArray()
  
  console.log({totalsArray})
  const totalWihoutTax = totalsArray.reduce((a, b) => a + b, 0)
  const tax = totalWihoutTax * 0.21
  const totalWithTax = totalWihoutTax + tax

  $('#invoce_form .total_without_tax .value').html(totalWihoutTax)
  $('#invoce_form .tax .value').html(tax)
  $('#invoce_form .total_with_tax .value').html(totalWithTax)
}


aconst pricePerDay = parseInt(document.getElementById('price_per_day').innerHTML)
const starting = document.getElementById('booking_starting_date')
const ending =document.getElementById('booking_ending_date')
console.log(pricePerDay)

let days = 0

const calcDays = () => {
  const nbJours = parseInt(new Date(ending.value) - new Date(starting.value))/86400/1000 + 1
  return (nbJours >= 0) ?  nbJours : 0
 }

const calculateDays  = () => {
  days = calcDays();
  document.getElementById('total').innerHTML  = pricePerDay * days + " €"
}


starting.addEventListener('change', (event) => {
  calculateDays()
 })

ending.addEventListener('change', (event) => {
  calculateDays()
 })



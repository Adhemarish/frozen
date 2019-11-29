const priceDay = document.getElementById('price_per_day')
if (priceDay) {
  const pricePerDay = parseInt(priceDay.innerHTML)
  const starting = document.getElementById('booking_starting_date')
  const ending =document.getElementById('booking_ending_date')
  let days = 0
  const calcDays = () => {
    const nbJours = parseInt(new Date(ending.value) - new Date(starting.value))/86400/1000 + 1
    return (nbJours >= 0) ?  nbJours : 0
   }
  const calculateDays  = () => {
    days = calcDays();
    document.getElementById('total').value  = "Soumettre votre réservation pour "+ pricePerDay * days + " €"
  }
  starting.addEventListener('change', (event) => {
    calculateDays()
   })
  ending.addEventListener('change', (event) => {
    calculateDays()
   })
}

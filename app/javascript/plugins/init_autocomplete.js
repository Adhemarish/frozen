import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('equipment_location');
  if (addressInput) {
    const placesAutoComplete = places({ container: addressInput });
    placesAutoComplete.on('change', function resultSelected(e) {
      // console.log(e.suggestion)
      addressInput.value = e.suggestion.name + ', ' + e.suggestion.postcode + ' ' + e.suggestion.city
    });
  }
};

export { initAutocomplete };

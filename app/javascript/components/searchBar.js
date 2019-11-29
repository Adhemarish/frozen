const searchBar = document.querySelector('.search-bar');
if (searchBar) {
  searchBar.addEventListener("keyup", (event) => {
    const searchIcon = document.querySelector('.fa-search')
    searchIcon.style.color = '#6E2CBC'
  })
}

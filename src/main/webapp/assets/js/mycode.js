const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

const tabs = $$(".tab-item");
const panes = $$(".tab-pane");

const tabActive = $(".tab-item.active");
const line = $(".tabs .line");

requestIdleCallback(function () {
  line.style.left = tabActive.offsetLeft + "px";
  line.style.width = tabActive.offsetWidth + "px";
});

tabs.forEach((tab, index) => {
  const pane = panes[index];

  tab.onclick = function () {
    $(".tab-item.active").classList.remove("active");
    $(".tab-pane.active").classList.remove("active");

    line.style.left = this.offsetLeft + "px";
    line.style.width = this.offsetWidth + "px";

    this.classList.add("active");
    pane.classList.add("active");
  };
});


// DropDown
const iconMe = $$(".fa-solid.drop-down-icon");
const dropDowns = $$(".drop-down-me");
const dropDownContents = $$(".timet-nav__item-content");

dropDowns.forEach((item, index)=>{

  item.onclick = function() {
    // $(".timet-nav__item-content").classList.toggle("show");
    dropDownContents[index].classList.toggle("show");
  if(iconMe[index].classList.contains("fa-caret-left")){
    iconMe[index].classList.remove("fa-caret-left");
    iconMe[index].classList.add("fa-caret-down");
  }else{
    iconMe[index].classList.remove("fa-caret-down");
    iconMe[index].classList.add("fa-caret-left");
  }
  }
});
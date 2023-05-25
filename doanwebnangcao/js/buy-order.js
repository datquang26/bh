const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

const tabs = $$(".box-item-convert-money");
const panes = $$(".box-pane-text-info");
const choose = $$(".choose-click");




tabs.forEach((tab, index) => {
    const pane = panes[index];
    const choo = choose[index];

    tab.onclick = function () {
        $(".box-item-convert-money.active").classList.remove("active");
        $(".box-pane-text-info.active").classList.remove("active");
        $(".choose-click.active").classList.remove("active");


      

        this.classList.add("active");
        pane.classList.add("active");
        choo.classList.add("active");
    };
});

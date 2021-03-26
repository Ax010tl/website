class Carrousel{
    /**
     * @type {HTMLElement}
     */
    dom;
    /**
     * @type {Array<HTMLElement>}
     */
    children;
    activeIndex = 0;
    constructor(element){
        this.dom = element;
        this.children = [...this.dom.children];
        this.dom.addEventListener('scroll', ()=>{
            this.children.forEach((child, i) => {
                if(isElementVisible(child)){
                    child.classList.add('visible');
                    this.activeIndex = i;
                }else{
                    child.classList.remove('visible');
                }
            });
        });
    }
    /**
     * @param {HTMLElement} element;
     */
    isElementVisible(element){
        let parent = element.parentElement;
        let parentRect = parent.getBoundingClientRect();
        let elementRect = element.getBoundingClientRect();
        let rect = {
            top:    elementRect.top - parentRect.top,
            bottom: parentRect.bottom - elementRect.bottom,
            left:   elementRect.left - parentRect.left,
            right:  parentRect.right - elementRect.right
        }
        return Object.values(rect).every(item=>item>=0);
    }
    goToPrev(){
        if(this.activeIndex==0){
            this.children[this.children.length-1].scrollIntoView(true);
        } else {
            this.children[this.activeIndex-1].scrollIntoView(true);
        }
    }
    goToNext(){
        if(this.activeIndex==this.children.length-1){
            this.children[0].scrollIntoView(true);
        } else {
            this.children[this.activeIndex+1].scrollIntoView(true);
        }
    }
}

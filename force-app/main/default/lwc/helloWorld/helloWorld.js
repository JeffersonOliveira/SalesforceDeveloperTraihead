import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name = 'Jefferson';
    clickedButtonLabel;

    handleClick(event) {
        this.clickedButtonLabel = event.target.label;
    }
}


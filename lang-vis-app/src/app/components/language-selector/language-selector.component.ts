import { Component, EventEmitter, Output } from '@angular/core';


@Component({
  selector: 'app-language-selector',
  templateUrl: './language-selector.component.html',
  styleUrls: ['./language-selector.component.css']
})
export class LanguageSelectorComponent {
  @Output() languageSelected = new EventEmitter<string>();

  onLanguageChange(event: Event): void {
    const selectedLanguage = (event.target as HTMLSelectElement).value;
    this.languageSelected.emit(selectedLanguage); // Send the value to the parent
  }
}


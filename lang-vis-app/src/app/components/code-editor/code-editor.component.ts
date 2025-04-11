import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-code-editor',
  templateUrl: './code-editor.component.html',
  styleUrls: ['./code-editor.component.css']
})
export class CodeEditorComponent {
  @Output() codeChanged = new EventEmitter<string>();

  onCodeChange(event: Event): void {
    const code = (event.target as HTMLTextAreaElement).value;
    this.codeChanged.emit(code);
  }
}

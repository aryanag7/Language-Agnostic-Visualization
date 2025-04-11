import { Component } from '@angular/core';
import { NgIf } from '@angular/common';
import { LanguageSelectorComponent } from '../../components/language-selector/language-selector.component';
import { CodeEditorComponent } from '../../components/code-editor/code-editor.component';
import { ApiService } from '../../services/api.service';
import { DomSanitizer, SafeResourceUrl } from '@angular/platform-browser';



@Component({
  standalone: true,
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  imports: [LanguageSelectorComponent, CodeEditorComponent, NgIf]
})
export class HomeComponent {
  selectedLanguage: string = 'python';
  userCode: string = '';
  imageUrl: SafeResourceUrl | null = null;
  isHtml: boolean = false; // added to track HTML vs image
  isLoading = false;

  constructor(private apiService: ApiService, private sanitizer: DomSanitizer) {}

  onLanguageSelected(language: string) {
    this.selectedLanguage = language;
  }

  onCodeChanged(code: string) {
    this.userCode = code;
  }

  onGenerate() {
    if (!this.userCode.trim()) {
      alert('Please enter code.');
      return;
    }

    this.isLoading = true;

    this.apiService.sendCode(this.selectedLanguage, this.userCode).subscribe({
      next: (blob) => {
        const contentType = blob.type;
        const objectUrl = URL.createObjectURL(blob);

        this.imageUrl = this.sanitizer.bypassSecurityTrustResourceUrl(objectUrl);
        this.isHtml = contentType === 'text/html'; //  check if interactive
        this.isLoading = false;
      },
      error: (err) => {
        console.error('Backend error:', err);
        err.error?.text ? alert(err.error.text) : alert('Error generating chart.');
        this.isLoading = false;
      }
    });
  }



  downloadChart() {
    if (!this.imageUrl) return;
  
    const link = document.createElement('a');
    link.href = (this.imageUrl as any).changingThisBreaksApplicationSecurity;
    link.download = this.isHtml ? 'chart.html' : 'chart.png';
    link.click();
  }
}



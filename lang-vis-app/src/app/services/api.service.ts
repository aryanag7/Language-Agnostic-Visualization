import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  private apiUrl = 'http://localhost:5050/generate'; // updated port!

  constructor(private http: HttpClient) {}

  sendCode(language: string, code: string): Observable<Blob> {
    return this.http.post(this.apiUrl, { language, code }, { responseType: 'blob' });
  }
}

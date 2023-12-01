import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
const TOKEN_KEY = 'token-saya';
@Injectable({
  providedIn: 'root',
})
export class AuthenticationService {
  // Inisialisasi is auth
  isAuthenticated: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(
    false
  );
  token = '';

  constructor(private http: HttpClient) {
    this.loadToken();
  }

  loadToken() {
    return localStorage.getItem(TOKEN_KEY);
  }

  logout() {
    localStorage.clear();
    return true;
  }

  apiURL() {
    return 'http://localhost/toko_api/public/api';
  }
}

import { Component } from '@angular/core';
@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  public appPages = [
    { title: 'Home', url: '/home', icon: 'home' },
    // { title: 'Mahasiswa', url: '/mahasiswa', icon: 'person' },
    { title: 'BukuTamu', url: '/buku-tamu', icon: 'book' },
  ];
  constructor() {}
}

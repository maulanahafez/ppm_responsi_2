import { Component, inject, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AlertController } from '@ionic/angular';
import { AuthenticationService } from '../services/authentication.service';
const USERNAME = 'namasaya';
@Component({
  selector: 'app-folder',
  templateUrl: './folder.page.html',
  styleUrls: ['./folder.page.scss'],
})
export class FolderPage implements OnInit {
  public nama = '';
  constructor(
    private authService: AuthenticationService,
    private alertController: AlertController,
    private router: Router
  ) {}
  public folder!: string;
  private activatedRoute = inject(ActivatedRoute);

  ngOnInit() {
    this.folder = this.activatedRoute.snapshot.paramMap.get('id') as string;
    this.cekSesi();
    console.log(this.nama);
  }

  async cekSesi() {
    const ambilNama = localStorage.getItem(USERNAME);
    if (ambilNama) {
      let namauser = ambilNama;
      this.nama = namauser;
    } else {
      this.authService.logout();
      this.router.navigateByUrl('/', { replaceUrl: true });
    }
  }
}

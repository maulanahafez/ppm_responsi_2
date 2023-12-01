import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Http } from '@capacitor-community/http';
import { AlertController } from '@ionic/angular';
import { AuthenticationService } from '../services/authentication.service';
const TOKEN_KEY = 'token-saya';
const USERNAME = 'namasaya';
@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  username: any;
  password: any;
  constructor(
    private authService: AuthenticationService,
    private alertController: AlertController,
    private router: Router
  ) {}
  ngOnInit() {
    if (this.authService.loadToken()) {
      this.router.navigateByUrl('/home');
      return false;
    }
    return;
  }
  login() {
    if (this.username != null && this.password != null) {
      let url = this.authService.apiURL() + '/account/login';
      Http.request({
        method: 'POST',
        url: url,
        headers: { 'Content-Type': 'application/json' },
        data: {
          username: this.username,
          password: this.password,
        },
      }).then(
        (data) => {
          console.log(data);
          if (data.data.status) {
            this.username = '';
            this.password = '';
            localStorage.setItem(TOKEN_KEY, data.data.data.token);
            localStorage.setItem(USERNAME, data.data.data.user.username);
            this.router.navigateByUrl('home', { replaceUrl: true });
          } else {
            this.alertController
              .create({
                header: 'Notifikasi',
                message: 'Username dan Password salah',
                buttons: ['OK'],
              })
              .then((res) => {
                res.present();
              });
          }
        },
        (err) => {
          this.alertController
            .create({
              header: 'Notifikasi',
              message: 'Gagal Login, Periksa Koneksi Internet' + err,
              buttons: ['OK'],
            })
            .then((res) => {
              res.present();
            });
        }
      );
    } else {
      this.alertController
        .create({
          header: 'Notifikasi',
          message: 'Username dan Password Tidak Boleh Kosong',
          buttons: ['OK'],
        })
        .then((res) => {
          res.present();
        });
    }
  }
}

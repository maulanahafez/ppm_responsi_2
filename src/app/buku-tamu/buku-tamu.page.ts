import { Component, OnInit } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-buku-tamu',
  templateUrl: './buku-tamu.page.html',
  styleUrls: ['./buku-tamu.page.scss'],
})
export class BukuTamuPage implements OnInit {
  dataBukuTamu: any = [];

  id: any = null;
  nama: any = '';
  no_telp: any = '';
  alamat: any = '';
  waktu_kunjungan: any = '';
  waktu_kepergian: any = '';
  keperluan: any = '';

  modal_tambah: boolean = false;
  modal_edit: boolean = false;

  constructor(
    private _apiService: ApiService,
    private modal: ModalController
  ) {}

  ngOnInit() {
    this.getBukuTamu();
  }

  getBukuTamu() {
    this._apiService.tampil('buku_tamu').subscribe({
      next: (res: any) => {
        this.dataBukuTamu = res;
      },
      error: (err: any) => {},
    });
  }

  reset_model() {
    this.id = null;
    this.nama = null;
    this.no_telp = null;
    this.alamat = null;
    this.waktu_kunjungan = null;
    this.waktu_kepergian = null;
    this.keperluan = null;
  }

  cancel() {
    this.modal.dismiss();
    this.modal_tambah = false;
    this.reset_model();
  }

  open_modal_tambah(isOpen: boolean) {
    this.modal_tambah = isOpen;
    this.reset_model();
    this.modal_tambah = true;
    this.modal_edit = false;
  }

  open_modal_edit(isOpen: boolean, idget: any) {
    this.modal_edit = isOpen;
    this.id = idget;
    this.ambilBukuTamu(this.id);
    this.modal_tambah = false;
    this.modal_edit = true;
  }

  tambahBukuTamu() {
    if (
      this.nama != 'nama' &&
      this.no_telp != 'no_telp' &&
      this.alamat != 'alamat' &&
      this.waktu_kunjungan != 'waktu_kunjungan' &&
      this.waktu_kepergian != 'waktu_kepergian' &&
      this.keperluan != 'keperluan'
    ) {
      let data = {
        nama: this.nama,
        no_telp: this.no_telp,
        alamat: this.alamat,
        waktu_kunjungan: this.waktu_kunjungan,
        waktu_kepergian: this.waktu_kepergian,
        keperluan: this.keperluan,
      };
      this._apiService.tambah(data, 'buku_tamu').subscribe({
        next: (hasil: any) => {
          this.reset_model();
          this.getBukuTamu();
          this.modal_tambah = false;
          this.modal.dismiss();
        },
        error: (err: any) => {},
      });
    } else {
    }
  }

  hapusBukuTamu(id: any) {
    this._apiService.hapus(id, 'buku_tamu').subscribe({
      next: (res: any) => {
        this.getBukuTamu();
      },
      error: (error: any) => {},
    });
  }

  ambilBukuTamu(id: any) {
    this._apiService.lihat(id, 'buku_tamu').subscribe({
      next: (hasil: any) => {
        let buku_tamu = hasil;
        this.id = buku_tamu.id;
        this.nama = buku_tamu.nama;
        this.no_telp = buku_tamu.no_telp;
        this.alamat = buku_tamu.alamat;
        this.waktu_kunjungan = buku_tamu.waktu_kunjungan;
        this.waktu_kepergian = buku_tamu.waktu_kepergian;
        this.keperluan = buku_tamu.keperluan;
      },
      error: (error: any) => {},
    });
  }

  editBukuTamu() {
    let data = {
      id: this.id,
      nama: this.nama,
      no_telp: this.no_telp,
      alamat: this.alamat,
      waktu_kunjungan: this.waktu_kunjungan,
      waktu_kepergian: this.waktu_kepergian,
      keperluan: this.keperluan,
    };
    this._apiService.edit(data, 'buku_tamu').subscribe({
      next: (hasil: any) => {
        this.reset_model();
        this.getBukuTamu();
        this.modal_edit = false;
        this.modal.dismiss();
      },
      error: (err: any) => {},
    });
  }
}

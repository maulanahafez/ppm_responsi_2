import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { BukuTamuPageRoutingModule } from './buku-tamu-routing.module';

import { BukuTamuPage } from './buku-tamu.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    BukuTamuPageRoutingModule
  ],
  declarations: [BukuTamuPage]
})
export class BukuTamuPageModule {}

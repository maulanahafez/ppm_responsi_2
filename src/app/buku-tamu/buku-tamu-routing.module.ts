import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { BukuTamuPage } from './buku-tamu.page';

const routes: Routes = [
  {
    path: '',
    component: BukuTamuPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class BukuTamuPageRoutingModule {}

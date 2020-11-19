import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { RapportDetaillePage } from './rapport-detaille.page';

const routes: Routes = [
  {
    path: '',
    component: RapportDetaillePage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class RapportDetaillePageRoutingModule {}

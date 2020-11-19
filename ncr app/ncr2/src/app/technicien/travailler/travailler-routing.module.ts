import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { TravaillerPage } from './travailler.page';

const routes: Routes = [
  {
    path: '',
    component: TravaillerPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class TravaillerPageRoutingModule {}

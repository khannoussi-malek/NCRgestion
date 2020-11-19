import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { TravaillerPageRoutingModule } from './travailler-routing.module';

import { TravaillerPage } from './travailler.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    TravaillerPageRoutingModule
  ],
  declarations: [TravaillerPage]
})
export class TravaillerPageModule {}

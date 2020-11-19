import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { RapportDetaillePageRoutingModule } from './rapport-detaille-routing.module';

import { RapportDetaillePage } from './rapport-detaille.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RapportDetaillePageRoutingModule
  ],
  declarations: [RapportDetaillePage]
})
export class RapportDetaillePageModule {}

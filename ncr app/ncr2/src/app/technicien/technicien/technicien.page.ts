import { Component, OnInit, ViewChild } from '@angular/core';
import { MenuController, IonSelect } from '@ionic/angular';
import { Storage } from '@ionic/storage';
import * as $ from 'jquery';
import { Router, NavigationExtras } from '@angular/router';
@Component({
  selector: 'app-technicien',
  templateUrl: './technicien.page.html',
  styleUrls: ['./technicien.page.scss'],
})
export class TechnicienPage implements OnInit {
  name;
  photo;
  @ViewChild(IonSelect,{static:false})sel:IonSelect;
  constructor(private router: Router,private storage: Storage , private menuCtrl :MenuController) { }

  ngOnInit() {
    this.storage.get('name').then((res)=>{
      this.name=res;
    });
    this.storage.get('photo').then((res)=>{
      this.photo=res;
    });
  }

 ionViewWillEnter(){
    this.menuCtrl.enable(true);
  }
  togleselsec() {
    this.sel.open();
  }
  logout(){
    let navex: NavigationExtras = {
      replaceUrl: true
    };
    this.storage.clear();
    this.storage.set('path', '');
    this.router.navigate(['/'], navex);
  }
}

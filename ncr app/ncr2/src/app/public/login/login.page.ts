import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { Router, NavigationExtras } from '@angular/router';
import { Storage } from '@ionic/storage';
import * as $ from 'jquery';
import { AlertController } from '@ionic/angular';
import { MenuController } from '@ionic/angular';
@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
 email ;
 password;
  constructor(private service:AuthenticationService,
              private router: Router,
              private storage: Storage ,
              private  menuCtrl: MenuController,
              public alertController: AlertController) { }
// // log in test
// async presentAlert() {
//   const alert = await this.alertController.create({
//     header: 'somthing',
//     subHeader: 'wrong',
//     message: 'you email or password was wrong',
//     buttons: ['OK']
//   });

//   await alert.present();
// }
  ngOnInit() {
    this.storage.get('path').then((res)=>{
      if (res) {
        let navex: NavigationExtras = {
          replaceUrl: true
        };
       this.router.navigate(['/' + res], navex);
      }
    });
  }/*
  ionViewWillEnter() {
    this.menuCtrl.enable(false);
  }*/
  ionViewWillEnter() {
    this.menuCtrl.enable(false);
  }
  clear() {
    $('#email').val('');
    $('#password').val('');
  }
  login() {
    let req = {
      email: this.email,
      password: this.password
    }
    this.service.signIn(req).subscribe((res:any)=>{
      if (res) {
        let navex: NavigationExtras = {
          replaceUrl: true
        };
        this.storage.set('name', res.name).then(result =>{
          if (res.function === 'technicien') {
            this.storage.set('name', res.name);
            this.storage.set('id', res.id);
            this.storage.set('name', res.name);
            this.storage.set('photo', res.photo);
            this.service.log_state.next(true);
            this.storage.set('path', 'technicien');
            this.router.navigate(['/technicien'], navex);
          }
        });
      }else {
        // this.presentAlert();
      }
    });
    this.clear();
        
  }

}

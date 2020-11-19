import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { AuthenticationService } from '../../services/authentication.service';
import { Storage } from '@ionic/storage';

@Component({
  selector: 'app-travailler',
  templateUrl: './travailler.page.html',
  styleUrls: ['./travailler.page.scss'],
})
export class TravaillerPage implements OnInit {
  com;
  site;
  client;
  probleme;
  dateDebut;
  time=new Date();
  constructor(private activatedRoute: ActivatedRoute ,
              private storage: Storage ,
              private service: AuthenticationService) { }

  ngOnInit() {
    let id = this.activatedRoute.snapshot.paramMap.get("id");
    let req = '?id=' + id;
    this.service.getrapport(req).subscribe((res: any) => {
      this.site = res.site;
      this.client = res.client;
      this.probleme = res.probleme;
    });
    //pieces
    let req2;
    this.storage.get('id').then((res) => {
      this.com = '?id_technicien=' + res;

    });
    this.service.getpiecee(this.com).subscribe((res: any) => {
      
      console.log(res);
    });
    
  }

}

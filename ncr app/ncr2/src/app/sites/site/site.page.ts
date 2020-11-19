import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { AuthenticationService } from '../../services/authentication.service';

@Component({
  selector: 'app-site',
  templateUrl: './site.page.html',
  styleUrls: ['./site.page.scss'],
})
export class SitePage implements OnInit {
site;
adresse;
model;
PN;
dateInstalation;
garantie;
typeMP;
MP;
dateMP;
  constructor(private activatedRoute: ActivatedRoute ,
              private service:AuthenticationService) { }

  ngOnInit() {
    let id = this.activatedRoute.snapshot.paramMap.get("id");

    let req = {
      id:id
    }
    this.service.getDetSite(req).subscribe((res:any)=>{
       this.site = res.data[0].site;
       this.adresse = res.data[0].adresse;
       this.model = res.data[0].model;
       this.PN = res.data[0].PN;
       this.dateInstalation = res.data[0].dateInstalation;
       this.garantie = res.data[0].garantie;
       this.typeMP = res.data[0].typeMP;
       this.MP = res.data[0].MP;
       this.dateMP = res.data[0].dateMP;

       console.log(res.data[0]);
    });
  }
}

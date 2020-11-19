import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { AuthenticationService } from '../../services/authentication.service';

@Component({
  selector: 'app-sites',
  templateUrl: './sites.page.html',
  styleUrls: ['./sites.page.scss'],
})
export class SitesPage implements OnInit {
  sites;
  constructor(private activatedRoute: ActivatedRoute ,
              private service:AuthenticationService) { }

  ngOnInit() {
    let idclient = this.activatedRoute.snapshot.paramMap.get("id");
    let req = {
      id_client: idclient
    }
    this.service.getsite(req).subscribe((res:any)=>{
       this.sites=res.data;
    });
  }

}

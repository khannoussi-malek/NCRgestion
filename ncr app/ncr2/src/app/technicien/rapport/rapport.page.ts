import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { AuthenticationService } from '../../services/authentication.service';
import { Storage } from '@ionic/storage';

@Component({
  selector: 'app-rapport',
  templateUrl: './rapport.page.html',
  styleUrls: ['./rapport.page.scss'],
})
export class RapportPage implements OnInit {
  tech;
  client;
  site;
  technicien;
  data;
req;
  clients;
  sites;
  constructor(private activatedRoute: ActivatedRoute ,
              private storage: Storage ,
              private service: AuthenticationService) { }

  ngOnInit() {
  this.storage.get('id').then((res) => {
      this.req = '?technicien='+res;
      this.service.rapport(this.req).subscribe((res: any) => {
      this.data = res.data;
      console.log(this.data);
    });
  });
  }
}

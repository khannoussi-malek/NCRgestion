import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../../services/authentication.service';
import { Storage } from '@ionic/storage';

@Component({
  selector: 'app-histoire',
  templateUrl: './histoire.page.html',
  styleUrls: ['./histoire.page.scss'],
})
export class HistoirePage implements OnInit {
  req;
  data;
  constructor(private service: AuthenticationService,
              private storage: Storage
              ) { }

  ngOnInit() {
    this.storage.get('id').then((res) => {
      this.req = '?technicien='+res;
      console.log(this.req);
      this.service.histoireRapport(this.req).subscribe((res: any) => {
      this.data = res.data;
      console.log(this.data);
      });
    });
  }

}

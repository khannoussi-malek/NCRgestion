import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../../services/authentication.service';
import { Storage } from '@ionic/storage';

@Component({
  selector: 'app-storages',
  templateUrl: './storages.page.html',
  styleUrls: ['./storages.page.scss'],
})
export class StoragesPage implements OnInit {
  req;
  data;
  constructor(private service: AuthenticationService,
              private storage: Storage

    ) { }

  ngOnInit() {
    this.storage.get('id').then((res) => {
      this.req = '?id_technicien='+res;
      this.service.getstorages(this.req).subscribe((res: any) => {
      this.data = res.data;
      console.log(this.data);
      });
    });

  }

}

import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../../services/authentication.service';

@Component({
  selector: 'app-clients',
  templateUrl: './clients.page.html',
  styleUrls: ['./clients.page.scss'],
})
export class ClientsPage implements OnInit {
  client;
  constructor(private service:AuthenticationService) { }

  ngOnInit() {
    this.service.getclient().subscribe((res:any)=>{
      this.client = res.data;
    });

  }

}

import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../../services/authentication.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-rapport-detaille',
  templateUrl: './rapport-detaille.page.html',
  styleUrls: ['./rapport-detaille.page.scss'],
})
export class RapportDetaillePage implements OnInit {
  client; req; site; dateDebut; dateFin; probleme; traitement; photo; mc; mp; inst; typeDeSortie;
  constructor(private activatedRoute: ActivatedRoute ,
              private service: AuthenticationService) { }

  ngOnInit() {
    let id = this.activatedRoute.snapshot.paramMap.get("id");
    this.req = '?id=' + id;
    this.service.getrapport(this.req).subscribe((res: any) => {
      this.client=res.client;
      this.site=res.site;
      this.dateDebut=res.dateDebut;
      this.dateFin=res.dateFin;
      this.probleme=res.probleme;
      this.traitement=res.traitement;
      this.photo=res.photo;
      this.mc=res.mc;
      this.mp=res.mp;
      this.inst=res.inst;
      this.typeDeSortie=res.typeDeSortie;
      console.log(res);
    });
  }

}

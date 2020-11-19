import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";
import { BehaviorSubject } from 'rxjs';
import { Storage } from '@ionic/storage';
@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {
  log_state= new BehaviorSubject(false);
  private api_link='http://127.0.0.1:8000/api/';
  private header = { headers: { "Content-Type": "application/json" } };
  constructor(private http: HttpClient,private storage: Storage) { 
  }
  signIn(req){
    let api = 'login';
    return this.http.post(this.api_link + api, req, this.header);
  }
  IsLoged(){
    return this.log_state.value;
  }
  getclient(){
    let api = 'clients';
    return this.http.get(this.api_link + api);
  }
  getsite(req){
    let api = 'sites';
    return this.http.post(this.api_link + api, req);
  }
  getDetSite(req){
    let api = 'site';
    return this.http.post(this.api_link + api, req);
  }
  rapport(req){
    let api = 'travailler';
    return this.http.get(this.api_link + api + req);
  }
  getrapport(req){
    let api = 'rapport';
    return this.http.get(this.api_link + api + req);
  }
  getClien(req){
    let api = 'clien';
    return this.http.post(this.api_link + api, req);
  }
  getpiecee(req){
    let api = 'piece_utilisee';
    return this.http.get(this.api_link + api + req);
  }
  getstorages(req){
    let api = 'storages';
    return this.http.get(this.api_link + api + req);
  }
  histoireRapport(req){
    let api = 'histoire';
    return this.http.get(this.api_link + api + req);
  }
}

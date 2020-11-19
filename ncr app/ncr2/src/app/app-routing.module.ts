import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./public/login/login.module').then( m => m.LoginPageModule)
  },
  {
    path: 'home',
    loadChildren: () => import('./home/home.module').then(m => m.HomePageModule)
  },
  {
    path: 'list',
    loadChildren: () => import('./list/list.module').then(m => m.ListPageModule)
  },
  {
    path: 'technicien',
    loadChildren: () => import('./technicien/technicien/technicien.module').then( m => m.TechnicienPageModule)
  },
  {
    path: 'clients',
    loadChildren: () => import('./clients/clients/clients.module').then( m => m.ClientsPageModule)
  },
  {
    path: 'sites/:id',
    loadChildren: () => import('./sites/sites/sites.module').then( m => m.SitesPageModule)
  },
  {
    path: 'rapport',
    loadChildren: () => import('./technicien/rapport/rapport.module').then( m => m.RapportPageModule)
  },
  {
    path: 'site/:id',
    loadChildren: () => import('./sites/site/site.module').then( m => m.SitePageModule)
  },
  {
    path: 'travailler/:id',
    loadChildren: () => import('./technicien/travailler/travailler.module').then( m => m.TravaillerPageModule)
  },
  {
    path: 'histoire',
    loadChildren: () => import('./technicien/histoire/histoire.module').then( m => m.HistoirePageModule)
  },
  {
    path: 'storages',
    loadChildren: () => import('./storages/storages/storages.module').then( m => m.StoragesPageModule)
  },
  {
    path: 'rapport-detaille/:id',
    loadChildren: () => import('./technicien/rapport-detaille/rapport-detaille.module').then( m => m.RapportDetaillePageModule)
  }
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}

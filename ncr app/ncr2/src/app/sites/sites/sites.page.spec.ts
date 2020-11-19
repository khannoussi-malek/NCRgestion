import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { SitesPage } from './sites.page';

describe('SitesPage', () => {
  let component: SitesPage;
  let fixture: ComponentFixture<SitesPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SitesPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(SitesPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

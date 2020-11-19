import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { HistoirePage } from './histoire.page';

describe('HistoirePage', () => {
  let component: HistoirePage;
  let fixture: ComponentFixture<HistoirePage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HistoirePage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(HistoirePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

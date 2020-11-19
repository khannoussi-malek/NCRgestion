import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { RapportDetaillePage } from './rapport-detaille.page';

describe('RapportDetaillePage', () => {
  let component: RapportDetaillePage;
  let fixture: ComponentFixture<RapportDetaillePage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RapportDetaillePage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(RapportDetaillePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { TechnicienPage } from './technicien.page';

describe('TechnicienPage', () => {
  let component: TechnicienPage;
  let fixture: ComponentFixture<TechnicienPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TechnicienPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(TechnicienPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

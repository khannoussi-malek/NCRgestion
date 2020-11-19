import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { TravaillerPage } from './travailler.page';

describe('TravaillerPage', () => {
  let component: TravaillerPage;
  let fixture: ComponentFixture<TravaillerPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TravaillerPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(TravaillerPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

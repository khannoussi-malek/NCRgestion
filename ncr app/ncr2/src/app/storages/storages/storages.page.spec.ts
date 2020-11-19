import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { StoragesPage } from './storages.page';

describe('StoragesPage', () => {
  let component: StoragesPage;
  let fixture: ComponentFixture<StoragesPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ StoragesPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(StoragesPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

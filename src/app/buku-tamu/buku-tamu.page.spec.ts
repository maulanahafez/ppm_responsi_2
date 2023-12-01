import { ComponentFixture, TestBed } from '@angular/core/testing';
import { BukuTamuPage } from './buku-tamu.page';

describe('BukuTamuPage', () => {
  let component: BukuTamuPage;
  let fixture: ComponentFixture<BukuTamuPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(BukuTamuPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VisualizationViewerComponent } from './visualization-viewer.component';

describe('VisualizationViewerComponent', () => {
  let component: VisualizationViewerComponent;
  let fixture: ComponentFixture<VisualizationViewerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [VisualizationViewerComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(VisualizationViewerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

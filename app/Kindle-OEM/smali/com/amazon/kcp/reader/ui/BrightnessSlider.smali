.class public Lcom/amazon/kcp/reader/ui/BrightnessSlider;
.super Landroid/widget/FrameLayout;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/amazon/kcp/reader/ui/IViewOptionsRow;


# static fields
.field public static final MIN_BRIGHTNESS_PERCENTAGE:I = 0xa


# instance fields
.field private autoBrightnessRow:Landroid/view/View;

.field private brightnessChanged:Z

.field private brightnessSlider:Landroid/widget/SeekBar;

.field private brightnessSliderRow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessChanged:Z

    .line 43
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "clickedView"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    .end local p0
    :goto_0
    return-void

    .line 68
    .restart local p0
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 69
    .local v0, appController:Lcom/amazon/kcp/application/IAndroidApplicationController;
    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f0c003a
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 50
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessSlider:Landroid/widget/SeekBar;

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessSlider:Landroid/widget/SeekBar;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 56
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->autoBrightnessRow:Landroid/view/View;

    .line 57
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessSliderRow:Landroid/view/View;

    .line 60
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 94
    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 99
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    const/16 v1, 0xa

    add-int/lit8 v2, p2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setScreenBrightness(F)V

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessChanged:Z

    .line 102
    .end local v0           #settings:Lcom/amazon/kcp/application/SettingsController;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 78
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessChanged:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ViewOptions"

    const-string v2, "ScreenBrightnessChanged"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessChanged:Z

    .line 89
    :cond_0
    return-void
.end method

.method protected prepareBrightnessOptions()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 113
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->isSystemUsingAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessSliderRow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->autoBrightnessRow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->autoBrightnessRow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessSliderRow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFocusNeighbors(II)V
    .locals 3
    .parameter "focusUpId"
    .parameter "focusDownId"

    .prologue
    const v2, 0x7f0c003a

    const v1, 0x7f0c0037

    .line 127
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 132
    return-void
.end method

.method public syncSelectedOptions()V
    .locals 4

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 139
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BrightnessSlider;->brightnessSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getScreenBrightness()F

    move-result v2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    const/high16 v3, 0x4120

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 140
    return-void
.end method

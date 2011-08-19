.class public Lcom/amazon/kcp/reader/ImageZoomActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "ImageZoomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_ZOOM_INCREMENT:F = 0.25f

.field private static final DPAD_MOVE_AMOUNT:I = 0x20

.field public static final IMAGE_POSITION_ID_INDEX:Ljava/lang/String; = "image_position_id_index"

.field private static final SCROLL_BALL_MOVE_AMOUNT:I = 0x40

.field public static final ZOOM_FOCAL_X_KEY:Ljava/lang/String; = "zoom_focal_x_key"

.field public static final ZOOM_FOCAL_Y_KEY:Ljava/lang/String; = "zoom_focal_y_key"

.field public static final ZOOM_LEVEL_KEY:Ljava/lang/String; = "zoom_level_key"


# instance fields
.field private zoomButtons:Lcom/amazon/kcp/reader/ui/ZoomButtons;

.field private zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    const/high16 v1, 0x3fa0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->modifyZoom(F)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->modifyZoom(F)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00dc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c00dd

    const v4, 0x7f0c00dc

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 75
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    .line 78
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ZoomButtons;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomButtons:Lcom/amazon/kcp/reader/ui/ZoomButtons;

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomButtons:Lcom/amazon/kcp/reader/ui/ZoomButtons;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/reader/ui/ZoomButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomButtons:Lcom/amazon/kcp/reader/ui/ZoomButtons;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/reader/ui/ZoomButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomButtons:Lcom/amazon/kcp/reader/ui/ZoomButtons;

    invoke-virtual {v0, v4}, Lcom/amazon/kcp/reader/ui/ZoomButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomButtons:Lcom/amazon/kcp/reader/ui/ZoomButtons;

    invoke-virtual {v0, v4}, Lcom/amazon/kcp/reader/ui/ZoomButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_position_id_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    if-ne v1, v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->finish()V

    .line 140
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    .line 95
    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->finish()V

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getImageFromImageId(I)[B

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No image at specified imagePositionId ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); aborting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->finish()V

    goto :goto_0

    .line 111
    :cond_3
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    if-eqz p1, :cond_4

    .line 117
    const-string v0, "zoom_level_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const-string v0, "zoom_level_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 124
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 126
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(F)V

    .line 128
    const-string v0, "zoom_focal_x_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "zoom_focal_y_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    const-string v1, "zoom_focal_x_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "zoom_focal_y_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    .line 138
    :cond_4
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/high16 v4, 0x447a

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getDefaultZoom()F

    move-result v0

    .line 146
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getZoom()F

    move-result v1

    div-float/2addr v1, v0

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 149
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string v3, "FinalZoomChange"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "DefaultZoom"

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ImageZoomActivity"

    const-string v3, "ActivityClose"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 156
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 157
    return-void

    .line 156
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v3, 0x4200

    const/high16 v2, -0x3e00

    const/4 v1, 0x0

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 202
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/ReddingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    .line 205
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    goto :goto_1

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    goto :goto_1

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0, v3, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 163
    const-string v0, "zoom_level_key"

    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getZoom()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 164
    const-string v0, "zoom_focal_x_key"

    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getFocalPointX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 165
    const-string v0, "zoom_focal_y_key"

    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getFocalPointY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 166
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/high16 v3, 0x4280

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 221
    :goto_0
    return v0

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    .line 221
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

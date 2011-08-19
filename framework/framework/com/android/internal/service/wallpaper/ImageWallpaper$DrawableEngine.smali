.class Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/service/wallpaper/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;
    }
.end annotation


# instance fields
.field mBackground:Landroid/graphics/drawable/Drawable;

.field mLastXTranslation:I

.field mLastYTranslation:I

.field private final mLock:Ljava/lang/Object;

.field mOffsetsChanged:Z

.field private mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

.field mRedrawNeeded:Z

.field mVisible:Z

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/internal/service/wallpaper/ImageWallpaper;)V
    .registers 3
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method drawFrameLocked()V
    .registers 20

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mVisible:Z

    move v3, v0

    if-nez v3, :cond_8

    .line 267
    :cond_7
    :goto_7
    return-void

    .line 213
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    move v3, v0

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    move v3, v0

    if-eqz v3, :cond_7

    .line 221
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    .line 222
    .local v16, sh:Landroid/view/SurfaceHolder;
    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v15

    .line 223
    .local v15, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 224
    .local v10, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 225
    .local v14, dw:I
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 226
    .local v13, dh:I
    if-eqz v10, :cond_c5

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move v12, v3

    .line 227
    .local v12, bw:I
    :goto_32
    if-eqz v10, :cond_c9

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    move v11, v3

    .line 228
    .local v11, bh:I
    :goto_39
    sub-int v9, v14, v12

    .line 229
    .local v9, availw:I
    sub-int v8, v13, v11

    .line 230
    .local v8, availh:I
    if-gez v9, :cond_cd

    int-to-float v3, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    move v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v17, v3

    .line 231
    .local v17, xPixels:I
    :goto_4c
    if-gez v8, :cond_d3

    int-to-float v3, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mYOffset:F

    move v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v18, v3

    .line 233
    .local v18, yPixels:I
    :goto_5b
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 234
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    move v3, v0

    if-nez v3, :cond_7c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    move v3, v0

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_7c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    move v3, v0

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_7

    .line 242
    :cond_7c
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 243
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    .line 244
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    .line 246
    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 247
    .local v2, c:Landroid/graphics/Canvas;
    if-eqz v2, :cond_7

    .line 253
    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v4, v0

    :try_start_9c
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    if-ltz v9, :cond_a3

    if-gez v8, :cond_b8

    .line 255
    :cond_a3
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 256
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v12

    int-to-float v6, v11

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 257
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 258
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 260
    :cond_b8
    if-eqz v10, :cond_bd

    .line 261
    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_bd
    .catchall {:try_start_9c .. :try_end_bd} :catchall_d8

    .line 264
    :cond_bd
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_7

    .line 226
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v8           #availh:I
    .end local v9           #availw:I
    .end local v11           #bh:I
    .end local v12           #bw:I
    .end local v17           #xPixels:I
    .end local v18           #yPixels:I
    :cond_c5
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_32

    .line 227
    .restart local v12       #bw:I
    :cond_c9
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_39

    .line 230
    .restart local v8       #availh:I
    .restart local v9       #availw:I
    .restart local v11       #bh:I
    :cond_cd
    div-int/lit8 v3, v9, 0x2

    move/from16 v17, v3

    goto/16 :goto_4c

    .line 231
    .restart local v17       #xPixels:I
    :cond_d3
    div-int/lit8 v3, v8, 0x2

    move/from16 v18, v3

    goto :goto_5b

    .line 264
    .restart local v2       #c:Landroid/graphics/Canvas;
    .restart local v18       #yPixels:I
    :catchall_d8
    move-exception v3

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "surfaceHolder"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;-><init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    .line 115
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    throw v2
.end method

.method public onDesiredSizeChanged(II)V
    .registers 4
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 134
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_c

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 137
    :cond_c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 9
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    iget v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_16

    .line 184
    :cond_f
    iput p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 185
    iput p2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 188
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 203
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "event"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 167
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v1, p1, :cond_c

    .line 158
    iput-boolean p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 161
    :cond_c
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "surfaceHolder"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->getDesiredMinimumHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 145
    return-void
.end method

.method updateWallpaperLocked()V
    .registers 6

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, exception:Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v3, v3, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_b} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_b} :catch_26

    .line 278
    :goto_b
    if-eqz v2, :cond_1e

    .line 279
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 283
    const-string v3, "ImageWallpaper"

    const-string v4, "Unable to load wallpaper!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :try_start_17
    iget-object v3, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v3, v3, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_2a

    .line 291
    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 292
    return-void

    .line 273
    :catch_22
    move-exception v3

    move-object v0, v3

    .line 274
    .local v0, e:Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 277
    goto :goto_b

    .line 275
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 276
    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v2, v0

    goto :goto_b

    .line 286
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_2a
    move-exception v3

    move-object v1, v3

    .line 288
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "ImageWallpaper"

    const-string v4, "Unable reset to default wallpaper!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

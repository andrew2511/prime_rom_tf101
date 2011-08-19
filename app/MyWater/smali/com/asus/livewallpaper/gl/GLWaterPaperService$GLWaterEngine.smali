.class public Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "GLWaterPaperService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/GLWaterPaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLWaterEngine"
.end annotation


# instance fields
.field private final mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

.field mGL:Ljavax/microedition/khronos/opengles/GL;

.field private mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mHomeOrientation:I

.field mLastPointerCount:I

.field private final mListener:Landroid/view/OrientationEventListener;

.field private final mPaintingThread:Ljava/lang/Runnable;

.field private mStatusBarHeight:I

.field private mVisible:Z

.field final synthetic this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;


# direct methods
.method public constructor <init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 191
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    .line 192
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 77
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    invoke-virtual {v0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-direct {v0, v1}, Lcom/asus/livewallpaper/gl/EglHelper;-><init>(Lcom/asus/livewallpaper/gl/EglHelper$GLWrapper;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    .line 83
    iput-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 86
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mHomeOrientation:I

    .line 87
    const/16 v0, 0x19

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mStatusBarHeight:I

    .line 98
    new-instance v0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$1;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$1;-><init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mListener:Landroid/view/OrientationEventListener;

    .line 104
    new-instance v0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$2;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$2;-><init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;-><init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mPaintingThread:Ljava/lang/Runnable;

    .line 187
    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asus/livewallpaper/gl/ConfigLoader;->loadConfig(Landroid/content/Context;)V

    .line 188
    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asus/livewallpaper/gl/ConfigLoader;->loadSettings(Landroid/content/Context;)V

    .line 300
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mLastPointerCount:I

    .line 196
    invoke-virtual {p0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mHolder:Landroid/view/SurfaceHolder;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mPaintingThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mVisible:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceHolder"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 206
    new-instance v0, Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    invoke-direct {v0, v1}, Lcom/asus/livewallpaper/gl/GLWaterDraw;-><init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->setTouchEventsEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 209
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    invoke-static {}, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->getInstance()Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->enable(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;)V

    .line 213
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 214
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 224
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    invoke-static {v0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->access$300(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mPaintingThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    invoke-static {}, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->getInstance()Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->disable(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;)V

    .line 229
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 230
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 3
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    const/high16 v1, 0x4348

    mul-float/2addr v1, p1

    const/high16 v2, 0x42c8

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->moveBoatPosition(F)V

    .line 351
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 287
    move v0, p1

    .line 288
    .local v0, orientation:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 289
    :cond_0
    const/4 v1, 0x4

    sub-int v0, v1, v0

    .line 291
    :cond_1
    mul-int/lit8 v1, v0, 0x5a

    iput v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mHomeOrientation:I

    .line 294
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget-object v1, v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    mul-int/lit8 v2, v0, 0x5a

    invoke-virtual {v1, v2}, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->onScreenRotationChanged(I)V

    .line 296
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 234
    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asus/livewallpaper/gl/ConfigLoader;->loadSettings(Landroid/content/Context;)V

    .line 235
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->onVisibilityChanged(Z)V

    .line 246
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v1, v0, p3, p4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->resize(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 248
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/asus/livewallpaper/gl/Utils$System;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mStatusBarHeight:I

    .line 251
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mHomeOrientation:I

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mStatusBarHeight:I

    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->onSurfaceChanged(IIII)V

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->onVisibilityChanged(Z)V

    .line 254
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 263
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/asus/livewallpaper/gl/Utils$System;->getWindowOrientation(Landroid/content/Context;)I

    move-result v0

    .line 264
    .local v0, surface_orientation:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 265
    :cond_0
    const/4 v1, 0x4

    sub-int v0, v1, v0

    .line 267
    :cond_1
    mul-int/lit8 v1, v0, 0x5a

    iput v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mHomeOrientation:I

    .line 268
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget-object v1, v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mHomeOrientation:I

    invoke-virtual {v1, v2}, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->onSurfaceCreated(I)V

    .line 270
    invoke-virtual {p0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->startEGL()V

    .line 272
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v2, v3, v1}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->loadBitmap(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 273
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget-object p0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .end local p0
    check-cast p0, Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v1, p0}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 274
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 282
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    invoke-static {v0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->access$300(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mPaintingThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    invoke-virtual {p0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->stopEGL()V

    .line 284
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 308
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 309
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 313
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 341
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mLastPointerCount:I

    .line 342
    return-void

    .line 316
    :pswitch_1
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-virtual {v3, v1, v2, v0}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->setTouchBubbleCreatePostion(III)V

    goto :goto_0

    .line 322
    :pswitch_2
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-virtual {v3, v1, v2, v0}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->setTouchBubbleCreatePostion(III)V

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 325
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->set2ndTouchBubbleCreatePostion(III)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-virtual {v3, v4, v4, v5}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->set2ndTouchBubbleCreatePostion(III)V

    goto :goto_0

    .line 336
    :pswitch_3
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-virtual {v3, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->setContinueCreateTouchBubble(Z)V

    .line 337
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGLWaterDraw:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-virtual {v3, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->setContinueCreate2ndTouchBubble(Z)V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 358
    iput-boolean p1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mVisible:Z

    .line 360
    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mPaintingThread:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    invoke-static {v0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->access$300(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mPaintingThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startEGL()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-virtual {v0}, Lcom/asus/livewallpaper/gl/EglHelper;->start()V

    .line 379
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/asus/livewallpaper/gl/EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 380
    return-void
.end method

.method public stopEGL()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-virtual {v0}, Lcom/asus/livewallpaper/gl/EglHelper;->finish()V

    .line 384
    return-void
.end method

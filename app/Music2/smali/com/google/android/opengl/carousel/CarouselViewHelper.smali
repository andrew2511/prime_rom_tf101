.class public Lcom/google/android/opengl/carousel/CarouselViewHelper;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/opengl/carousel/CarouselCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;,
        Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;,
        Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;,
        Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
    }
.end annotation


# static fields
.field private static final REQUEST_DETAIL_TEXTURE_N:I = 0x1e8480

.field private static final REQUEST_END:I = 0x3d0900

.field private static final REQUEST_GEOMETRY_N:I = 0x2dc6c0

.field private static final REQUEST_TEXTURE_N:I = 0xf4240

.field private static final SET_DETAIL_TEXTURE_N:I = 0x2

.field private static final SET_GEOMETRY_N:I = 0x3

.field private static final SET_TEXTURE_N:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarouselViewHelper"


# instance fields
.field private DBG:Z

.field private HOLDOFF_DELAY:J

.field private mAsyncHandler:Landroid/os/Handler;

.field private mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

.field protected mConfigLandscape:Lcom/google/android/opengl/carousel/CarouselConfig;

.field protected mConfigPortrait:Lcom/google/android/opengl/carousel/CarouselConfig;

.field protected mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSyncHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    .line 35
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    .line 39
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselConfig;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/CarouselConfig;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mConfigLandscape:Lcom/google/android/opengl/carousel/CarouselConfig;

    .line 40
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/CarouselConfig;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mConfigPortrait:Lcom/google/android/opengl/carousel/CarouselConfig;

    .line 150
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarouselViewHelper.handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;-><init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;-><init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;)V
    .locals 0
    .parameter "context"
    .parameter "carouselView"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->setCarouselView(Lcom/google/android/opengl/carousel/CarouselView;)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getAsyncHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCarouselRotationAngle()F
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method protected getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    return-object v0
.end method

.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "id"

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    .locals 1
    .parameter "id"

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGeometry(I)Lcom/google/android/opengl/carousel/Mesh;
    .locals 1
    .parameter "id"

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "id"

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
    .locals 1
    .parameter "id"

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAnimationFinished(F)V
    .locals 3
    .parameter "angle"

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onCardLongPress(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 271
    return-void
.end method

.method public onCardSelected(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCardSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 291
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public onDetailSelected(III)V
    .locals 0
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 319
    return-void
.end method

.method public onInvalidateDetailTexture(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvalidateDetailTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v1, 0x1e8480

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    return-void
.end method

.method public onInvalidateGeometry(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvalidateGeometry("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v1, 0x2dc6c0

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    return-void
.end method

.method public onInvalidateTexture(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvalidateTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v1, 0xf4240

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setTextureState(II)V

    .line 235
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->onPause()V

    .line 287
    return-void
.end method

.method public onRequestDetailTexture(I)V
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x1e8480

    .line 251
    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "CarouselViewHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestDetailTexture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 256
    return-void
.end method

.method public onRequestGeometry(I)V
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x2dc6c0

    .line 238
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestGeometry("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v1, v3, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v3, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method

.method public onRequestTexture(I)V
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0xf4240

    .line 225
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v3, p1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v3, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 228
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->onResume()V

    .line 283
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 306
    return-void
.end method

.method public setCarouselView(Lcom/google/android/opengl/carousel/CarouselView;)V
    .locals 1
    .parameter "carouselView"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 141
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/carousel/CarouselView;->setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V

    .line 142
    return-void
.end method

.class Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;
.super Ljava/lang/Object;
.source "GLWaterPaperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFPS:J

.field private mPreviousTime:J

.field final synthetic this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 133
    .local v4, stick:J
    iget-wide v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->mPreviousTime:J

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 134
    iget-wide v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->mPreviousTime:J

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .line 137
    :cond_0
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->run(J)V

    .line 138
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v7

    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v7, v6}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 140
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-virtual {v6}, Lcom/asus/livewallpaper/gl/EglHelper;->swap()Z

    move-result v6

    if-nez v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-virtual {v6}, Lcom/asus/livewallpaper/gl/EglHelper;->getErrorCode()I

    move-result v6

    const/16 v7, 0x300e

    if-ne v6, v7, :cond_4

    .line 143
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-virtual {v6}, Lcom/asus/livewallpaper/gl/EglHelper;->destroySurface()V

    .line 144
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-virtual {v6}, Lcom/asus/livewallpaper/gl/EglHelper;->finish()V

    .line 145
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-virtual {v6}, Lcom/asus/livewallpaper/gl/EglHelper;->start()V

    .line 146
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v7, v7, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    iget-object v8, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v8}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$100(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/asus/livewallpaper/gl/EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v7

    iput-object v7, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 147
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v7

    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v8, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v7, v8, v6}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->loadBitmap(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 148
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v7

    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v7, v6}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 149
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v7

    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    iget-object v8, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v8}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v8

    iget-object v8, v8, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v8, v8, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mWidth:I

    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v9}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v9

    iget-object v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    invoke-virtual {v7, v6, v8, v9}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->resize(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 162
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->access$300(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v7}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$200(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 166
    .local v2, etick:J
    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v6

    iget v6, v6, Lcom/asus/livewallpaper/gl/ConfigLoader;->fix_sec_per_frame:I

    int-to-long v6, v6

    sub-long v8, v2, v4

    sub-long v0, v6, v8

    .line 168
    .local v0, delay:J
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$400(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->getIsDelayFPS()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 170
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->access$300(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v7}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$200(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_2
    :goto_1
    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->mPreviousTime:J

    sub-long v8, v4, v8

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->mFPS:J

    .line 178
    iput-wide v4, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->mPreviousTime:J

    .line 180
    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v6

    iget-boolean v6, v6, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_show_framerate:Z

    if-eqz v6, :cond_3

    .line 181
    const-string v6, "Jimmy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** FPS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->mFPS:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*** "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    return-void

    .line 151
    .end local v0           #delay:J
    .end local v2           #etick:J
    :cond_4
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-virtual {v6}, Lcom/asus/livewallpaper/gl/EglHelper;->getErrorCode()I

    move-result v6

    const/16 v7, 0x300d

    if-ne v6, v7, :cond_1

    .line 153
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v7, v7, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mEglHelper:Lcom/asus/livewallpaper/gl/EglHelper;

    iget-object v8, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v8}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$100(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/asus/livewallpaper/gl/EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v7

    iput-object v7, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 154
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v7

    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    iget-object v8, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v8}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v8

    iget-object v8, v8, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v8, v8, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mWidth:I

    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v9}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v9

    iget-object v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    invoke-virtual {v7, v6, v8, v9}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->resize(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto/16 :goto_0

    .line 173
    .restart local v0       #delay:J
    .restart local v2       #etick:J
    :cond_5
    iget-object v6, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    iget-object v6, v6, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->this$0:Lcom/asus/livewallpaper/gl/GLWaterPaperService;

    invoke-static {v6}, Lcom/asus/livewallpaper/gl/GLWaterPaperService;->access$300(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$3;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v7}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$200(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

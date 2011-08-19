.class public Lcom/layar/Layar3DActivity$Preview;
.super Landroid/view/SurfaceView;
.source "Layar3DActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Layar3DActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Preview"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;
    }
.end annotation


# instance fields
.field public format:I

.field public h:I

.field mCamera:Landroid/hardware/Camera;

.field mHolder:Landroid/view/SurfaceHolder;

.field private mListener:Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;

.field private reinitializeCounter:I

.field private reinitializeHandler:Landroid/os/Handler;

.field public w:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 496
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/Layar3DActivity$Preview;->reinitializeCounter:I

    .line 660
    new-instance v0, Lcom/layar/Layar3DActivity$Preview$1;

    invoke-direct {v0, p0}, Lcom/layar/Layar3DActivity$Preview$1;-><init>(Lcom/layar/Layar3DActivity$Preview;)V

    iput-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->reinitializeHandler:Landroid/os/Handler;

    .line 499
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity$Preview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mHolder:Landroid/view/SurfaceHolder;

    .line 500
    iget-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 501
    iget-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 502
    iput-object p2, p0, Lcom/layar/Layar3DActivity$Preview;->mListener:Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;

    .line 503
    return-void
.end method

.method private static getPreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/graphics/Point;
    .locals 9
    .parameter "params"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 620
    sget-boolean v6, Lcom/layar/util/MyConfig;->SDK5Plus:Z

    if-nez v6, :cond_0

    .line 621
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 648
    :goto_0
    return-object v6

    .line 624
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getSupportedPreviewSizes"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 626
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 627
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v3, 0x0

    .line 628
    .local v3, result:Landroid/hardware/Camera$Size;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 630
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 644
    new-instance v6, Landroid/graphics/Point;

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #result:Landroid/hardware/Camera$Size;
    .end local v5           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_0
    move-exception v6

    .line 648
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 631
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #m:Ljava/lang/reflect/Method;
    .restart local v3       #result:Landroid/hardware/Camera$Size;
    .restart local v5       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    :try_start_1
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 632
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    if-gt v6, p1, :cond_2

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    if-le v6, p2, :cond_3

    .line 630
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 635
    :cond_3
    if-nez v3, :cond_4

    .line 636
    move-object v3, v4

    .line 637
    goto :goto_2

    .line 640
    :cond_4
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    if-gt v6, v7, :cond_2

    .line 641
    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gt v6, v7, :cond_2

    .line 642
    move-object v3, v4

    goto :goto_2
.end method


# virtual methods
.method public forceStop()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 655
    iget-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    .line 658
    :cond_0
    return-void
.end method

.method public initializeCamers()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 512
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :try_start_1
    iget-object v2, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/layar/Layar3DActivity$Preview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 516
    .local v0, ex:Ljava/lang/RuntimeException;
    iput-object v4, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    .line 518
    iget v2, p0, Lcom/layar/Layar3DActivity$Preview;->reinitializeCounter:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    .line 519
    iget v2, p0, Lcom/layar/Layar3DActivity$Preview;->reinitializeCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/layar/Layar3DActivity$Preview;->reinitializeCounter:I

    .line 520
    iget v2, p0, Lcom/layar/Layar3DActivity$Preview;->reinitializeCounter:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 521
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v2

    const v3, 0x7f09003c

    invoke-static {v2, v3, v5}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/ui/SmartToast;->show()V

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/layar/Layar3DActivity$Preview;->reinitializeHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 523
    :cond_2
    iget-object v2, p0, Lcom/layar/Layar3DActivity$Preview;->mListener:Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/layar/Layar3DActivity$Preview;->mListener:Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;

    invoke-interface {v2}, Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;->onPreviewFall()V

    goto :goto_0

    .line 532
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 533
    .local v1, exception:Ljava/io/IOException;
    const-string v2, "layar.Layar3DActivity"

    const-string v3, "Failed to set preview display"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    iget-object v2, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 535
    iput-object v4, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public surfaceChanged()V
    .locals 4

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity$Preview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/layar/Layar3DActivity$Preview;->format:I

    iget v2, p0, Lcom/layar/Layar3DActivity$Preview;->w:I

    iget v3, p0, Lcom/layar/Layar3DActivity$Preview;->h:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/layar/Layar3DActivity$Preview;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 573
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 580
    if-lez p3, :cond_0

    .line 581
    iput p3, p0, Lcom/layar/Layar3DActivity$Preview;->w:I

    .line 582
    :cond_0
    if-lez p4, :cond_1

    .line 583
    iput p4, p0, Lcom/layar/Layar3DActivity$Preview;->h:I

    .line 586
    :cond_1
    iget-object v3, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_2

    .line 587
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity$Preview;->initializeCamers()V

    .line 589
    const-string v3, "layar.Layar3DActivity"

    const-string v4, "Reinitializing cam, cam==null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_2
    if-ge p3, p4, :cond_4

    .line 616
    :cond_3
    :goto_0
    return-void

    .line 596
    :cond_4
    iget-object v3, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_3

    .line 600
    :try_start_0
    iget-object v3, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 604
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, p3, p4}, Lcom/layar/Layar3DActivity$Preview;->getPreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/graphics/Point;

    move-result-object v2

    .line 605
    .local v2, size:Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 606
    iget-object v3, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 609
    iget-object v3, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v2           #size:Landroid/graphics/Point;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 613
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v3

    const v4, 0x7f090033

    .line 614
    const/4 v5, 0x0

    .line 613
    invoke-static {v3, v4, v5}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v3

    .line 614
    invoke-virtual {v3}, Lcom/layar/ui/SmartToast;->show()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity$Preview;->initializeCamers()V

    .line 549
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 565
    iget-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method

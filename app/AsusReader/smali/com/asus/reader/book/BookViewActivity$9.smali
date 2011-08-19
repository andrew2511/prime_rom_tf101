.class Lcom/asus/reader/book/BookViewActivity$9;
.super Landroid/os/Handler;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const v4, 0x7f070064

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 1428
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1511
    :cond_0
    :goto_0
    return-void

    .line 1430
    :pswitch_0
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1400(Lcom/asus/reader/book/BookViewActivity;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/asus/reader/book/BookViewActivity;->access$1500(Lcom/asus/reader/book/BookViewActivity;Landroid/view/MotionEvent;Z)V

    .line 1431
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_1

    .line 1432
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1433
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v6}, Lcom/asus/reader/book/BookViewActivity;->access$1702(Lcom/asus/reader/book/BookViewActivity;Z)Z

    .line 1434
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/high16 v3, -0x4080

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$1802(Lcom/asus/reader/book/BookViewActivity;F)F

    .line 1435
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$2000(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$1902(Lcom/asus/reader/book/BookViewActivity;F)F

    .line 1436
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$2200(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v8

    :goto_1
    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$2102(Lcom/asus/reader/book/BookViewActivity;F)F

    .line 1437
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$2000(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$2502(Lcom/asus/reader/book/BookViewActivity;F)F

    .line 1438
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1439
    :try_start_0
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$2600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1440
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1436
    :cond_2
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v4

    goto :goto_1

    .line 1443
    :pswitch_1
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1400(Lcom/asus/reader/book/BookViewActivity;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/asus/reader/book/BookViewActivity;->access$1500(Lcom/asus/reader/book/BookViewActivity;Landroid/view/MotionEvent;Z)V

    .line 1444
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 1445
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1446
    :cond_3
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v6}, Lcom/asus/reader/book/BookViewActivity;->access$1702(Lcom/asus/reader/book/BookViewActivity;Z)Z

    .line 1447
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$1802(Lcom/asus/reader/book/BookViewActivity;F)F

    .line 1448
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$2000(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$1902(Lcom/asus/reader/book/BookViewActivity;F)F

    .line 1449
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$2400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$2102(Lcom/asus/reader/book/BookViewActivity;F)F

    .line 1450
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$2000(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$2502(Lcom/asus/reader/book/BookViewActivity;F)F

    .line 1451
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1452
    :try_start_1
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$2600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1453
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 1456
    :pswitch_2
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1458
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v2

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    const/16 v3, 0x24

    if-ge v2, v3, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v6}, Lcom/asus/reader/book/BookViewActivity;->access$1302(Lcom/asus/reader/book/BookViewActivity;Z)Z

    .line 1460
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$2700(Lcom/asus/reader/book/BookViewActivity;Landroid/content/Context;I)V

    .line 1461
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 1462
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v2

    iget v3, v2, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    add-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    .line 1463
    sget-boolean v2, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "BookViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontsize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_4
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v3

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-static {v2, v3, v9, v10}, Lcom/asus/reader/book/BookViewActivity;->access$2900(Lcom/asus/reader/book/BookViewActivity;ID)V

    .line 1465
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/PageRenderer;->clearAllTextures()V

    .line 1466
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    .line 1467
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3000(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1468
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v6}, Lcom/asus/reader/book/BookViewActivity;->access$3100(Lcom/asus/reader/book/BookViewActivity;Z)V

    goto/16 :goto_0

    .line 1472
    :pswitch_3
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1474
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v2

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 1475
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v6}, Lcom/asus/reader/book/BookViewActivity;->access$1302(Lcom/asus/reader/book/BookViewActivity;Z)Z

    .line 1476
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$2700(Lcom/asus/reader/book/BookViewActivity;Landroid/content/Context;I)V

    .line 1477
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 1478
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v2

    iget v3, v2, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    .line 1479
    sget-boolean v2, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "BookViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontsize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_5
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v3

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-static {v2, v3, v9, v10}, Lcom/asus/reader/book/BookViewActivity;->access$2900(Lcom/asus/reader/book/BookViewActivity;ID)V

    .line 1481
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/PageRenderer;->clearAllTextures()V

    .line 1482
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    .line 1483
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3000(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1484
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v6}, Lcom/asus/reader/book/BookViewActivity;->access$3100(Lcom/asus/reader/book/BookViewActivity;Z)V

    goto/16 :goto_0

    .line 1488
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1489
    .local v1, progress:I
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 1490
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/PageRenderer;->clearAllTextures()V

    .line 1491
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    sub-int v4, v1, v6

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    .line 1492
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/ui/PageSeekBar2;->registerOnSeekBarChangeListener()V

    .line 1493
    :cond_6
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2, v8}, Lcom/asus/reader/book/BookViewActivity;->access$202(Lcom/asus/reader/book/BookViewActivity;Z)Z

    .line 1494
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3200(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_0

    .line 1495
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3200(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1498
    .end local v1           #progress:I
    :pswitch_5
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$200(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1499
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3200(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1503
    :pswitch_6
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1504
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1505
    .local v0, mPageNum:I
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v2

    sub-int v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/asus/reader/book/BookSurfaceView;->navigateToPageNative(I)V

    .line 1506
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 1507
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/PageRenderer;->clearAllTextures()V

    .line 1508
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    sub-int v4, v0, v6

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$9;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    goto/16 :goto_0

    .line 1428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

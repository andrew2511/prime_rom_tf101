.class final Lcom/zinio/mobile/android/view/issue/q;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:Lcom/zinio/mobile/android/view/issue/f;

.field private final c:Landroid/graphics/Paint;

.field private d:Lcom/zinio/mobile/android/view/issue/n;

.field private e:I

.field private synthetic f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    .line 465
    sget-object v0, Lcom/zinio/mobile/android/view/issue/n;->a:Lcom/zinio/mobile/android/view/issue/n;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->d:Lcom/zinio/mobile/android/view/issue/n;

    .line 469
    iput-object p2, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    .line 471
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->c:Landroid/graphics/Paint;

    .line 472
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 473
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/issue/q;->setDaemon(Z)V

    .line 476
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/q;->start()V

    .line 477
    return-void
.end method

.method private a()V
    .locals 20

    .prologue
    .line 637
    sget-object v4, Lcom/zinio/mobile/android/view/issue/n;->a:Lcom/zinio/mobile/android/view/issue/n;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/view/issue/q;->d:Lcom/zinio/mobile/android/view/issue/n;

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v4, v0

    iget v4, v4, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    move-object v5, v0

    .line 642
    if-nez v5, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->b:Lcom/zinio/mobile/android/view/issue/f;

    move-object v6, v0

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v7, v0

    iget-object v7, v7, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v8, v0

    iget-object v8, v8, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v8}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v8

    .line 651
    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v9, v0

    iget-object v9, v9, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v9}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x2

    .line 653
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v10, v0

    iget-object v10, v10, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v10}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 654
    neg-int v9, v9

    .line 657
    :cond_2
    sget-object v10, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v10}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v10}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-gez v4, :cond_9

    .line 659
    :cond_3
    invoke-virtual {v7, v8}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v10

    .line 660
    add-int/2addr v9, v8

    invoke-virtual {v7, v9}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v9

    move v11, v5

    .line 668
    :goto_2
    if-nez v10, :cond_4

    if-eqz v9, :cond_0

    .line 673
    :cond_4
    if-gez v4, :cond_b

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v12, v0

    iget-object v12, v12, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v12, v8}, Lcom/zinio/mobile/android/a/a/j;->c(I)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v8}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 676
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    .line 697
    :cond_5
    :goto_3
    sget-object v5, Lcom/zinio/mobile/android/view/issue/f;->c:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v5}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v5}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 699
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v5, v0

    invoke-static {v5}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/a/c;->a()V

    .line 702
    :cond_7
    sub-int v5, v11, v4

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 704
    const-wide/16 v14, 0x32

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    const-wide/16 v16, 0x64

    div-long v14, v14, v16

    .line 705
    long-to-float v8, v14

    .line 706
    const-wide/16 v16, 0x0

    .line 708
    :goto_4
    cmp-long v18, v16, v14

    if-gez v18, :cond_e

    .line 709
    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v16, v8

    .line 710
    monitor-enter v7

    .line 711
    move v0, v4

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v16, v16, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    .line 712
    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v9

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/zinio/mobile/android/view/issue/q;->a(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;I)V

    .line 713
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    .line 715
    goto :goto_4

    .line 652
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 663
    :cond_9
    sub-int v9, v8, v9

    invoke-virtual {v7, v9}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v9

    .line 664
    invoke-virtual {v7, v8}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v10

    .line 665
    const/4 v11, 0x0

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    goto/16 :goto_2

    .line 678
    :cond_a
    add-int/2addr v4, v5

    goto :goto_3

    .line 680
    :cond_b
    if-lez v4, :cond_c

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v5, v0

    iget-object v5, v5, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v5, v8}, Lcom/zinio/mobile/android/a/a/j;->b(I)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v5}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 683
    div-int/lit8 v4, v4, 0x2

    goto/16 :goto_3

    .line 688
    :cond_c
    sget-object v4, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v4}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 689
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 690
    :cond_d
    sget-object v4, Lcom/zinio/mobile/android/view/issue/f;->c:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v4}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 691
    goto/16 :goto_3

    .line 713
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 716
    :cond_e
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v9

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/zinio/mobile/android/view/issue/q;->a(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;I)V

    .line 718
    sget-object v4, Lcom/zinio/mobile/android/view/issue/f;->c:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v4}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v6, v4}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 721
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 723
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    move-object v4, v0

    invoke-static {v4}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zinio/mobile/android/view/a/c;->a(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 599
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/zinio/mobile/android/c;->a(Z)V

    .line 600
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/issue/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/zinio/mobile/android/view/issue/h;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    :cond_2
    :goto_1
    return-void

    .line 599
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 607
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    .line 609
    if-eqz v0, :cond_2

    .line 613
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_2

    .line 618
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 620
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 621
    if-gez p3, :cond_7

    add-int v3, v2, p3

    .line 623
    :goto_2
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 624
    if-eqz p1, :cond_5

    .line 625
    sub-int v2, v3, v2

    int-to-float v2, v2

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 626
    invoke-virtual {p1, v1, v4}, Lcom/zinio/mobile/android/view/issue/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 628
    :cond_5
    if-eqz p2, :cond_6

    .line 629
    int-to-float v2, v3

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 630
    invoke-virtual {p2, v1, v4}, Lcom/zinio/mobile/android/view/issue/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 633
    :cond_6
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_7
    move v3, p3

    .line 621
    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 2
    .parameter

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->d:Lcom/zinio/mobile/android/view/issue/n;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/n;->a:Lcom/zinio/mobile/android/view/issue/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 497
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    :try_start_2
    iput p1, p0, Lcom/zinio/mobile/android/view/issue/q;->e:I

    .line 499
    sget-object v1, Lcom/zinio/mobile/android/view/issue/n;->b:Lcom/zinio/mobile/android/view/issue/n;

    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->d:Lcom/zinio/mobile/android/view/issue/n;

    .line 501
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 502
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 503
    :try_start_3
    invoke-static {}, Lcom/zinio/mobile/android/view/issue/q;->yield()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final a(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 481
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    .line 488
    :goto_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 490
    :cond_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 484
    :try_start_0
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    .line 485
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized a(Lcom/zinio/mobile/android/view/issue/f;)V
    .locals 2
    .parameter

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    monitor-exit p0

    return-void

    .line 511
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    :try_start_2
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/q;->b:Lcom/zinio/mobile/android/view/issue/f;

    .line 513
    sget-object v1, Lcom/zinio/mobile/android/view/issue/n;->c:Lcom/zinio/mobile/android/view/issue/n;

    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->d:Lcom/zinio/mobile/android/view/issue/n;

    .line 515
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 516
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 517
    :try_start_3
    invoke-static {}, Lcom/zinio/mobile/android/view/issue/q;->yield()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 516
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 769
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    .line 772
    :goto_0
    monitor-enter v0

    .line 773
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->d:Lcom/zinio/mobile/android/view/issue/n;

    sget-object v2, Lcom/zinio/mobile/android/view/issue/n;->a:Lcom/zinio/mobile/android/view/issue/n;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/issue/n;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 776
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 780
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 782
    monitor-enter p0

    .line 783
    :try_start_4
    sget-object v1, Lcom/zinio/mobile/android/view/issue/l;->a:[I

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/q;->d:Lcom/zinio/mobile/android/view/issue/n;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/n;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 789
    :cond_1
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 785
    :pswitch_0
    :try_start_5
    sget-object v1, Lcom/zinio/mobile/android/view/issue/n;->a:Lcom/zinio/mobile/android/view/issue/n;

    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->d:Lcom/zinio/mobile/android/view/issue/n;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    iget v2, p0, Lcom/zinio/mobile/android/view/issue/q;->e:I

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v3, v3, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/j;->o()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v3, v3, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    iget-object v4, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v4, v4, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v4}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    :goto_3
    iget-object v5, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v5, v5, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v5

    if-eqz v5, :cond_2

    neg-int v4, v4

    :cond_2
    if-gez v3, :cond_b

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    if-nez v5, :cond_3

    iget-object v7, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v7, v7, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v7, v2}, Lcom/zinio/mobile/android/a/a/j;->c(I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v5, v5, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v5, v2}, Lcom/zinio/mobile/android/a/a/j;->b(I)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_4
    if-nez v6, :cond_6

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    move v4, v9

    goto :goto_3

    :cond_6
    :try_start_8
    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/issue/h;->d()I

    move-object v2, v10

    move v4, v3

    move-object v3, v6

    :goto_4
    invoke-direct {p0, v3, v2, v4}, Lcom/zinio/mobile/android/view/issue/q;->a(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;I)V

    :cond_7
    :goto_5
    monitor-exit v1

    goto :goto_2

    :cond_8
    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v2

    if-nez v6, :cond_9

    if-nez v2, :cond_9

    monitor-exit v1

    goto :goto_2

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/issue/h;->d()I

    :goto_6
    move v4, v3

    move-object v3, v6

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/h;->d()I

    goto :goto_6

    :cond_b
    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    if-nez v5, :cond_c

    iget-object v7, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v7, v7, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v7, v2}, Lcom/zinio/mobile/android/a/a/j;->b(I)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v5, v5, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v5, v2}, Lcom/zinio/mobile/android/a/a/j;->c(I)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_d
    if-nez v6, :cond_e

    monitor-exit v1

    goto/16 :goto_2

    :cond_e
    move-object v2, v6

    move v4, v3

    move-object v3, v10

    goto :goto_4

    :cond_f
    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v2

    if-nez v2, :cond_10

    if-nez v6, :cond_10

    monitor-exit v1

    goto/16 :goto_2

    :cond_10
    move v4, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_4

    :cond_11
    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v3, v3, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->g:F

    iget-object v4, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v4, v4, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->h:F

    iget-object v5, p0, Lcom/zinio/mobile/android/view/issue/q;->f:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v5, v5, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->i:F

    if-eqz v2, :cond_12

    move v6, v9

    :goto_7
    invoke-static {v6}, Lcom/zinio/mobile/android/c;->a(Z)V

    iget-object v6, p0, Lcom/zinio/mobile/android/view/issue/q;->a:Landroid/view/SurfaceHolder;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v7

    if-eqz v7, :cond_7

    const/high16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8, v3, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v2, v7, v8}, Lcom/zinio/mobile/android/view/issue/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_5

    :cond_12
    const/4 v6, 0x0

    goto :goto_7

    .line 786
    :pswitch_1
    :try_start_9
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/q;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public Lcom/asus/reader/pdf/PDFThread;
.super Ljava/lang/Thread;
.source "PDFThread.java"


# static fields
.field private static cache:Lcom/asus/reader/pdf/PDFCache;

.field private static index:I

.field private static initialPageNo:I

.field public static isLoadingNormalPage:Z

.field private static isNeedLoad:Z

.field private static isNeedLoadLowPage:Z

.field private static isPredict:Z

.field public static isSleep:Z

.field public static isfinish:Z

.field private static mBottomLocation:D

.field public static mExeInterrupt:Z

.field private static mHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

.field private static mHeight:D

.field public static mInitSuccess:Z

.field private static mIsOut:Z

.field private static mLeftLocation:D

.field private static mLoadFilePath:Ljava/lang/String;

.field private static mLoadIndex:I

.field public static mLoadingPage:I

.field private static mNeighbor1:Z

.field private static mNeighbor2:Z

.field private static mNeighbor3:Z

.field private static mNeighbor4:Z

.field private static mNeighbor5:Z

.field private static mNeighbor6:Z

.field private static mNeighbor7:Z

.field private static mNeighbor8:Z

.field private static mNeighbor9:Z

.field private static mRightLocation:D

.field public static mThreadExec:Z

.field private static mTopLocation:D

.field private static mWidth:D

.field private static mdpi:D

.field public static needInterrupt:Z

.field private static pthreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 669
    const-string v0, "ereader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public constructor <init>(Lcom/asus/reader/pdf/PDFCache;Ljava/lang/String;ILcom/asus/reader/pdf/PDFReaderView$TexHandler;)V
    .locals 2
    .parameter "c"
    .parameter "file"
    .parameter "pageNo"
    .parameter "handler"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    sput-object p1, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    .line 59
    sput-boolean v1, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    .line 60
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->isfinish:Z

    .line 61
    sput-boolean v1, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 62
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->isNeedLoadLowPage:Z

    .line 63
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->isPredict:Z

    .line 64
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    .line 65
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->isLoadingNormalPage:Z

    .line 66
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    .line 67
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mIsOut:Z

    .line 68
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    .line 69
    sput v0, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    .line 70
    sput v0, Lcom/asus/reader/pdf/PDFThread;->mLoadIndex:I

    .line 71
    sput-object p4, Lcom/asus/reader/pdf/PDFThread;->mHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    .line 73
    const-wide/high16 v0, 0x3ff0

    sput-wide v0, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    .line 74
    sput p3, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    .line 75
    sput-object p2, Lcom/asus/reader/pdf/PDFThread;->mLoadFilePath:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFThread;->threadInit()V

    .line 77
    return-void
.end method

.method static synthetic access$000()Lcom/asus/reader/pdf/PDFReaderView$TexHandler;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->mHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    return-object v0
.end method

.method private checkPageSize(DDDD)D
    .locals 6
    .parameter "sWidth"
    .parameter "sHeight"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 492
    const-wide/high16 v0, 0x3ff0

    .line 493
    .local v0, mSize:D
    const-wide/high16 v2, 0x4048

    add-double/2addr p3, v2

    .line 495
    cmpg-double v2, p1, p3

    if-gez v2, :cond_2

    .line 496
    cmpg-double v2, p5, p1

    if-gez v2, :cond_1

    cmpl-double v2, p5, p7

    if-lez v2, :cond_1

    .line 497
    div-double v2, p1, p7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 498
    div-double v0, v4, v0

    .line 513
    :cond_0
    :goto_0
    return-wide v0

    .line 499
    :cond_1
    cmpg-double v2, p7, p1

    if-gez v2, :cond_0

    cmpg-double v2, p5, p7

    if-gez v2, :cond_0

    .line 500
    div-double v2, p1, p5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 501
    div-double v0, v4, v0

    goto :goto_0

    .line 504
    :cond_2
    cmpg-double v2, p5, p3

    if-gez v2, :cond_3

    cmpl-double v2, p5, p7

    if-lez v2, :cond_3

    .line 505
    div-double v2, p3, p7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 506
    div-double v0, v4, v0

    goto :goto_0

    .line 507
    :cond_3
    cmpg-double v2, p7, p3

    if-gez v2, :cond_0

    cmpg-double v2, p5, p7

    if-gez v2, :cond_0

    .line 508
    div-double v2, p3, p5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 509
    div-double v0, v4, v0

    goto :goto_0
.end method

.method private chooseLoadPage(III)I
    .locals 12
    .parameter "page"
    .parameter "pageLocation"
    .parameter "scale"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 530
    const-string v3, "PDFThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PAGE_LOCATION = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/16 v3, 0x9

    new-array v0, v3, [Z

    .line 532
    .local v0, bNeighbor:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 533
    aput-boolean v8, v0, v2

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_0
    const/16 v1, 0x9

    .line 536
    .local v1, count:I
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x54

    if-ge v2, v3, :cond_2

    .line 537
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v4, p1, p2, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_c

    aget-boolean v3, v0, v11

    if-nez v3, :cond_c

    .line 538
    aput-boolean v7, v0, v11

    .line 539
    add-int/lit8 v1, v1, -0x1

    .line 565
    :cond_1
    :goto_2
    if-nez v1, :cond_14

    .line 570
    :cond_2
    aget-boolean v3, v0, v11

    if-eqz v3, :cond_3

    .line 571
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor5:Z

    .line 573
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_4

    .line 574
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor6:Z

    .line 576
    :cond_4
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    rem-int v3, p2, v3

    if-eqz v3, :cond_5

    aget-boolean v3, v0, v10

    if-eqz v3, :cond_5

    .line 577
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor4:Z

    .line 579
    :cond_5
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v5, v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    const/4 v3, 0x7

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_6

    .line 580
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor8:Z

    .line 582
    :cond_6
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    if-lez v3, :cond_7

    aget-boolean v3, v0, v7

    if-eqz v3, :cond_7

    .line 583
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor2:Z

    .line 585
    :cond_7
    add-int/lit8 v3, p2, 0x1

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_8

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v5, v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_8

    const/16 v3, 0x8

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_8

    .line 586
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor9:Z

    .line 588
    :cond_8
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    rem-int v3, p2, v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    if-lez v3, :cond_9

    aget-boolean v3, v0, v8

    if-eqz v3, :cond_9

    .line 589
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor1:Z

    .line 591
    :cond_9
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    rem-int v3, p2, v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v5, v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_a

    const/4 v3, 0x6

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_a

    .line 592
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor7:Z

    .line 594
    :cond_a
    add-int/lit8 v3, p2, 0x1

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_b

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    if-lez v3, :cond_b

    aget-boolean v3, v0, v9

    if-eqz v3, :cond_b

    .line 595
    sput-boolean v7, Lcom/asus/reader/pdf/PDFThread;->mNeighbor3:Z

    .line 599
    :cond_b
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor5:Z

    if-nez v3, :cond_15

    move v3, p2

    .line 619
    :goto_3
    return v3

    .line 540
    :cond_c
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_d

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-nez v3, :cond_d

    .line 541
    const/4 v3, 0x5

    aput-boolean v7, v0, v3

    .line 542
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 543
    :cond_d
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sub-int v5, p2, v7

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_e

    aget-boolean v3, v0, v10

    if-nez v3, :cond_e

    .line 544
    aput-boolean v7, v0, v10

    .line 545
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 546
    :cond_e
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v5, v5

    add-int/2addr v5, p2

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_f

    const/4 v3, 0x7

    aget-boolean v3, v0, v3

    if-nez v3, :cond_f

    .line 547
    const/4 v3, 0x7

    aput-boolean v7, v0, v3

    .line 548
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 549
    :cond_f
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v5, v5

    sub-int v5, p2, v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_10

    aget-boolean v3, v0, v7

    if-nez v3, :cond_10

    .line 550
    aput-boolean v7, v0, v7

    .line 551
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 552
    :cond_10
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v5, v5

    add-int/2addr v5, p2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_11

    const/16 v3, 0x8

    aget-boolean v3, v0, v3

    if-nez v3, :cond_11

    .line 553
    const/16 v3, 0x8

    aput-boolean v7, v0, v3

    .line 554
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 555
    :cond_11
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v5, v5

    sub-int v5, p2, v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_12

    aget-boolean v3, v0, v8

    if-nez v3, :cond_12

    .line 556
    aput-boolean v7, v0, v8

    .line 557
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 558
    :cond_12
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v5, v5

    add-int/2addr v5, p2

    sub-int/2addr v5, v7

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_13

    const/4 v3, 0x6

    aget-boolean v3, v0, v3

    if-nez v3, :cond_13

    .line 559
    const/4 v3, 0x6

    aput-boolean v7, v0, v3

    .line 560
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 561
    :cond_13
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v3, v3, v2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v5, v5

    sub-int v5, p2, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    if-ne v3, v4, :cond_1

    aget-boolean v3, v0, v9

    if-nez v3, :cond_1

    .line 562
    aput-boolean v7, v0, v9

    .line 563
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 536
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 601
    :cond_15
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor6:Z

    if-nez v3, :cond_16

    add-int/lit8 v3, p2, 0x1

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_16

    .line 602
    add-int/lit8 v3, p2, 0x1

    goto/16 :goto_3

    .line 603
    :cond_16
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor8:Z

    if-nez v3, :cond_17

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v5, v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_17

    .line 604
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    goto/16 :goto_3

    .line 605
    :cond_17
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor9:Z

    if-nez v3, :cond_18

    add-int/lit8 v3, p2, 0x1

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_18

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v5, v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    .line 606
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 607
    :cond_18
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor2:Z

    if-nez v3, :cond_19

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    if-lez v3, :cond_19

    .line 608
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    goto/16 :goto_3

    .line 609
    :cond_19
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor4:Z

    if-nez v3, :cond_1a

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    rem-int v3, p2, v3

    if-eqz v3, :cond_1a

    .line 610
    sub-int v3, p2, v7

    goto/16 :goto_3

    .line 611
    :cond_1a
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor1:Z

    if-nez v3, :cond_1b

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    rem-int v3, p2, v3

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    if-lez v3, :cond_1b

    .line 612
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    sub-int/2addr v3, v7

    goto/16 :goto_3

    .line 613
    :cond_1b
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor3:Z

    if-nez v3, :cond_1c

    add-int/lit8 v3, p2, 0x1

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    if-lez v3, :cond_1c

    .line 614
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 615
    :cond_1c
    sget-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mNeighbor7:Z

    if-nez v3, :cond_1d

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    rem-int v3, p2, v3

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v5, v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_1d

    .line 616
    sget-object v3, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v3, v3

    add-int/2addr v3, p2

    sub-int/2addr v3, v7

    goto/16 :goto_3

    .line 619
    :cond_1d
    const/4 v3, -0x1

    goto/16 :goto_3
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private dpiCheck(I)Z
    .locals 10
    .parameter "No"

    .prologue
    const/4 v9, 0x1

    const-wide v3, 0x409ff80000000000L

    const/4 v2, 0x0

    .line 460
    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    if-eqz v0, :cond_0

    .line 461
    int-to-double v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/pdf/PDFThread;->getNaturalSize(DI)D

    move-result-wide v5

    .line 466
    .local v5, bmWidth:D
    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    if-eqz v0, :cond_1

    .line 467
    int-to-double v0, p1

    invoke-direct {p0, v0, v1, v9}, Lcom/asus/reader/pdf/PDFThread;->getNaturalSize(DI)D

    move-result-wide v7

    .line 472
    .local v7, bmHeight:D
    cmpl-double v0, v5, v7

    if-lez v0, :cond_2

    .line 473
    div-double v0, v5, v3

    sput-wide v0, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    .line 478
    :goto_0
    sget-wide v0, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    .line 479
    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v0, Lcom/asus/reader/pdf/PDFCache;->screenWidth:F

    float-to-double v1, v0

    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v0, Lcom/asus/reader/pdf/PDFCache;->screenHeight:F

    float-to-double v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/asus/reader/pdf/PDFThread;->checkPageSize(DDDD)D

    move-result-wide v0

    sput-wide v0, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    .line 480
    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->dpi:[D

    sget-wide v1, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    aput-wide v1, v0, p1

    .line 481
    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    sget-wide v1, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double v1, v5, v1

    aput-wide v1, v0, p1

    .line 482
    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    sget-wide v1, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double v1, v7, v1

    aput-wide v1, v0, p1

    :goto_1
    move v0, v9

    .line 488
    .end local v5           #bmWidth:D
    .end local v7           #bmHeight:D
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 463
    goto :goto_2

    .restart local v5       #bmWidth:D
    :cond_1
    move v0, v2

    .line 469
    goto :goto_2

    .line 475
    .restart local v7       #bmHeight:D
    :cond_2
    div-double v0, v7, v3

    sput-wide v0, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    goto :goto_0

    .line 484
    :cond_3
    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->dpi:[D

    sget-wide v1, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    aput-wide v1, v0, p1

    .line 485
    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    sget-wide v1, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double v1, v5, v1

    aput-wide v1, v0, p1

    .line 486
    sget-object v0, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    sget-wide v1, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double v1, v7, v1

    aput-wide v1, v0, p1

    goto :goto_1
.end method

.method private native getHighpdfNative(Ljava/lang/String;DDIIII)V
.end method

.method private getNaturalSize(DI)D
    .locals 2
    .parameter "No"
    .parameter "flag"

    .prologue
    .line 635
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/pdf/PDFThread;->getNaturalSizeNative(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method private native getNaturalSizeNative(DI)D
.end method

.method private native getTotalPageCountNative()D
.end method

.method private native getpdfNative(Ljava/lang/String;DDZ)V
.end method

.method private native interruptLoadingPageNative()V
.end method

.method private native loadDocumentNative(Ljava/lang/String;)V
.end method

.method private setPageStatus([III)V
    .locals 0
    .parameter "PDFPage"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 453
    aput p3, p1, p2

    .line 454
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFThread;->cleanupNativeDataNative()V

    .line 666
    return-void
.end method

.method public getHighpdf(IDDIIII)Z
    .locals 10
    .parameter "pathNo"
    .parameter "no"
    .parameter "dpi"
    .parameter "xMin"
    .parameter "yMin"
    .parameter "xMax"
    .parameter "yMax"

    .prologue
    .line 647
    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.asus.reader/cache/hpage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getHighpdfNative(Ljava/lang/String;DDIIII)V

    .line 649
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalPageCount()I
    .locals 2

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFThread;->getTotalPageCountNative()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getpdf(Ljava/lang/String;IDZ)Z
    .locals 7
    .parameter "str"
    .parameter "no"
    .parameter "dpi"
    .parameter "canInterrupt"

    .prologue
    .line 639
    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    if-eqz v0, :cond_0

    .line 640
    int-to-double v2, p2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/asus/reader/pdf/PDFThread;->getpdfNative(Ljava/lang/String;DDZ)V

    .line 641
    const/4 v0, 0x1

    .line 643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetParPageStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 517
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor1:Z

    .line 518
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor2:Z

    .line 519
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor3:Z

    .line 520
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor4:Z

    .line 521
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor5:Z

    .line 522
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor6:Z

    .line 523
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor7:Z

    .line 524
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor8:Z

    .line 525
    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mNeighbor9:Z

    .line 526
    return-void
.end method

.method public run()V
    .locals 35

    .prologue
    .line 80
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isfinish:Z

    .line 81
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    .line 83
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget-boolean v4, v4, Lcom/asus/reader/pdf/PDFCache;->isOnCreate:Z

    if-eqz v4, :cond_0

    .line 84
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 85
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const-string v5, "/data/data/com.asus.reader/cache/lpage0.png"

    const/4 v6, 0x0

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_d

    .line 87
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 149
    :cond_0
    :goto_0
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 150
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoadLowPage:Z

    .line 153
    :cond_1
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/asus/reader/pdf/PDFCache;->isOnCreate:Z

    .line 155
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/asus/reader/pdf/PDFThread$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread$1;-><init>(Lcom/asus/reader/pdf/PDFThread;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 166
    :cond_2
    :goto_1
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    if-eqz v4, :cond_3e

    .line 167
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 168
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    sput v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    .line 170
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoadLowPage:Z

    if-eqz v4, :cond_b

    .line 171
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    aget v4, v4, v5

    if-nez v4, :cond_3

    .line 172
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_1c

    .line 174
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 180
    :cond_3
    :goto_2
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    if-lez v4, :cond_4

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    if-nez v4, :cond_4

    .line 181
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x1

    sub-int v6, v4, v6

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_1d

    .line 183
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 189
    :cond_4
    :goto_3
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lez v4, :cond_5

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    aget v4, v4, v5

    if-nez v4, :cond_5

    .line 190
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x2

    sub-int v6, v4, v6

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_1e

    .line 192
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 199
    :cond_5
    :goto_4
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_6

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    if-nez v4, :cond_6

    .line 200
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v6, v4, 0x1

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_1f

    .line 202
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 209
    :cond_6
    :goto_5
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    if-nez v4, :cond_7

    .line 210
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v6, v4, 0x2

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_20

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_20

    .line 212
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 219
    :cond_7
    :goto_6
    sget v6, Lcom/asus/reader/pdf/PDFThread;->mLoadIndex:I

    .local v6, i:I
    :goto_7
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    if-ge v6, v4, :cond_a

    .line 220
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v6, v4, :cond_8

    .line 221
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoadLowPage:Z

    .line 223
    :cond_8
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    aget v4, v4, v6

    if-nez v4, :cond_22

    .line 224
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v20

    .line 225
    .local v20, flag:Z
    if-eqz v20, :cond_9

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v20

    .line 228
    :cond_9
    if-eqz v20, :cond_21

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_21

    .line 229
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 230
    add-int/lit8 v4, v6, 0x1

    sput v4, Lcom/asus/reader/pdf/PDFThread;->mLoadIndex:I

    .line 236
    :goto_8
    const/4 v4, 0x1

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    .line 241
    .end local v20           #flag:Z
    :cond_a
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/asus/reader/pdf/PDFThread$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread$2;-><init>(Lcom/asus/reader/pdf/PDFThread;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 254
    .end local v6           #i:I
    :cond_b
    sget v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_2e

    .line 255
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    if-nez v4, :cond_25

    .line 256
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_9
    const/4 v4, 0x4

    if-ge v6, v4, :cond_c

    .line 257
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v4, v4, v6

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 258
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 313
    .end local v6           #i:I
    :cond_c
    :goto_a
    sget v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_2f

    .line 314
    monitor-enter p0

    .line 316
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    .line 317
    const-wide/32 v4, 0xea60

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 318
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    .line 319
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :try_start_1
    monitor-exit p0

    goto/16 :goto_1

    .line 325
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 89
    :cond_d
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_0

    .line 93
    :cond_e
    sget v4, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    if-nez v4, :cond_12

    .line 94
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 95
    const-string v5, "/data/data/com.asus.reader/cache/lpage0.png"

    const/4 v6, 0x0

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_10

    .line 96
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 101
    :cond_f
    :goto_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    const-string v5, "/data/data/com.asus.reader/cache/lpage1.png"

    const/4 v6, 0x1

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_11

    .line 103
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    goto/16 :goto_0

    .line 98
    :cond_10
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto :goto_b

    .line 105
    :cond_11
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_0

    .line 108
    :cond_12
    sget v4, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_16

    .line 109
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x1

    sub-int v6, v4, v6

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_14

    .line 111
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 116
    :cond_13
    :goto_c
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x2

    sub-int v6, v4, v6

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_15

    .line 118
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    goto/16 :goto_0

    .line 113
    :cond_14
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto :goto_c

    .line 120
    :cond_15
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_0

    .line 124
    :cond_16
    sget v4, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_19

    .line 126
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 131
    :cond_17
    :goto_d
    sget v4, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v4, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    add-int/lit8 v6, v4, 0x1

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_1a

    .line 133
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 138
    :cond_18
    :goto_e
    sget v4, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->dpiCheck(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v4, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    const/4 v6, 0x1

    sub-int v6, v4, v6

    const-wide v7, 0x3fb999999999999aL

    sget-wide v9, Lcom/asus/reader/pdf/PDFThread;->mdpi:D

    div-double/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_1b

    .line 140
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->initialPageNo:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    goto/16 :goto_0

    .line 128
    :cond_19
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_d

    .line 135
    :cond_1a
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto :goto_e

    .line 142
    :cond_1b
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_0

    .line 176
    :cond_1c
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_2

    .line 185
    :cond_1d
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_3

    .line 194
    :cond_1e
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_4

    .line 204
    :cond_1f
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_5

    .line 214
    :cond_20
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    goto/16 :goto_6

    .line 232
    .restart local v6       #i:I
    .restart local v20       #flag:Z
    :cond_21
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    .line 233
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoadLowPage:Z

    .line 234
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->mLoadIndex:I

    goto/16 :goto_8

    .line 239
    .end local v20           #flag:Z
    :cond_22
    add-int/lit8 v4, v6, 0x1

    sput v4, Lcom/asus/reader/pdf/PDFThread;->mLoadIndex:I

    .line 219
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 261
    :cond_23
    const/4 v4, 0x3

    if-ne v6, v4, :cond_24

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_24

    .line 262
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    .line 263
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 264
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isPredict:Z

    .line 265
    const/4 v4, 0x1

    sput v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    .line 256
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 268
    .end local v6           #i:I
    :cond_25
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_28

    .line 269
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_f
    const/4 v4, 0x4

    if-ge v6, v4, :cond_c

    .line 270
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v4, v4, v6

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-ne v4, v5, :cond_26

    .line 271
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    goto/16 :goto_a

    .line 274
    :cond_26
    const/4 v4, 0x3

    if-ne v6, v4, :cond_27

    .line 275
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    .line 276
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 277
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isPredict:Z

    .line 278
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sput v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    .line 269
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 282
    .end local v6           #i:I
    :cond_28
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_10
    const/4 v4, 0x4

    if-ge v6, v4, :cond_29

    .line 283
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v4, v4, v6

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 284
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 294
    :cond_29
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    if-nez v4, :cond_c

    .line 295
    const/4 v6, 0x0

    :goto_11
    const/4 v4, 0x4

    if-ge v6, v4, :cond_c

    .line 296
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v4, v4, v6

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-ne v4, v5, :cond_2c

    .line 297
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    goto/16 :goto_a

    .line 287
    :cond_2a
    const/4 v4, 0x3

    if-ne v6, v4, :cond_2b

    .line 288
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    .line 289
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 290
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isPredict:Z

    .line 291
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    .line 282
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 300
    :cond_2c
    const/4 v4, 0x3

    if-ne v6, v4, :cond_2d

    .line 301
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    .line 302
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 303
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isPredict:Z

    .line 304
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sput v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    .line 295
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 309
    .end local v6           #i:I
    :cond_2e
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isPredict:Z

    if-eqz v4, :cond_c

    .line 310
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isPredict:Z

    goto/16 :goto_a

    .line 321
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 323
    .local v19, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 325
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    .end local v19           #e:Ljava/lang/InterruptedException;
    :cond_2f
    const/4 v6, 0x3

    .restart local v6       #i:I
    :goto_12
    if-ltz v6, :cond_30

    .line 329
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v4, v4, v6

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-nez v4, :cond_31

    .line 330
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    .line 331
    sget v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    .line 338
    :cond_30
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isPredict:Z

    if-nez v4, :cond_34

    .line 339
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    if-eq v4, v5, :cond_34

    .line 340
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    goto/16 :goto_1

    .line 333
    :cond_31
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v4, v4, v6

    const/4 v5, -0x1

    if-eq v4, v5, :cond_32

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v4, v4, v6

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_33

    .line 334
    :cond_32
    sput v6, Lcom/asus/reader/pdf/PDFThread;->index:I

    .line 328
    :cond_33
    add-int/lit8 v6, v6, -0x1

    goto :goto_12

    .line 345
    :cond_34
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isNeedLoad:Z

    if-eqz v4, :cond_37

    .line 346
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->index:I

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 347
    .end local v6           #i:I
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isLoadingNormalPage:Z

    .line 348
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePage:[Ljava/lang/String;

    sget v5, Lcom/asus/reader/pdf/PDFThread;->index:I

    aget-object v8, v4, v5

    sget v9, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const-wide/high16 v4, 0x3ff0

    sget-object v6, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->dpi:[D

    sget v7, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    aget-wide v6, v6, v7

    div-double v10, v4, v6

    const/4 v12, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/asus/reader/pdf/PDFThread;->getpdf(Ljava/lang/String;IDZ)Z

    move-result v4

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mIsOut:Z

    .line 349
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isLoadingNormalPage:Z

    .line 350
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_35

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    if-nez v4, :cond_35

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mIsOut:Z

    if-nez v4, :cond_38

    .line 351
    :cond_35
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    .line 352
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    .line 369
    :cond_36
    :goto_13
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    .line 372
    :cond_37
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    if-eqz v4, :cond_2

    .line 377
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-boolean v4, Lcom/asus/reader/pdf/PDFCache;->mLoadParPage:Z

    if-eqz v4, :cond_2

    .line 379
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v18, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    .line 380
    .local v18, currPage:I
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v17, Lcom/asus/reader/pdf/PDFCache;->mParPageLocation:I

    .line 381
    .local v17, currLocation:I
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v22, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    .line 382
    .local v22, mFactor:D
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v29, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    .line 383
    .local v29, sWidth:D
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v27, Lcom/asus/reader/pdf/PDFCache;->mScreenHeightPixel:D

    .line 384
    .local v27, sHeight:D
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v24, Lcom/asus/reader/pdf/PDFCache;->mScale:D

    .line 385
    .local v24, mScale:D
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->chooseLoadPage(III)I

    move-result v26

    .line 387
    .local v26, partialPage:I
    const/4 v4, -0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_39

    .line 388
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFCache;->mLoadParPage:Z

    goto/16 :goto_1

    .line 354
    .end local v17           #currLocation:I
    .end local v18           #currPage:I
    .end local v22           #mFactor:D
    .end local v24           #mScale:D
    .end local v26           #partialPage:I
    .end local v27           #sHeight:D
    .end local v29           #sWidth:D
    :cond_38
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->index:I

    sget v6, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    aput v6, v4, v5

    .line 355
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    sget v5, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;->setPageStatus([III)V

    .line 356
    sget v4, Lcom/asus/reader/pdf/PDFThread;->mLoadingPage:I

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    if-ne v4, v5, :cond_36

    .line 357
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/asus/reader/pdf/PDFThread$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread$3;-><init>(Lcom/asus/reader/pdf/PDFThread;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_13

    .line 393
    .restart local v17       #currLocation:I
    .restart local v18       #currPage:I
    .restart local v22       #mFactor:D
    .restart local v24       #mScale:D
    .restart local v26       #partialPage:I
    .restart local v27       #sHeight:D
    .restart local v29       #sWidth:D
    :cond_39
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    rem-int v33, v26, v4

    .line 394
    .local v33, x:I
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v4

    div-int v34, v26, v4

    .line 395
    .local v34, y:I
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    aget-wide v4, v4, v5

    sput-wide v4, Lcom/asus/reader/pdf/PDFThread;->mWidth:D

    .line 396
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    sget-object v5, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v5, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    aget-wide v4, v4, v5

    sput-wide v4, Lcom/asus/reader/pdf/PDFThread;->mHeight:D

    .line 397
    move/from16 v0, v33

    int-to-double v0, v0

    move-wide v4, v0

    mul-double v4, v4, v29

    sput-wide v4, Lcom/asus/reader/pdf/PDFThread;->mLeftLocation:D

    .line 398
    move/from16 v0, v34

    int-to-double v0, v0

    move-wide v4, v0

    mul-double v4, v4, v27

    sput-wide v4, Lcom/asus/reader/pdf/PDFThread;->mTopLocation:D

    .line 399
    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mLeftLocation:D

    add-double v4, v4, v29

    sget-wide v6, Lcom/asus/reader/pdf/PDFThread;->mWidth:D

    mul-double v6, v6, v24

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3b

    .line 400
    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mWidth:D

    mul-double v4, v4, v24

    sput-wide v4, Lcom/asus/reader/pdf/PDFThread;->mRightLocation:D

    .line 404
    :goto_14
    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mTopLocation:D

    add-double v4, v4, v27

    sget-wide v6, Lcom/asus/reader/pdf/PDFThread;->mHeight:D

    mul-double v6, v6, v24

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3c

    .line 405
    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mHeight:D

    mul-double v4, v4, v24

    sput-wide v4, Lcom/asus/reader/pdf/PDFThread;->mBottomLocation:D

    .line 410
    :goto_15
    const-string v4, "PDFThread"

    const-string v5, "***************START_LOAD_PARTIAL_PAGE****************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 412
    .local v31, time:J
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v5, v0

    move-object v0, v4

    move/from16 v1, v18

    move/from16 v2, v26

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v21

    .line 413
    .local v21, mCacheValue:I
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/asus/reader/pdf/PDFCache;->selectCacheNo(I)I

    move-result v8

    .line 415
    .local v8, mCacheNo:I
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 419
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    const/4 v5, -0x1

    aput v5, v4, v8

    .line 420
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isLoadingNormalPage:Z

    .line 421
    const-string v4, "PDFThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PAGE_COORDINATE = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/asus/reader/pdf/PDFThread;->mLeftLocation:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/asus/reader/pdf/PDFThread;->mTopLocation:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/asus/reader/pdf/PDFThread;->mRightLocation:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/asus/reader/pdf/PDFThread;->mBottomLocation:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v9, v0

    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->dpi:[D

    aget-wide v4, v4, v18

    div-double v11, v24, v4

    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mLeftLocation:D

    double-to-int v13, v4

    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mTopLocation:D

    double-to-int v14, v4

    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mRightLocation:D

    double-to-int v15, v4

    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mBottomLocation:D

    move-wide v0, v4

    double-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v16}, Lcom/asus/reader/pdf/PDFThread;->getHighpdf(IDDIIII)Z

    move-result v4

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mIsOut:Z

    .line 423
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isLoadingNormalPage:Z

    .line 424
    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    if-nez v4, :cond_3a

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    if-nez v4, :cond_3a

    sget-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mIsOut:Z

    if-nez v4, :cond_3d

    .line 425
    :cond_3a
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    .line 426
    const/4 v4, 0x0

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    .line 444
    :goto_16
    const/4 v4, 0x0

    sput v4, Lcom/asus/reader/pdf/PDFThread;->pthreadCount:I

    goto/16 :goto_1

    .line 402
    .end local v8           #mCacheNo:I
    .end local v21           #mCacheValue:I
    .end local v31           #time:J
    :cond_3b
    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mLeftLocation:D

    add-double v4, v4, v29

    sput-wide v4, Lcom/asus/reader/pdf/PDFThread;->mRightLocation:D

    goto/16 :goto_14

    .line 407
    :cond_3c
    sget-wide v4, Lcom/asus/reader/pdf/PDFThread;->mTopLocation:D

    add-double v4, v4, v27

    sput-wide v4, Lcom/asus/reader/pdf/PDFThread;->mBottomLocation:D

    goto/16 :goto_15

    .line 428
    .restart local v8       #mCacheNo:I
    .restart local v21       #mCacheValue:I
    .restart local v31       #time:J
    :cond_3d
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aput v21, v4, v8

    .line 429
    sget-object v4, Lcom/asus/reader/pdf/PDFThread;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 432
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/asus/reader/pdf/PDFThread$4;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFThread$4;-><init>(Lcom/asus/reader/pdf/PDFThread;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_16

    .line 447
    .end local v8           #mCacheNo:I
    .end local v17           #currLocation:I
    .end local v18           #currPage:I
    .end local v21           #mCacheValue:I
    .end local v22           #mFactor:D
    .end local v24           #mScale:D
    .end local v26           #partialPage:I
    .end local v27           #sHeight:D
    .end local v29           #sWidth:D
    .end local v31           #time:J
    .end local v33           #x:I
    .end local v34           #y:I
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/pdf/PDFThread;->cleanUp()V

    .line 448
    const/4 v4, 0x1

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->isfinish:Z

    .line 449
    const-string v4, "PDFThread"

    const-string v5, "==========PThread_FINISHED=========="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void
.end method

.method public setInterrupt()V
    .locals 2

    .prologue
    .line 655
    const-string v0, "PDFThread"

    const-string v1, "======== Set Interrupt ========"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x1

    sput-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    .line 657
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFThread;->interruptLoadingPageNative()V

    .line 658
    return-void
.end method

.method public threadInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 624
    :try_start_0
    sget-object v1, Lcom/asus/reader/pdf/PDFThread;->mLoadFilePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/asus/reader/pdf/PDFThread;->loadDocumentNative(Ljava/lang/String;)V

    .line 625
    const/4 v1, 0x1

    sput-boolean v1, Lcom/asus/reader/pdf/PDFThread;->mInitSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 627
    .local v0, e:Ljava/lang/Exception;
    sput-boolean v3, Lcom/asus/reader/pdf/PDFThread;->isfinish:Z

    .line 628
    sput-boolean v2, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    .line 629
    sput-boolean v2, Lcom/asus/reader/pdf/PDFThread;->mInitSuccess:Z

    .line 630
    const-string v1, "PDFThread"

    const-string v2, "Load Document Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

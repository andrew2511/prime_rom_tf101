.class Lcom/google/android/street/Overlay$FadeAnimation;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimation"
.end annotation


# instance fields
.field private mLabelOpacity:I

.field private mLabelState:I

.field private mLabelStateStartTime:J


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    invoke-virtual {p0, p1}, Lcom/google/android/street/Overlay$FadeAnimation;->reset(Z)V

    .line 1407
    return-void
.end method


# virtual methods
.method public computeLabelOpacity(ZJ)J
    .locals 10
    .parameter "visible"
    .parameter "currentTime"

    .prologue
    .line 1438
    iget-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    sub-long v0, p2, v6

    .line 1439
    .local v0, delta:J
    iget v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    packed-switch v6, :pswitch_data_0

    .line 1525
    const-wide/16 v6, 0x0

    :goto_0
    return-wide v6

    .line 1441
    :pswitch_0
    iget v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    const/high16 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1442
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1443
    const/high16 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1444
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1445
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto :goto_0

    .line 1447
    :cond_0
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1448
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1449
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1450
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 1453
    :pswitch_1
    if-eqz p1, :cond_1

    .line 1454
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1455
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto :goto_0

    .line 1457
    :cond_1
    const-wide/16 v6, 0x7d0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_2

    .line 1458
    iget-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    const-wide/16 v8, 0x7d0

    add-long/2addr v6, v8

    goto :goto_0

    .line 1460
    :cond_2
    const-wide/16 v6, 0x7d0

    sub-long v2, v0, v6

    .line 1461
    .local v2, fadeDelta:J
    const-wide/16 v6, 0x190

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 1462
    const/4 v6, 0x3

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1463
    sub-long v6, p2, v2

    iput-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1464
    const-wide/32 v6, 0x10000

    const-wide/16 v8, 0x190

    sub-long/2addr v8, v2

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1467
    goto :goto_0

    .line 1469
    :cond_3
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1470
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1471
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1472
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 1478
    .end local v2           #fadeDelta:J
    :pswitch_2
    const-wide/16 v6, 0x190

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1479
    .restart local v2       #fadeDelta:J
    if-eqz p1, :cond_4

    .line 1481
    const-wide/16 v6, 0xc8

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x190

    div-long v4, v6, v8

    .line 1483
    .local v4, fadeInToDo:J
    sub-long v6, p2, v4

    iput-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1484
    const/4 v6, 0x2

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1485
    const-wide/32 v6, 0x10000

    mul-long/2addr v6, v4

    const-wide/16 v8, 0xc8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1487
    goto/16 :goto_0

    .line 1489
    .end local v4           #fadeInToDo:J
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_5

    .line 1490
    const-wide/32 v6, 0x10000

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1493
    goto/16 :goto_0

    .line 1495
    :cond_5
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1496
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1497
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1498
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 1504
    .end local v2           #fadeDelta:J
    :pswitch_3
    const-wide/16 v6, 0xc8

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1505
    .restart local v2       #fadeDelta:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_6

    .line 1506
    const-wide/32 v6, 0x10000

    const-wide/16 v8, 0xc8

    sub-long/2addr v8, v2

    mul-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1509
    goto/16 :goto_0

    .line 1511
    :cond_6
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1512
    const/high16 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1513
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1514
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto/16 :goto_0

    .line 1518
    .end local v2           #fadeDelta:J
    :pswitch_4
    if-eqz p1, :cond_7

    .line 1519
    const/4 v6, 0x2

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1520
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    move-wide v6, p2

    .line 1521
    goto/16 :goto_0

    .line 1523
    :cond_7
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1426
    iget v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 1417
    iget v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 1410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1411
    iput v2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1412
    if-eqz p1, :cond_0

    const/high16 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1414
    return-void

    :cond_0
    move v0, v2

    .line 1412
    goto :goto_0
.end method

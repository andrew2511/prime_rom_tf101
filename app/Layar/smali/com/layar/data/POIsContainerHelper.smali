.class public abstract Lcom/layar/data/POIsContainerHelper;
.super Ljava/lang/Object;
.source "POIsContainerHelper.java"

# interfaces
.implements Lcom/layar/core/POIsContainer;


# static fields
.field protected static final AUTO_FOCUS_REFRESH_INTERVAL:J = 0x1f4L


# instance fields
.field protected focusData:Lcom/layar/data/BasePOI;

.field protected focusLock:Z

.field private lastFocusPOITime:J

.field private lastFocustime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/POIsContainerHelper;->focusLock:Z

    .line 18
    iput-wide v1, p0, Lcom/layar/data/POIsContainerHelper;->lastFocustime:J

    .line 19
    iput-wide v1, p0, Lcom/layar/data/POIsContainerHelper;->lastFocusPOITime:J

    .line 12
    return-void
.end method


# virtual methods
.method public clearFocusLock()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/POIsContainerHelper;->focusLock:Z

    .line 96
    return-void
.end method

.method public getFocus()Lcom/layar/data/BasePOI;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    return-object v0
.end method

.method public getFocus(F)Lcom/layar/data/BasePOI;
    .locals 14
    .parameter "curAngle"

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x43b4

    .line 36
    invoke-virtual {p0}, Lcom/layar/data/POIsContainerHelper;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v5

    .line 37
    .local v5, pois:[Lcom/layar/data/BasePOI;
    if-nez v5, :cond_0

    move-object v8, v13

    .line 79
    :goto_0
    return-object v8

    .line 40
    :cond_0
    iget-boolean v8, p0, Lcom/layar/data/POIsContainerHelper;->focusLock:Z

    if-eqz v8, :cond_1

    .line 41
    iget-object v8, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    .local v2, now:J
    const/4 v7, 0x0

    .line 46
    .local v7, toAngle:F
    iget-object v8, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    if-eqz v8, :cond_2

    .line 47
    iget-object v8, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    iget v7, v8, Lcom/layar/data/BasePOI;->bearing:F

    .line 48
    :cond_2
    :goto_1
    cmpg-float v8, p1, v7

    if-ltz v8, :cond_6

    .line 49
    sub-float v8, p1, v7

    rem-float v0, v8, v12

    .line 52
    .local v0, bearingDelta:F
    iget-object v8, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    if-eqz v8, :cond_3

    .line 53
    iget-wide v8, p0, Lcom/layar/data/POIsContainerHelper;->lastFocusPOITime:J

    invoke-virtual {p0}, Lcom/layar/data/POIsContainerHelper;->getLastFetchTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 54
    iget-wide v8, p0, Lcom/layar/data/POIsContainerHelper;->lastFocustime:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x1f4

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 56
    :cond_3
    const/high16 v1, 0x43c8

    .line 57
    .local v1, minAngle:F
    invoke-virtual {p0}, Lcom/layar/data/POIsContainerHelper;->getScope()I

    move-result v6

    .line 58
    .local v6, scope:I
    array-length v8, v5

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v8, :cond_7

    .line 70
    cmpl-float v8, v1, v12

    if-lez v8, :cond_b

    .line 71
    iput-object v13, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    .line 76
    :cond_4
    :goto_3
    iput-wide v2, p0, Lcom/layar/data/POIsContainerHelper;->lastFocustime:J

    .line 77
    invoke-virtual {p0}, Lcom/layar/data/POIsContainerHelper;->getLastFetchTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/layar/data/POIsContainerHelper;->lastFocusPOITime:J

    .line 79
    .end local v1           #minAngle:F
    .end local v6           #scope:I
    :cond_5
    iget-object v8, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    goto :goto_0

    .line 48
    .end local v0           #bearingDelta:F
    :cond_6
    add-float/2addr p1, v12

    goto :goto_1

    .line 58
    .restart local v0       #bearingDelta:F
    .restart local v1       #minAngle:F
    .restart local v6       #scope:I
    :cond_7
    aget-object v4, v5, v9

    .line 59
    .local v4, poi:Lcom/layar/data/BasePOI;
    invoke-virtual {v4, v6}, Lcom/layar/data/BasePOI;->getDisplayPart(I)I

    move-result v10

    if-gez v10, :cond_9

    .line 58
    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 61
    :cond_9
    iget v7, v4, Lcom/layar/data/BasePOI;->bearing:F

    .line 62
    :goto_5
    cmpg-float v10, v7, p1

    if-ltz v10, :cond_a

    .line 63
    sub-float v10, v7, p1

    rem-float v0, v10, v12

    .line 64
    sub-float v10, v12, v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 65
    cmpg-float v10, v0, v1

    if-gez v10, :cond_8

    .line 66
    move v1, v0

    .line 67
    iput-object v4, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    goto :goto_4

    .line 62
    :cond_a
    add-float/2addr v7, v12

    goto :goto_5

    .line 72
    .end local v4           #poi:Lcom/layar/data/BasePOI;
    :cond_b
    float-to-double v8, v1

    const-wide/high16 v10, 0x403e

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    .line 73
    iput-object v13, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    goto :goto_3
.end method

.method protected abstract getLastFetchTime()J
.end method

.method public isFocusLock()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/layar/data/POIsContainerHelper;->focusLock:Z

    return v0
.end method

.method public setFocus(Lcom/layar/data/BasePOI;)V
    .locals 4
    .parameter "poi"

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 84
    .local v0, now:J
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/layar/data/POIsContainerHelper;->focusLock:Z

    .line 85
    iput-object p1, p0, Lcom/layar/data/POIsContainerHelper;->focusData:Lcom/layar/data/BasePOI;

    .line 86
    iput-wide v0, p0, Lcom/layar/data/POIsContainerHelper;->lastFocustime:J

    .line 87
    invoke-virtual {p0}, Lcom/layar/data/POIsContainerHelper;->getLastFetchTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/layar/data/POIsContainerHelper;->lastFocusPOITime:J

    .line 88
    return-void
.end method

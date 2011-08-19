.class public Lcom/google/android/youtube/app/utils/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeAgoString(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .parameter "date"
    .parameter "resources"

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 51
    .end local p0
    :goto_0
    return-object p0

    .line 20
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 21
    .local v2, timestampMillis:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    .local v0, nowMillis:J
    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    .line 24
    .end local p0
    const/4 p0, 0x0

    goto :goto_0

    .line 27
    :cond_1
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .end local v0           #nowMillis:J
    .end local v2           #timestampMillis:J
    long-to-int v3, v0

    .line 28
    .local v3, agoSecs:I
    div-int/lit8 v1, v3, 0x3c

    .line 29
    .local v1, agoMins:I
    div-int/lit8 v0, v1, 0x3c

    .line 30
    .local v0, agoHours:I
    div-int/lit8 p0, v0, 0x18

    .line 31
    .local p0, agoDays:I
    div-int/lit8 v4, p0, 0x7

    .line 32
    .local v4, agoWeeks:I
    div-int/lit8 v2, p0, 0x1e

    .line 33
    .local v2, agoMonths:I
    div-int/lit8 v5, v2, 0xc

    .line 35
    .local v5, agoYears:I
    if-lez v5, :cond_2

    .line 36
    const/high16 p0, 0x7f0e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #agoHours:I
    .end local p0           #agoDays:I
    const/4 v1, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #agoMins:I
    move-result-object v2

    .end local v2           #agoMonths:I
    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 37
    .restart local v0       #agoHours:I
    .restart local v1       #agoMins:I
    .restart local v2       #agoMonths:I
    .restart local p0       #agoDays:I
    :cond_2
    if-lez v2, :cond_3

    .line 38
    const p0, 0x7f0e0001

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #agoHours:I
    .end local p0           #agoDays:I
    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #agoMins:I
    move-result-object v3

    .end local v3           #agoSecs:I
    aput-object v3, v0, v1

    invoke-virtual {p1, p0, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 39
    .restart local v0       #agoHours:I
    .restart local v1       #agoMins:I
    .restart local v3       #agoSecs:I
    .restart local p0       #agoDays:I
    :cond_3
    if-lez v4, :cond_4

    .line 40
    const p0, 0x7f0e0002

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #agoHours:I
    .end local p0           #agoDays:I
    const/4 v1, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #agoMins:I
    move-result-object v2

    .end local v2           #agoMonths:I
    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 41
    .restart local v0       #agoHours:I
    .restart local v1       #agoMins:I
    .restart local v2       #agoMonths:I
    .restart local p0       #agoDays:I
    :cond_4
    if-lez p0, :cond_5

    .line 42
    const v0, 0x7f0e0003

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .end local v0           #agoHours:I
    .end local v1           #agoMins:I
    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #agoMonths:I
    move-result-object v3

    .end local v3           #agoSecs:I
    aput-object v3, v1, v2

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 43
    .restart local v0       #agoHours:I
    .restart local v1       #agoMins:I
    .restart local v2       #agoMonths:I
    .restart local v3       #agoSecs:I
    :cond_5
    if-lez v0, :cond_6

    .line 44
    const p0, 0x7f0e0004

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .end local v1           #agoMins:I
    .end local p0           #agoDays:I
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #agoMonths:I
    move-result-object v3

    .end local v3           #agoSecs:I
    aput-object v3, v1, v2

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 45
    .restart local v1       #agoMins:I
    .restart local v2       #agoMonths:I
    .restart local v3       #agoSecs:I
    .restart local p0       #agoDays:I
    :cond_6
    if-lez v1, :cond_7

    .line 46
    const p0, 0x7f0e0005

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #agoHours:I
    .end local p0           #agoDays:I
    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #agoMonths:I
    move-result-object v3

    .end local v3           #agoSecs:I
    aput-object v3, v0, v2

    invoke-virtual {p1, p0, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 47
    .restart local v0       #agoHours:I
    .restart local v2       #agoMonths:I
    .restart local v3       #agoSecs:I
    .restart local p0       #agoDays:I
    :cond_7
    if-lez v3, :cond_8

    .line 48
    const p0, 0x7f0e0006

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #agoHours:I
    .end local p0           #agoDays:I
    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #agoMins:I
    move-result-object v2

    .end local v2           #agoMonths:I
    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 51
    .restart local v0       #agoHours:I
    .restart local v1       #agoMins:I
    .restart local v2       #agoMonths:I
    .restart local p0       #agoDays:I
    :cond_8
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

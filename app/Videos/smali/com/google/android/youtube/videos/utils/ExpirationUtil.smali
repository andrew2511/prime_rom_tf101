.class public Lcom/google/android/youtube/videos/utils/ExpirationUtil;
.super Ljava/lang/Object;
.source "ExpirationUtil.java"


# static fields
.field public static final EXPIRY_WARNING_HOURS:I = 0x18

.field public static final ONE_DAY_IN_MILLIS:J = 0x5265c00L

.field public static final RECENTLY_EXPIRED_HOURS:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRemainingDays(Ljava/util/Date;Ljava/util/Date;)I
    .locals 6
    .parameter "expirationDate"
    .parameter "now"

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 33
    .local v0, remainingMillis:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    goto :goto_0
.end method

.method public static getTimeToExpirationString(Ljava/util/Date;Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 13
    .parameter "expirationDate"
    .parameter "now"
    .parameter "resources"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v7, 0x0

    .line 68
    :goto_0
    return-object v7

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 45
    .local v5, timestampMillis:J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 47
    .local v0, nowMillis:J
    cmp-long v7, v0, v5

    if-ltz v7, :cond_1

    .line 48
    const v7, 0x7f0c0025

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 51
    :cond_1
    sub-long v7, v5, v0

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    long-to-int v4, v7

    .line 52
    .local v4, remainingMinutes:I
    div-int/lit8 v3, v4, 0x3c

    .line 55
    .local v3, remainingHours:I
    if-lez v3, :cond_3

    rem-int/lit8 v7, v4, 0x3c

    if-lez v7, :cond_2

    move v7, v12

    :goto_1
    add-int/2addr v3, v7

    .line 56
    div-int/lit8 v2, v3, 0x18

    .line 59
    .local v2, remainingDays:I
    if-lez v2, :cond_5

    rem-int/lit8 v7, v3, 0x18

    if-lez v7, :cond_4

    move v7, v12

    :goto_2
    add-int/2addr v2, v7

    .line 61
    if-lez v2, :cond_6

    .line 62
    const/high16 v7, 0x7f0e

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p2, v7, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .end local v2           #remainingDays:I
    :cond_2
    move v7, v11

    .line 55
    goto :goto_1

    :cond_3
    move v7, v11

    goto :goto_1

    .restart local v2       #remainingDays:I
    :cond_4
    move v7, v11

    .line 59
    goto :goto_2

    :cond_5
    move v7, v11

    goto :goto_2

    .line 63
    :cond_6
    if-lez v3, :cond_7

    .line 64
    const v7, 0x7f0e0001

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p2, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 65
    :cond_7
    const/16 v7, 0xa

    if-le v4, v7, :cond_8

    .line 66
    const v7, 0x7f0c0023

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 68
    :cond_8
    const v7, 0x7f0c0024

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

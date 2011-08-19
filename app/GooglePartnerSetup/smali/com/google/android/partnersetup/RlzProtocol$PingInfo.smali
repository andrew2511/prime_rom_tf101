.class public final Lcom/google/android/partnersetup/RlzProtocol$PingInfo;
.super Ljava/lang/Object;
.source "RlzProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;,
        Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getResourceIdForEvent(Ljava/lang/String;)I
    .locals 1
    .parameter "eventType"

    .prologue
    .line 359
    const-string v0, "I"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const v0, 0x7f03002a

    .line 364
    :goto_0
    return v0

    .line 361
    :cond_0
    const-string v0, "F"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const v0, 0x7f03002b

    goto :goto_0

    .line 364
    :cond_1
    const v0, 0x7f030003

    goto :goto_0
.end method

.method public static final rlzStatusOfChar(Ljava/lang/String;)I
    .locals 2
    .parameter "eventType"

    .prologue
    const/4 v1, 0x0

    .line 372
    const-string v0, "I"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 378
    :goto_0
    return v0

    .line 374
    :cond_0
    const-string v0, "F"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 378
    goto :goto_0
.end method

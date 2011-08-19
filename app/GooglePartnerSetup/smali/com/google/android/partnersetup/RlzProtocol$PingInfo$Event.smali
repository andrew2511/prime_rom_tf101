.class public Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
.super Ljava/lang/Object;
.source "RlzProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzProtocol$PingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field private final accessPoint:Ljava/lang/String;

.field private final eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ap"
    .parameter "et"

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Access point and event cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    .line 397
    iput-object p2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    .line 398
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 414
    if-nez p1, :cond_0

    move v2, v4

    .line 421
    :goto_0
    return v2

    .line 417
    :cond_0
    instance-of v2, p1, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    if-nez v2, :cond_1

    move v2, v4

    .line 418
    goto :goto_0

    .line 420
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    move-object v1, v0

    .line 421
    .local v1, other:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
    iget-object v2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public getAccessPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

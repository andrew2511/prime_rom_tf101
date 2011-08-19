.class public Lorg/scribe/services/TimestampServiceImpl;
.super Ljava/lang/Object;
.source "TimestampServiceImpl.java"

# interfaces
.implements Lorg/scribe/services/TimestampService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/scribe/services/TimestampServiceImpl$Timer;
    }
.end annotation


# instance fields
.field private timer:Lorg/scribe/services/TimestampServiceImpl$Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/scribe/services/TimestampServiceImpl$Timer;

    invoke-direct {v0}, Lorg/scribe/services/TimestampServiceImpl$Timer;-><init>()V

    iput-object v0, p0, Lorg/scribe/services/TimestampServiceImpl;->timer:Lorg/scribe/services/TimestampServiceImpl$Timer;

    .line 20
    return-void
.end method

.method private getTs()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lorg/scribe/services/TimestampServiceImpl;->timer:Lorg/scribe/services/TimestampServiceImpl$Timer;

    invoke-virtual {v0}, Lorg/scribe/services/TimestampServiceImpl$Timer;->getMilis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 5

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/scribe/services/TimestampServiceImpl;->getTs()Ljava/lang/Long;

    move-result-object v0

    .line 28
    .local v0, ts:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lorg/scribe/services/TimestampServiceImpl;->timer:Lorg/scribe/services/TimestampServiceImpl$Timer;

    invoke-virtual {v3}, Lorg/scribe/services/TimestampServiceImpl$Timer;->getRandomInteger()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTimestampInSeconds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/scribe/services/TimestampServiceImpl;->getTs()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setTimer(Lorg/scribe/services/TimestampServiceImpl$Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 46
    iput-object p1, p0, Lorg/scribe/services/TimestampServiceImpl;->timer:Lorg/scribe/services/TimestampServiceImpl$Timer;

    .line 47
    return-void
.end method

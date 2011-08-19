.class public Lcom/layar/util/Profiler$TimeProfile;
.super Lcom/layar/util/Profiler$AbsractProfile;
.source "Profiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/util/Profiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/util/Profiler$TimeProfile$LocationProfile;
    }
.end annotation


# instance fields
.field public spent:J

.field private start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/layar/util/Profiler$AbsractProfile;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/layar/util/Profiler$TimeProfile;->spent:J

    return-wide v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layar/util/Profiler$TimeProfile;->start:J

    .line 88
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/layar/util/Profiler$TimeProfile;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/layar/util/Profiler$TimeProfile;->spent:J

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layar/util/Profiler$TimeProfile;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/layar/util/Profiler$TimeProfile;->spent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
.super Ljava/lang/Object;
.source "Rmq2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "D2sInfo"
.end annotation


# instance fields
.field public d2sId:Ljava/lang/String;

.field public streamId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "streamId"
    .parameter "d2sId"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->streamId:I

    .line 106
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->d2sId:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 116
    instance-of v2, p1, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;

    if-nez v2, :cond_0

    move v2, v4

    .line 121
    :goto_0
    return v2

    .line 120
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;

    move-object v1, v0

    .line 121
    .local v1, that:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->streamId:I

    iget v3, v1, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->streamId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->d2sId:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->d2sId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->d2sId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

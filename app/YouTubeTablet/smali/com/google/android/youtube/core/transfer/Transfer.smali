.class public final Lcom/google/android/youtube/core/transfer/Transfer;
.super Ljava/lang/Object;
.source "Transfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;,
        Lcom/google/android/youtube/core/transfer/Transfer$Status;
    }
.end annotation


# instance fields
.field public final bytesTotal:J

.field public final bytesTransfered:J

.field public final extras:Landroid/os/Bundle;

.field public final filePath:Ljava/lang/String;

.field public final networkUri:Ljava/lang/String;

.field public final status:Lcom/google/android/youtube/core/transfer/Transfer$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;JJLandroid/os/Bundle;)V
    .locals 1
    .parameter "filePath"
    .parameter "networkUri"
    .parameter "status"
    .parameter "bytesTransferred"
    .parameter "bytesTotal"
    .parameter "extras"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "filePath may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    .line 36
    const-string v0, "networkUri may not be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    .line 37
    const-string v0, "status may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 38
    iput-wide p4, p0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    .line 39
    iput-wide p6, p0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    .line 40
    iput-object p8, p0, Lcom/google/android/youtube/core/transfer/Transfer;->extras:Landroid/os/Bundle;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;

    if-nez v2, :cond_1

    .line 55
    :cond_0
    const/4 v2, 0x0

    .line 58
    :goto_0
    return v2

    .line 57
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    move-object v1, v0

    .line 58
    .local v1, other:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

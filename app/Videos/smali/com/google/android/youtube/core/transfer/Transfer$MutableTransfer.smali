.class final Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
.super Ljava/lang/Object;
.source "Transfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableTransfer"
.end annotation


# instance fields
.field public bytesTotal:J

.field public bytesTransfered:J

.field public extras:Landroid/os/Bundle;

.field public filePath:Ljava/lang/String;

.field public networkUri:Ljava/lang/String;

.field public status:Lcom/google/android/youtube/core/transfer/Transfer$Status;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 2
    .parameter "transfer"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->networkUri:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 96
    iget-wide v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTransfered:J

    .line 97
    iget-wide v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTotal:J

    .line 98
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->extras:Landroid/os/Bundle;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "filePath"
    .parameter "networkUri"
    .parameter "extras"

    .prologue
    const-wide/16 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "filePath may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    .line 85
    const-string v0, "networkUri may not be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->networkUri:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 87
    iput-wide v1, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTransfered:J

    .line 88
    iput-wide v1, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTotal:J

    .line 89
    iput-object p3, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->extras:Landroid/os/Bundle;

    .line 90
    return-void
.end method


# virtual methods
.method public getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;
    .locals 9

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->networkUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iget-wide v4, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTransfered:J

    iget-wide v6, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTotal:J

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->extras:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/transfer/Transfer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;JJLandroid/os/Bundle;)V

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand$1;
.super Ljava/lang/Object;
.source "UploadWatermarkSnapshotCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand$1;->this$0:Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand$1;->this$0:Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;

    invoke-static {v0}, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->access$000(Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;)V

    .line 30
    return-void
.end method

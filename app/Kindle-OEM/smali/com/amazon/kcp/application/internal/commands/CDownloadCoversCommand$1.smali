.class Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$1;
.super Ljava/lang/Object;
.source "CDownloadCoversCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;)V

    .line 99
    return-void
.end method

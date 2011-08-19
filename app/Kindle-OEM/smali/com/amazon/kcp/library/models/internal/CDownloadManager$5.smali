.class Lcom/amazon/kcp/library/models/internal/CDownloadManager$5;
.super Ljava/lang/Object;
.source "CDownloadManager.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/CDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/internal/CDownloadManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$5;->this$0:Lcom/amazon/kcp/library/models/internal/CDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$5;->this$0:Lcom/amazon/kcp/library/models/internal/CDownloadManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->access$400(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    .line 117
    return-void
.end method

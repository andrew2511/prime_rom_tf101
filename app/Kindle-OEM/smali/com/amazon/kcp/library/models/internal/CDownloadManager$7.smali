.class Lcom/amazon/kcp/library/models/internal/CDownloadManager$7;
.super Ljava/lang/Object;
.source "CDownloadManager.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


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
    .line 129
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$7;->this$0:Lcom/amazon/kcp/library/models/internal/CDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2
    .parameter

    .prologue
    .line 132
    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$7;->this$0:Lcom/amazon/kcp/library/models/internal/CDownloadManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->access$602(Lcom/amazon/kcp/library/models/internal/CDownloadManager;Z)Z

    .line 137
    :cond_0
    return-void
.end method

.class Lcom/amazon/kcp/library/models/internal/MetaData$1;
.super Ljava/lang/Object;
.source "MetaData.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/internal/MetaData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData$1;->this$0:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData$1;->this$0:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/MetaData;->access$000(Lcom/amazon/kcp/library/models/internal/MetaData;)Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData$1;->this$0:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 47
    return-void
.end method

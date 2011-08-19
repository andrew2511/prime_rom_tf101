.class Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$3;
.super Ljava/lang/Object;
.source "CMBPBookDocument.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$3;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openFoundItem(Lcom/mobipocket/common/library/reader/FoundItem;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$3;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->access$100(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->openFoundItem(Lcom/mobipocket/common/library/reader/FoundItem;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

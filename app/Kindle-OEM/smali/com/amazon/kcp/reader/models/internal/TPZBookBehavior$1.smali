.class Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior$1;
.super Ljava/lang/Object;
.source "TPZBookBehavior.java"

# interfaces
.implements Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior$1;->this$0:Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoSearchResult(Lcom/amazon/topaz/TPZBookSearchResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior$1;->this$0:Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->access$000(Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;)Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->gotoSearchResult(Lcom/amazon/topaz/TPZBookSearchResult;)V

    .line 408
    return-void
.end method

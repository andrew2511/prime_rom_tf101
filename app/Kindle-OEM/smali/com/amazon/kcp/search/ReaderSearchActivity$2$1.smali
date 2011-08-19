.class Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity$2;->onResultFound(Lcom/amazon/kcp/reader/models/BookSearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$2;

.field final synthetic val$result:Lcom/amazon/kcp/reader/models/BookSearchResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/ReaderSearchActivity$2;Lcom/amazon/kcp/reader/models/BookSearchResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$2;

    iput-object p2, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;->val$result:Lcom/amazon/kcp/reader/models/BookSearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$2;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/ReaderSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$2;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;->val$result:Lcom/amazon/kcp/reader/models/BookSearchResult;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->addSearchResult(Lcom/amazon/kcp/reader/models/BookSearchResult;)V

    .line 319
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$2;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->getResultCount()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$2;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/ReaderSearchActivity;)V

    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$2;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->appendTooManyResultsLabel()V

    .line 333
    :cond_0
    return-void
.end method

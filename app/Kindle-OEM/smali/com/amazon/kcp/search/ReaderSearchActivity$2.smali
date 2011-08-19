.class Lcom/amazon/kcp/search/ReaderSearchActivity$2;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity;->startSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/ReaderSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultFound(Lcom/amazon/kcp/reader/models/BookSearchResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    new-instance v1, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$2$1;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity$2;Lcom/amazon/kcp/reader/models/BookSearchResult;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

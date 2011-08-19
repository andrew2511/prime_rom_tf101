.class Lcom/amazon/topaz/Searcher$1;
.super Lcom/amazon/topaz/TPZBookSearchResult;
.source "Searcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/Searcher;->createSearchResult(Lcom/amazon/topaz/WordIterator;II)Lcom/amazon/kcp/reader/models/BookSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/Searcher;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/Searcher;Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 198
    .local p2, x0:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/amazon/topaz/Searcher$1;->this$0:Lcom/amazon/topaz/Searcher;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/topaz/TPZBookSearchResult;-><init>(Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public gotoLocation()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazon/topaz/Searcher$1;->this$0:Lcom/amazon/topaz/Searcher;

    invoke-static {v0}, Lcom/amazon/topaz/Searcher;->access$000(Lcom/amazon/topaz/Searcher;)Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;->gotoSearchResult(Lcom/amazon/topaz/TPZBookSearchResult;)V

    .line 202
    return-void
.end method

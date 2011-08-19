.class Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity$PeriodicalResultsAdapter;
.super Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;
.source "PeriodicalReaderSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicalResultsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity$PeriodicalResultsAdapter;->this$0:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity;Z)V

    .line 50
    return-void
.end method


# virtual methods
.method public getResultCount()I
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->getResultCount()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity$PeriodicalResultsAdapter;->this$0:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->access$000(Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

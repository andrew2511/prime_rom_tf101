.class public Lcom/amazon/kcp/search/BookReaderSearchActivity;
.super Lcom/amazon/kcp/search/ReaderSearchActivity;
.source "BookReaderSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected newResultsAdapter()Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity;Z)V

    return-object v0
.end method

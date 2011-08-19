.class Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/amazon/kcp/reader/models/BookSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSectionHeader(Lcom/amazon/kcp/reader/models/BookSearchResult;)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 517
    instance-of v0, p1, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;

    .end local p1
    iget-boolean v0, p1, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;->isSectionHeader:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/reader/models/BookSearchResult;Lcom/amazon/kcp/reader/models/BookSearchResult;)I
    .locals 3
    .parameter "result1"
    .parameter "result2"

    .prologue
    .line 490
    if-ne p1, p2, :cond_0

    .line 492
    const/4 v1, 0x0

    .line 512
    :goto_0
    return v1

    .line 495
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getPosition()I

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getPosition()I

    move-result v2

    sub-int v0, v1, v2

    .line 496
    .local v0, comparison:I
    if-nez v0, :cond_3

    .line 499
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;->isSectionHeader(Lcom/amazon/kcp/reader/models/BookSearchResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;->isSectionHeader(Lcom/amazon/kcp/reader/models/BookSearchResult;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 501
    const/4 v1, -0x1

    goto :goto_0

    .line 503
    :cond_1
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;->isSectionHeader(Lcom/amazon/kcp/reader/models/BookSearchResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;->isSectionHeader(Lcom/amazon/kcp/reader/models/BookSearchResult;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 505
    const/4 v1, 0x1

    goto :goto_0

    .line 510
    :cond_2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    :cond_3
    move v1, v0

    .line 512
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 486
    check-cast p1, Lcom/amazon/kcp/reader/models/BookSearchResult;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/reader/models/BookSearchResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;->compare(Lcom/amazon/kcp/reader/models/BookSearchResult;Lcom/amazon/kcp/reader/models/BookSearchResult;)I

    move-result v0

    return v0
.end method

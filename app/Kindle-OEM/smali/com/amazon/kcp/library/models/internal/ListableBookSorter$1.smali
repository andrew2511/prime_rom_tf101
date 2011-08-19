.class final Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;
.super Ljava/lang/Object;
.source "ListableBookSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->generatePeriodicalMap(Lcom/amazon/kcp/library/models/IBookList;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$books:Lcom/amazon/kcp/library/models/IBookList;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/IBookList;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;->val$books:Lcom/amazon/kcp/library/models/IBookList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 386
    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;->val$books:Lcom/amazon/kcp/library/models/IBookList;

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 387
    .local v0, book1:Lcom/amazon/kcp/library/models/IListableBook;
    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;->val$books:Lcom/amazon/kcp/library/models/IBookList;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v1

    .line 390
    .local v1, book2:Lcom/amazon/kcp/library/models/IListableBook;
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, date1:Ljava/lang/String;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, date2:Ljava/lang/String;
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 395
    const/4 v2, 0x0

    .line 410
    .local v2, compare:I
    :goto_0
    if-nez v2, :cond_3

    .line 413
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 415
    :goto_1
    return v5

    .line 397
    .end local v2           #compare:I
    :cond_0
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    const/4 v2, 0x1

    .restart local v2       #compare:I
    goto :goto_0

    .line 401
    .end local v2           #compare:I
    :cond_1
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 403
    const/4 v2, -0x1

    .restart local v2       #compare:I
    goto :goto_0

    .line 407
    .end local v2           #compare:I
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #compare:I
    goto :goto_0

    :cond_3
    move v5, v2

    .line 415
    goto :goto_1
.end method

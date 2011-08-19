.class public Lcom/amazon/kcp/library/models/internal/BookComparator;
.super Ljava/lang/Object;
.source "BookComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/amazon/kcp/library/models/IListableBook;",
        ">;"
    }
.end annotation


# instance fields
.field private sortingType:I

.field private stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/util/ILocalizedStringComparator;)V
    .locals 0
    .parameter "sortingType"
    .parameter "stringComparator"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/BookComparator;->sortingType:I

    .line 35
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/BookComparator;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    .line 36
    return-void
.end method

.method private comparePublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/models/IListableBook;)I
    .locals 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 101
    move-object v0, p1

    .line 102
    .local v0, book1:Lcom/amazon/kcp/library/models/IListableBook;
    move-object v1, p2

    .line 105
    .local v1, book2:Lcom/amazon/kcp/library/models/IListableBook;
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, date1:Ljava/lang/String;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, date2:Ljava/lang/String;
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 125
    .local v2, compare:I
    :goto_0
    if-nez v2, :cond_3

    .line 128
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 130
    :goto_1
    return v5

    .line 112
    .end local v2           #compare:I
    :cond_0
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    const/4 v2, 0x1

    .restart local v2       #compare:I
    goto :goto_0

    .line 116
    .end local v2           #compare:I
    :cond_1
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    const/4 v2, -0x1

    .restart local v2       #compare:I
    goto :goto_0

    .line 122
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

    .line 130
    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/models/IListableBook;)I
    .locals 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 50
    iget v6, p0, Lcom/amazon/kcp/library/models/internal/BookComparator;->sortingType:I

    packed-switch v6, :pswitch_data_0

    .line 83
    :pswitch_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getDate()J

    move-result-wide v1

    .line 84
    .local v1, date1:J
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IListableBook;->getDate()J

    move-result-wide v3

    .line 85
    .local v3, date2:J
    cmp-long v6, v1, v3

    if-nez v6, :cond_2

    .line 88
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 90
    .end local v1           #date1:J
    .end local v3           #date2:J
    :goto_0
    return v6

    .line 53
    :pswitch_1
    iget-object v6, p0, Lcom/amazon/kcp/library/models/internal/BookComparator;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/kcp/util/ILocalizedStringComparator;->localeCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, authorCompare:I
    if-nez v0, :cond_0

    .line 57
    iget-object v6, p0, Lcom/amazon/kcp/library/models/internal/BookComparator;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/kcp/util/ILocalizedStringComparator;->localeCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/BookComparator;->comparePublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v0

    :cond_0
    move v6, v0

    .line 65
    goto :goto_0

    .line 68
    .end local v0           #authorCompare:I
    :pswitch_2
    iget-object v6, p0, Lcom/amazon/kcp/library/models/internal/BookComparator;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/kcp/util/ILocalizedStringComparator;->localeCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 69
    .local v5, smartTitleCompare:I
    if-nez v5, :cond_1

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/BookComparator;->comparePublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v5

    :cond_1
    move v6, v5

    .line 74
    goto :goto_0

    .line 77
    .end local v5           #smartTitleCompare:I
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/BookComparator;->comparePublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v6

    goto :goto_0

    .line 90
    .restart local v1       #date1:J
    .restart local v3       #date2:J
    :cond_2
    cmp-long v6, v1, v3

    if-lez v6, :cond_3

    const/4 v6, -0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    check-cast p1, Lcom/amazon/kcp/library/models/IListableBook;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/library/models/IListableBook;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/BookComparator;->compare(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v0

    return v0
.end method

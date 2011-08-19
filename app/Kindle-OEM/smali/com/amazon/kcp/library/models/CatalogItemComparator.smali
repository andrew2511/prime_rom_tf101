.class public Lcom/amazon/kcp/library/models/CatalogItemComparator;
.super Ljava/lang/Object;
.source "CatalogItemComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/CatalogItemComparator$1;,
        Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final sortType:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

.field private final stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;Lcom/amazon/kcp/util/ILocalizedStringComparator;)V
    .locals 0
    .parameter "type"
    .parameter "stringComparator"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CatalogItemComparator;->sortType:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    .line 33
    iput-object p2, p0, Lcom/amazon/kcp/library/models/CatalogItemComparator;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    .line 34
    return-void
.end method

.method private comparePublicationDate(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 113
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, date1:Ljava/lang/String;
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, date2:Ljava/lang/String;
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 133
    .local v0, compare:I
    :goto_0
    if-nez v0, :cond_3

    .line 136
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 138
    :goto_1
    return v3

    .line 120
    .end local v0           #compare:I
    :cond_0
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    const/4 v0, 0x1

    .restart local v0       #compare:I
    goto :goto_0

    .line 124
    .end local v0           #compare:I
    :cond_1
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    const/4 v0, -0x1

    .restart local v0       #compare:I
    goto :goto_0

    .line 130
    .end local v0           #compare:I
    :cond_2
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #compare:I
    goto :goto_0

    :cond_3
    move v3, v0

    .line 138
    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I
    .locals 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 48
    sget-object v6, Lcom/amazon/kcp/library/models/CatalogItemComparator$1;->$SwitchMap$com$amazon$kcp$library$models$CatalogItemComparator$SortType:[I

    iget-object v7, p0, Lcom/amazon/kcp/library/models/CatalogItemComparator;->sortType:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    invoke-virtual {v7}, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 95
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getLastReadDate()J

    move-result-wide v1

    .line 96
    .local v1, date1:J
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getLastReadDate()J

    move-result-wide v3

    .line 97
    .local v3, date2:J
    cmp-long v6, v1, v3

    if-nez v6, :cond_4

    .line 99
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 101
    .end local v1           #date1:J
    .end local v3           #date2:J
    :goto_0
    return v6

    .line 51
    :pswitch_0
    iget-object v6, p0, Lcom/amazon/kcp/library/models/CatalogItemComparator;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/kcp/util/ILocalizedStringComparator;->localeCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, authorCompare:I
    if-nez v0, :cond_1

    .line 55
    iget-object v6, p0, Lcom/amazon/kcp/library/models/CatalogItemComparator;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/kcp/util/ILocalizedStringComparator;->localeCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/CatalogItemComparator;->comparePublicationDate(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I

    move-result v0

    .line 63
    :cond_0
    if-nez v0, :cond_1

    .line 67
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_1
    move v6, v0

    .line 70
    goto :goto_0

    .line 73
    .end local v0           #authorCompare:I
    :pswitch_1
    iget-object v6, p0, Lcom/amazon/kcp/library/models/CatalogItemComparator;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/kcp/util/ILocalizedStringComparator;->localeCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 74
    .local v5, smartTitleCompare:I
    if-nez v5, :cond_2

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/CatalogItemComparator;->comparePublicationDate(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I

    move-result v5

    .line 80
    :cond_2
    if-nez v5, :cond_3

    .line 84
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    :cond_3
    move v6, v5

    .line 86
    goto :goto_0

    .line 89
    .end local v5           #smartTitleCompare:I
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/CatalogItemComparator;->comparePublicationDate(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I

    move-result v6

    goto :goto_0

    .line 101
    .restart local v1       #date1:J
    .restart local v3       #date2:J
    :cond_4
    cmp-long v6, v1, v3

    if-lez v6, :cond_5

    const/4 v6, -0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/CatalogItemComparator;->compare(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I

    move-result v0

    return v0
.end method

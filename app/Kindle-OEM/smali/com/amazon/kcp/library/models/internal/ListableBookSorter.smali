.class public Lcom/amazon/kcp/library/models/internal/ListableBookSorter;
.super Ljava/lang/Object;
.source "ListableBookSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;,
        Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;
    }
.end annotation


# static fields
.field public static final FILTER_ARCHIVED_ITEMS:I = 0x4

.field public static final FILTER_BACK_ISSUES:I = 0x2

.field public static final FILTER_LOCAL_ITEMS:I = 0x3

.field public static final FILTER_NONE:I = 0x0

.field public static final FILTER_NO_BACK_ISSUES:I = 0x1

.field public static final ST_AUTHOR:I = 0x1

.field public static final ST_PUBLICATION:I = 0x4

.field public static final ST_RECENT:I = 0x2

.field public static final ST_SMART_TITLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I
    .locals 1
    .parameter "filterType"
    .parameter "sortingType"
    .parameter "stringComparator"
    .parameter "bookList"
    .parameter "dictManager"

    .prologue
    .line 148
    packed-switch p0, :pswitch_data_0

    .line 161
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sort(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;)[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sortFilterNoBackIssues(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sortFilterBackIssues(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;)[I

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sortFilterLocalItems(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sortFilterArchivedItems(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static generatePeriodicalMap(Lcom/amazon/kcp/library/models/IBookList;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/IBookList;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v1, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;-><init>(Lcom/amazon/kcp/library/models/IBookList;)V

    .line 420
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 423
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 425
    invoke-interface {p0, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 428
    instance-of v4, v0, Lcom/amazon/kcp/library/models/ILocalBookInfo;

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 438
    :cond_1
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 439
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 445
    :cond_2
    return-object v2
.end method

.method private static getBackIssueCountFromMap(Ljava/util/Map;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, generatedMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 459
    .local v1, tableIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 460
    .local v0, backIssues:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_0

    .line 466
    :cond_0
    return v0
.end method

.method public static sort(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;)[I
    .locals 7
    .parameter "sortingType"
    .parameter "stringComparator"
    .parameter "bookList"

    .prologue
    .line 110
    new-instance v2, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;-><init>(ILcom/amazon/kcp/util/ILocalizedStringComparator;)V

    .line 112
    .local v2, comparator:Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v0

    .line 114
    .local v0, bookCount:I
    new-array v4, v0, [I

    .line 115
    .local v4, sortedBookIndex:[I
    new-array v1, v0, [Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;

    .line 118
    .local v1, books:[Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 119
    new-instance v5, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;-><init>(Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;)V

    aput-object v5, v1, v3

    .line 120
    aget-object v5, v1, v3

    invoke-interface {p2, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v6

    iput-object v6, v5, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;->book:Lcom/amazon/kcp/library/models/IListableBook;

    .line 121
    aget-object v5, v1, v3

    iput v3, v5, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;->index:I

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 126
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 127
    aget-object v5, v1, v3

    iget v5, v5, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;->index:I

    aput v5, v4, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 130
    :cond_1
    return-object v4
.end method

.method private static sortFilterArchivedItems(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I
    .locals 7
    .parameter "sortingType"
    .parameter "stringComparator"
    .parameter "bookList"
    .parameter "dictManager"

    .prologue
    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, localCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 181
    invoke-interface {p2, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 182
    .local v0, book:Lcom/amazon/kcp/library/models/IListableBook;
    instance-of v6, v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    if-eqz v6, :cond_0

    invoke-interface {p3, v0}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 184
    add-int/lit8 v4, v4, 0x1

    .line 179
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v0           #book:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_1
    new-array v5, v4, [I

    .line 190
    .local v5, unsortedBookIndices:[I
    const/4 v1, 0x0

    .line 193
    .local v1, currentArrayIndex:I
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 195
    invoke-interface {p2, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 196
    .restart local v0       #book:Lcom/amazon/kcp/library/models/IListableBook;
    instance-of v6, v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    if-eqz v6, :cond_2

    invoke-interface {p3, v0}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 198
    add-int/lit8 v2, v1, 0x1

    .end local v1           #currentArrayIndex:I
    .local v2, currentArrayIndex:I
    aput v3, v5, v1

    move v1, v2

    .line 193
    .end local v2           #currentArrayIndex:I
    .restart local v1       #currentArrayIndex:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    .end local v0           #book:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_3
    invoke-static {p0, p1, p2, v5}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sortIndicies(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;[I)[I

    move-result-object v6

    return-object v6
.end method

.method private static sortFilterBackIssues(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;)[I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-static {p2}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->generatePeriodicalMap(Lcom/amazon/kcp/library/models/IBookList;)Ljava/util/Map;

    move-result-object v1

    .line 323
    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->getBackIssueCountFromMap(Ljava/util/Map;)I

    move-result v0

    new-array v2, v0, [I

    .line 324
    const/4 v0, 0x0

    .line 327
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    .line 328
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 332
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 335
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, v2

    if-ge v4, v0, :cond_0

    .line 342
    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v4

    move v4, v6

    goto :goto_0

    .line 347
    :cond_2
    invoke-static {p0, p1, p2, v2}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sortIndicies(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;[I)[I

    move-result-object v0

    .line 349
    return-object v0
.end method

.method private static sortFilterLocalItems(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I
    .locals 7
    .parameter "sortingType"
    .parameter "stringComparator"
    .parameter "bookList"
    .parameter "dictManager"

    .prologue
    .line 219
    const/4 v4, 0x0

    .line 220
    .local v4, localCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 222
    invoke-interface {p2, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 223
    .local v0, book:Lcom/amazon/kcp/library/models/IListableBook;
    instance-of v6, v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v6, :cond_0

    invoke-interface {p3, v0}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 225
    add-int/lit8 v4, v4, 0x1

    .line 220
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v0           #book:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_1
    new-array v5, v4, [I

    .line 231
    .local v5, unsortedBookIndices:[I
    const/4 v1, 0x0

    .line 234
    .local v1, currentArrayIndex:I
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 236
    invoke-interface {p2, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 237
    .restart local v0       #book:Lcom/amazon/kcp/library/models/IListableBook;
    instance-of v6, v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v6, :cond_2

    invoke-interface {p3, v0}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 239
    add-int/lit8 v2, v1, 0x1

    .end local v1           #currentArrayIndex:I
    .local v2, currentArrayIndex:I
    aput v3, v5, v1

    move v1, v2

    .line 234
    .end local v2           #currentArrayIndex:I
    .restart local v1       #currentArrayIndex:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    .end local v0           #book:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_3
    invoke-static {p0, p1, p2, v5}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sortIndicies(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;[I)[I

    move-result-object v6

    return-object v6
.end method

.method private static sortFilterNoBackIssues(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I
    .locals 11
    .parameter "sortingType"
    .parameter "stringComparator"
    .parameter "bookList"
    .parameter "dictManager"

    .prologue
    .line 261
    invoke-static {p2}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->generatePeriodicalMap(Lcom/amazon/kcp/library/models/IBookList;)Ljava/util/Map;

    move-result-object v5

    .line 264
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    const/4 v6, 0x0

    .line 265
    .local v6, preferredDictCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 267
    invoke-interface {p2, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v9

    invoke-interface {p3, v9}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 269
    add-int/lit8 v6, v6, 0x1

    .line 265
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v9

    invoke-static {v5}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->getBackIssueCountFromMap(Ljava/util/Map;)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v6

    new-array v7, v9, [I

    .line 275
    .local v7, sortedBookIndices:[I
    const/4 v1, 0x0

    .line 278
    .local v1, currentArrayIndex:I
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 279
    .local v8, tableIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 281
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/TreeSet;

    invoke-virtual {v9}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 282
    .local v4, index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #currentArrayIndex:I
    .local v2, currentArrayIndex:I
    aput v4, v7, v1

    move v1, v2

    .line 283
    .end local v2           #currentArrayIndex:I
    .restart local v1       #currentArrayIndex:I
    goto :goto_1

    .line 286
    .end local v4           #index:I
    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 288
    invoke-interface {p2, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 292
    .local v0, book:Lcom/amazon/kcp/library/models/IListableBook;
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v9

    if-eqz v9, :cond_3

    instance-of v9, v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v9, :cond_4

    :cond_3
    invoke-interface {p3, v0}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v9

    if-nez v9, :cond_4

    array-length v9, v7

    if-ge v1, v9, :cond_4

    .line 297
    add-int/lit8 v2, v1, 0x1

    .end local v1           #currentArrayIndex:I
    .restart local v2       #currentArrayIndex:I
    aput v3, v7, v1

    move v1, v2

    .line 286
    .end local v2           #currentArrayIndex:I
    .restart local v1       #currentArrayIndex:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 302
    .end local v0           #book:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_5
    invoke-static {p0, p1, p2, v7}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->sortIndicies(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;[I)[I

    move-result-object v7

    .line 304
    return-object v7
.end method

.method private static sortIndicies(ILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;[I)[I
    .locals 6
    .parameter "sortingType"
    .parameter "stringComparator"
    .parameter "bookList"
    .parameter "indices"

    .prologue
    .line 482
    new-instance v1, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;-><init>(ILcom/amazon/kcp/util/ILocalizedStringComparator;)V

    .line 484
    .local v1, comparator:Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;
    array-length v4, p3

    new-array v3, v4, [I

    .line 485
    .local v3, sortedBookIndices:[I
    array-length v4, p3

    new-array v0, v4, [Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;

    .line 488
    .local v0, books:[Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_0

    .line 490
    new-instance v4, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;-><init>(Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;)V

    aput-object v4, v0, v2

    .line 491
    aget-object v4, v0, v2

    aget v5, p3, v2

    invoke-interface {p2, v5}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v5

    iput-object v5, v4, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;->book:Lcom/amazon/kcp/library/models/IListableBook;

    .line 492
    aget-object v4, v0, v2

    aget v5, p3, v2

    iput v5, v4, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;->index:I

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 497
    const/4 v2, 0x0

    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_1

    .line 499
    aget-object v4, v0, v2

    iget v4, v4, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;->index:I

    aput v4, v3, v2

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 502
    :cond_1
    return-object v3
.end method

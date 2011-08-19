.class public Lcom/amazon/kcp/library/models/CatalogViewCache;
.super Ljava/lang/Object;
.source "CatalogViewCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/CatalogViewCache$2;,
        Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;,
        Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;,
        Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;
    }
.end annotation


# instance fields
.field private final catalog:Lcom/amazon/kcp/library/models/IContentCatalog;

.field private final stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

.field private final viewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;",
            "Lcom/amazon/kcp/library/models/ICatalogView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/IContentCatalog;Lcom/amazon/kcp/util/ILocalizedStringComparator;)V
    .locals 1
    .parameter "catalog"
    .parameter "stringComparator"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->viewMap:Ljava/util/HashMap;

    .line 148
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->catalog:Lcom/amazon/kcp/library/models/IContentCatalog;

    .line 149
    iput-object p2, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    .line 150
    return-void
.end method


# virtual methods
.method public createComparator(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)Ljava/util/Comparator;
    .locals 3
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$2;->$SwitchMap$com$amazon$kcp$library$models$CatalogViewCache$CatalogSortField:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 246
    :pswitch_0
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItemComparator;

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->TITLE:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogItemComparator;-><init>(Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;Lcom/amazon/kcp/util/ILocalizedStringComparator;)V

    goto :goto_0

    .line 248
    :pswitch_1
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItemComparator;

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogItemComparator;-><init>(Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;Lcom/amazon/kcp/util/ILocalizedStringComparator;)V

    goto :goto_0

    .line 250
    :pswitch_2
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItemComparator;

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->RECENT:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogItemComparator;-><init>(Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;Lcom/amazon/kcp/util/ILocalizedStringComparator;)V

    goto :goto_0

    .line 252
    :pswitch_3
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItemComparator;

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->PUBLICATION:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogItemComparator;-><init>(Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;Lcom/amazon/kcp/util/ILocalizedStringComparator;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)Lcom/amazon/kcp/library/models/ICatalogView;
    .locals 6
    .parameter "filterType"
    .parameter "sortField"

    .prologue
    .line 154
    invoke-static {}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->values()[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    move-result-object v0

    .local v0, arr$:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 156
    .local v3, viewType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;
    iget-object v4, v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->filterType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    invoke-virtual {v4, p1}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->sortField:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-virtual {v4, p2}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v4

    return-object v4

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v3           #viewType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unknown view type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;
    .locals 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogView;

    .line 168
    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-object v0

    .line 180
    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$2;->$SwitchMap$com$amazon$kcp$library$models$CatalogViewCache$CatalogViewType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 236
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    :pswitch_0
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredCatalogView;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CatalogViewCache;->catalog:Lcom/amazon/kcp/library/models/IContentCatalog;

    new-instance v2, Lcom/amazon/kcp/library/models/CatalogViewCache$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/models/CatalogViewCache$1;-><init>(Lcom/amazon/kcp/library/models/CatalogViewCache;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/FilteredCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    goto :goto_1

    .line 195
    :pswitch_1
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/amazon/kcp/library/models/GroupedCatalogView;

    new-instance v2, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;

    invoke-direct {v2}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/GroupedCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;)V

    move-object v0, v1

    .line 197
    goto :goto_1

    .line 200
    :pswitch_2
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ALL:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/amazon/kcp/library/models/SortedCatalogView;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->sortField:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/models/CatalogViewCache;->createComparator(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/SortedCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 202
    goto :goto_1

    .line 204
    :pswitch_3
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/amazon/kcp/library/models/FilteredCatalogView;

    new-instance v2, Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter;

    invoke-direct {v2}, Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/FilteredCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 206
    new-instance v0, Lcom/amazon/kcp/library/models/GroupedCatalogView;

    new-instance v2, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;

    invoke-direct {v2}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/GroupedCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;)V

    goto :goto_1

    .line 210
    :pswitch_4
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ARCHIVE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/amazon/kcp/library/models/SortedCatalogView;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->sortField:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/models/CatalogViewCache;->createComparator(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/SortedCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 212
    goto :goto_1

    .line 214
    :pswitch_5
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/amazon/kcp/library/models/FilteredCatalogView;

    new-instance v2, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter;

    invoke-direct {v2}, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/FilteredCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 216
    new-instance v0, Lcom/amazon/kcp/library/models/GroupedCatalogView;

    new-instance v2, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;

    invoke-direct {v2}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/GroupedCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;)V

    goto :goto_1

    .line 221
    :pswitch_6
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/amazon/kcp/library/models/SortedCatalogView;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->sortField:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/models/CatalogViewCache;->createComparator(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/SortedCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 224
    goto/16 :goto_1

    .line 226
    :pswitch_7
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/amazon/kcp/library/models/FilteredCatalogView;

    new-instance v2, Lcom/amazon/kcp/library/models/PeridiocalCatalogFilter;

    invoke-direct {v2}, Lcom/amazon/kcp/library/models/PeridiocalCatalogFilter;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/FilteredCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    move-object v0, v1

    .line 228
    goto/16 :goto_1

    .line 231
    :pswitch_8
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/amazon/kcp/library/models/SortedCatalogView;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->sortField:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/models/CatalogViewCache;->createComparator(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/SortedCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Ljava/util/Comparator;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.class public final enum Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
.super Ljava/lang/Enum;
.source "LibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LibraryFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

.field public static final enum ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

.field public static final enum ARCHIVED_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

.field public static final enum LOCAL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

.field public static final enum PERIODICALS_ONLY_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;


# instance fields
.field public final catalogFilterType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public final defaultSortType:I

.field public final sortPersistenceKey:Ljava/lang/String;

.field public final supportedSortTypes:[I

.field public final titleStringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x2

    .line 101
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    const-string v1, "LOCAL_ITEMS_FILTER"

    const v3, 0x7f0b0028

    new-array v4, v13, [I

    fill-array-data v4, :array_0

    const-string v6, "HomeSortType"

    sget-object v7, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;-><init>(Ljava/lang/String;II[IILjava/lang/String;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->LOCAL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 106
    new-instance v3, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    const-string v4, "ARCHIVED_ITEMS_FILTER"

    const v6, 0x7f0b0029

    new-array v7, v11, [I

    fill-array-data v7, :array_1

    const-string v9, "AISortType"

    sget-object v10, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ARCHIVED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    move v5, v12

    move v8, v12

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;-><init>(Ljava/lang/String;II[IILjava/lang/String;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;)V

    sput-object v3, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ARCHIVED_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 111
    new-instance v3, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    const-string v4, "PERIODICALS_ONLY_FILTER"

    const v6, 0x7f0b002a

    new-array v7, v11, [I

    fill-array-data v7, :array_2

    const-string v9, "BISortType"

    sget-object v10, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    move v5, v11

    move v8, v2

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;-><init>(Ljava/lang/String;II[IILjava/lang/String;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;)V

    sput-object v3, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->PERIODICALS_ONLY_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 116
    new-instance v3, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    const-string v4, "ALL_ITEMS_FILTER"

    const v6, 0x7f0b0027

    new-array v7, v11, [I

    fill-array-data v7, :array_3

    const-string v9, "AllItemsSortType"

    sget-object v10, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ALLITEMS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    move v5, v13

    move v8, v12

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;-><init>(Ljava/lang/String;II[IILjava/lang/String;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;)V

    sput-object v3, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->LOCAL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ARCHIVED_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->PERIODICALS_ONLY_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    aput-object v1, v0, v13

    sput-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->$VALUES:[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-void

    .line 101
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 106
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 111
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 116
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II[IILjava/lang/String;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;)V
    .locals 5
    .parameter
    .parameter
    .parameter "titleStringId"
    .parameter "supportedSortTypes"
    .parameter "defaultSortType"
    .parameter "sortPersistenceKey"
    .parameter "catalogType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null/empty supportedSortTypes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportedSortTypes:[I

    .line 156
    invoke-virtual {p0, p5}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportsSortType(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultSortType (%d) not in supportedSortTypes (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    invoke-static {p6}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sortPersistenceKey is null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_3
    iput p3, p0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->titleStringId:I

    .line 167
    iput p5, p0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->defaultSortType:I

    .line 168
    iput-object p6, p0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->sortPersistenceKey:Ljava/lang/String;

    .line 169
    iput-object p7, p0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->catalogFilterType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 170
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 1
    .parameter

    .prologue
    .line 98
    const-class v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->$VALUES:[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-object v0
.end method


# virtual methods
.method supportsSortType(I)Z
    .locals 2
    .parameter "sortType"

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportedSortTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportedSortTypes:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 185
    :goto_1
    return v1

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

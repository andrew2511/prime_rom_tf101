.class Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;
.super Ljava/lang/Object;
.source "LocalLibraryVolumesProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# static fields
.field private static final COLUMNS:Ljava/util/LinkedHashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUP_BY:Ljava/lang/String; = "volume_id"

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->createColumns()Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->COLUMNS:Ljava/util/LinkedHashSet;

    .line 53
    sget-object v0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->COLUMNS:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->COLUMNS:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V
    .locals 1
    .parameter "context"
    .parameter "database"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "missing database"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 86
    return-void
.end method

.method private static createColumns()Ljava/util/LinkedHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getCollectionVolumeColumnToClass()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 70
    .local v1, indeterminates:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    const-string v2, "volume_id"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    const-string v2, "account_name"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getCollectionVolumesColumnNames()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v0, determinates:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 78
    return-object v0
.end method

.method private getQueryProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "projection"

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    sget-object v4, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->PROJECTION:[Ljava/lang/String;

    .line 188
    :goto_0
    return-object v4

    .line 182
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 183
    .local v1, column:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->COLUMNS:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 184
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in projection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 182
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #column:Ljava/lang/String;
    :cond_2
    move-object v4, p1

    .line 188
    goto :goto_0
.end method

.method private getSelectionBuilder(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 195
    new-instance v1, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v1}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    .line 196
    .local v1, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-virtual {v1, p2, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 198
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, account:Ljava/lang/String;
    const-string v2, "account_name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 200
    return-object v1
.end method

.method private isSyncAdapter(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 89
    const-string v0, "callerIsSyncAdapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/books/util/UriUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private prefixMatchExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 102
    const-string v0, "(%s LIKE (?||\'%%\') OR %s LIKE (\'%% \'||?||\'%%\'))"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Library Uris are read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Library Uris are read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Library Uris are read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 112
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->getQueryProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, columns:[Ljava/lang/String;
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->getSelectionBuilder(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v4

    .line 114
    .local v4, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    const-string v6, "dirty!=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v6, v8}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 118
    :cond_0
    const-string v6, "query"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 119
    .local v13, query:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title"

    invoke-direct {p0, v8}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->prefixMatchExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " OR "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "creator"

    invoke-direct {p0, v8}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->prefixMatchExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v13, v8, v9

    const/4 v9, 0x1

    aput-object v13, v8, v9

    const/4 v9, 0x2

    aput-object v13, v8, v9

    const/4 v9, 0x3

    aput-object v13, v8, v9

    invoke-virtual {v4, v6, v8}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 129
    :cond_1
    iget-object v6, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 134
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "view_collection_volumes"

    const-string v8, "volume_id"

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 137
    .local v12, c:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 138
    .local v14, resolver:Landroid/content/ContentResolver;
    move-object v0, v12

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 140
    return-object v12
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Library Uris are read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

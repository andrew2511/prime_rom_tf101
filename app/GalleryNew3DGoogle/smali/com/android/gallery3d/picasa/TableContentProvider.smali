.class public Lcom/android/gallery3d/picasa/TableContentProvider;
.super Landroid/content/ContentProvider;
.source "TableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    }
.end annotation


# static fields
.field private static final ALBUM_TYPE_WHERE:Ljava/lang/String;


# instance fields
.field protected mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (SELECT album_id FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasa/TableContentProvider;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 41
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    .line 232
    return-void
.end method

.method private final notifyChange(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/gallery3d/picasa/TableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 230
    return-void
.end method

.method private final whereWithId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, where:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/picasa/EntrySchema;)V
    .locals 4
    .parameter "authority"
    .parameter "path"
    .parameter "mimeSubtype"
    .parameter "table"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    .line 51
    .local v0, mappings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;>;"
    iget-object v1, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 52
    .local v1, matcher:Landroid/content/UriMatcher;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    new-instance v2, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;

    const/4 v3, 0x0

    invoke-direct {v2, p4, p3, v3}, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;-><init>(Lcom/android/gallery3d/picasa/EntrySchema;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    new-instance v2, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;

    const/4 v3, 0x1

    invoke-direct {v2, p4, p3, v3}, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;-><init>(Lcom/android/gallery3d/picasa/EntrySchema;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 147
    iget-object v7, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 148
    .local v4, match:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    iget-object v7, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;

    move-object v3, v7

    .line 149
    .local v3, mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    :goto_0
    if-eqz v3, :cond_0

    iget-boolean v7, v3, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v7, :cond_2

    .line 150
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 148
    .end local v3           #mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    :cond_1
    const/4 v7, 0x0

    move-object v3, v7

    goto :goto_0

    .line 154
    .restart local v3       #mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    :cond_2
    iget-object v7, v3, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->table:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v7}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, tableName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 156
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 158
    .local v5, numInserted:I
    :try_start_0
    array-length v2, p2

    .line 159
    .local v2, length:I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 160
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eq v1, v2, :cond_3

    .line 161
    const-string v7, "_id"

    aget-object v8, p2, v1

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    move v5, v2

    .line 166
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasa/TableContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 169
    return v5

    .line 166
    .end local v1           #i:I
    .end local v2           #length:I
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 197
    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 198
    .local v3, match:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 199
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;

    .line 204
    .local v2, mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    iget-boolean v5, v2, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v5, :cond_1

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/picasa/TableContentProvider;->whereWithId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 210
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v2, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->table:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v5}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, tableName:Ljava/lang/String;
    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasa/TableContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 213
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "uri"

    .prologue
    .line 72
    iget-object v3, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 73
    .local v1, match:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 74
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;

    .line 79
    .local v0, mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    iget-boolean v3, v0, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v3, :cond_1

    const-string v3, "vnd.android.cursor.item"

    move-object v2, v3

    .line 82
    .local v2, prefix:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->mimeSubtype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 79
    .end local v2           #prefix:Ljava/lang/String;
    :cond_1
    const-string v3, "vnd.android.cursor.dir"

    move-object v2, v3

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 126
    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 127
    .local v1, match:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;

    move-object v0, v5

    .line 128
    .local v0, mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v5, :cond_2

    .line 129
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    .end local v0           #mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 134
    .restart local v0       #mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    :cond_2
    iget-object v5, v0, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->table:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v5}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, tableName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 136
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    .line 137
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasa/TableContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 138
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 140
    :cond_3
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 90
    .local v14, match:I
    const/4 v3, -0x1

    if-ne v14, v3, :cond_0

    .line 91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;

    .line 96
    .local v13, mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    iget-boolean v3, v13, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v3, :cond_1

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/picasa/TableContentProvider;->whereWithId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 101
    :cond_1
    iget-object v3, v13, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->table:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, tableName:Ljava/lang/String;
    const-string v3, "limit"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, limit:Ljava/lang/String;
    if-nez p3, :cond_2

    sget-object v3, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    const-string v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 107
    .local v15, type:Ljava/lang/String;
    const-string v3, "image"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    sget-object p3, Lcom/android/gallery3d/picasa/TableContentProvider;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 109
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p4, v0

    .end local p4
    const/4 v3, 0x0

    const-string v5, "image/%"

    aput-object v5, p4, v3

    .line 116
    .end local v15           #type:Ljava/lang/String;
    .restart local p4
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 119
    .local v12, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/picasa/TableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 120
    return-object v12

    .line 110
    .end local v12           #cursor:Landroid/database/Cursor;
    .restart local v15       #type:Ljava/lang/String;
    :cond_3
    const-string v3, "video"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    sget-object p3, Lcom/android/gallery3d/picasa/TableContentProvider;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 112
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p4, v0

    .end local p4
    const/4 v3, 0x0

    const-string v5, "video/%"

    aput-object v5, p4, v3

    .restart local p4
    goto :goto_0
.end method

.method public setDatabase(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .parameter "database"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 46
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 175
    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 176
    .local v3, match:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 177
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;

    .line 182
    .local v2, mapping:Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;
    iget-boolean v5, v2, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v5, :cond_1

    .line 183
    invoke-direct {p0, p1, p3}, Lcom/android/gallery3d/picasa/TableContentProvider;->whereWithId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 187
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 188
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v2, Lcom/android/gallery3d/picasa/TableContentProvider$Mapping;->table:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v5}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, tableName:Ljava/lang/String;
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasa/TableContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 191
    return v0
.end method

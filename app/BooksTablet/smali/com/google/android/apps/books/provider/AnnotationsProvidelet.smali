.class Lcom/google/android/apps/books/provider/AnnotationsProvidelet;
.super Lcom/google/android/apps/books/provider/NotifyingProvidelet;
.source "AnnotationsProvidelet.java"


# instance fields
.field private final mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V
    .locals 0
    .parameter "context"
    .parameter "dbHelper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/books/provider/database/BooksDatabase;",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, builderPool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<Lcom/google/android/apps/books/util/SelectionBuilder;>;"
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/util/pool/Pool;)V

    .line 32
    iput-object p2, p0, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 33
    return-void
.end method


# virtual methods
.method protected deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .locals 7
    .parameter "match"
    .parameter "uri"
    .parameter "builder"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "volume_id=?"

    const-string v2, "annotations"

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch p1, :pswitch_data_0

    .line 114
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 103
    :pswitch_0
    const-string v1, "annotations"

    invoke-virtual {p3, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    const-string v2, "volume_id=?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 108
    :goto_0
    return v1

    :pswitch_1
    const-string v1, "annotations"

    invoke-virtual {p3, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    const-string v2, "volume_id=?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    const-string v2, "_id=?"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getAnnotationId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1ae
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 37
    iget-object v4, p0, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch p1, :pswitch_data_0

    .line 46
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 40
    :pswitch_0
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, volumeId:Ljava/lang/String;
    const-string v4, "volume_id"

    invoke-virtual {p3, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v4, "annotations"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 43
    .local v1, id:J
    invoke-static {v3, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->buildAnnotationUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 38
    :pswitch_data_0
    .packed-switch 0x1ae
        :pswitch_0
    .end packed-switch
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected queryWithoutNotify(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SelectionBuilder;)Landroid/database/Cursor;
    .locals 8
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "builder"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v6, "volume_id=?"

    const-string v2, "annotations"

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 56
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 58
    :pswitch_0
    const-string v0, "annotations"

    invoke-virtual {p5, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-virtual {v0, v6, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "annotations"

    invoke-virtual {p5, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-virtual {v0, v6, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "_id=?"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getAnnotationId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1ae
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .locals 7
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "builder"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "volume_id=?"

    const-string v2, "annotations"

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch p1, :pswitch_data_0

    .line 92
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 81
    :pswitch_0
    const-string v1, "annotations"

    invoke-virtual {p4, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    const-string v2, "volume_id=?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    .line 86
    :goto_0
    return v1

    :pswitch_1
    const-string v1, "annotations"

    invoke-virtual {p4, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    const-string v2, "volume_id=?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    const-string v2, "_id=?"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Annotations;->getAnnotationId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1ae
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

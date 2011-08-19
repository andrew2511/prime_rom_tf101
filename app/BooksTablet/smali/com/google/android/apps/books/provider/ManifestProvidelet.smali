.class Lcom/google/android/apps/books/provider/ManifestProvidelet;
.super Lcom/google/android/apps/books/provider/NotifyingProvidelet;
.source "ManifestProvidelet.java"


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
    .line 38
    .local p3, builderPool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<Lcom/google/android/apps/books/util/SelectionBuilder;>;"
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/util/pool/Pool;)V

    .line 39
    iput-object p2, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 40
    return-void
.end method


# virtual methods
.method protected deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .locals 8
    .parameter "match"
    .parameter "uri"
    .parameter "builder"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v7, "pages"

    const-string v6, "chapters"

    const-string v5, "volume_id=?"

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sparse-switch p1, :sswitch_data_0

    .line 222
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 186
    :sswitch_0
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 187
    const-string v1, "sections"

    invoke-virtual {p3, v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 190
    :sswitch_1
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 191
    const-string v1, "section_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p3, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 192
    const-string v1, "sections"

    invoke-virtual {p3, v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 195
    :sswitch_2
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 196
    const-string v1, "chapters"

    invoke-virtual {p3, v0, v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 199
    :sswitch_3
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 200
    const-string v1, "chapter_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getChapterId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p3, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 201
    const-string v1, "chapters"

    invoke-virtual {p3, v0, v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 204
    :sswitch_4
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 205
    const-string v1, "resources"

    invoke-virtual {p3, v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 208
    :sswitch_5
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 209
    const-string v1, "resource_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p3, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 210
    const-string v1, "resources"

    invoke-virtual {p3, v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 213
    :sswitch_6
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 214
    const-string v1, "pages"

    invoke-virtual {p3, v0, v7}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 217
    :sswitch_7
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p3, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 218
    const-string v1, "page_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p3, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 219
    const-string v1, "pages"

    invoke-virtual {p3, v0, v7}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xcd -> :sswitch_2
        0xce -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x190 -> :sswitch_6
        0x191 -> :sswitch_7
    .end sparse-switch
.end method

.method protected insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    const-string v8, "volume_id"

    .line 44
    iget-object v6, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 45
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sparse-switch p1, :sswitch_data_0

    .line 71
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 47
    :sswitch_0
    const-string v6, "sections"

    invoke-virtual {v1, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 48
    const-string v6, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, volumeId:Ljava/lang/String;
    const-string v6, "section_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, sectionId:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 68
    .end local v4           #sectionId:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 53
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_1
    const-string v6, "chapters"

    invoke-virtual {v1, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 54
    const-string v6, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .restart local v5       #volumeId:Ljava/lang/String;
    const-string v6, "chapter_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, chapterId:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 59
    .end local v0           #chapterId:Ljava/lang/String;
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_2
    const-string v6, "resources"

    invoke-virtual {v1, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 60
    const-string v6, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .restart local v5       #volumeId:Ljava/lang/String;
    const-string v6, "resource_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, resId:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 65
    .end local v3           #resId:Ljava/lang/String;
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_3
    const-string v6, "pages"

    invoke-virtual {v1, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 66
    const-string v6, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .restart local v5       #volumeId:Ljava/lang/String;
    const-string v6, "page_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, pageId:Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcd -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
    .end sparse-switch
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
    .line 230
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

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v2, "view_chapters"

    const-string v7, "volume_id=?"

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 81
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sparse-switch p1, :sswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 83
    :sswitch_0
    const-string v0, "view_sections"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 88
    :sswitch_1
    const-string v0, "view_sections"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "section_id=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_2
    const-string v0, "view_chapters"

    invoke-virtual {p5, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 99
    :sswitch_3
    const-string v0, "view_chapters"

    invoke-virtual {p5, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "chapter_id=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getChapterId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_4
    const-string v0, "view_resources"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 110
    :sswitch_5
    const-string v0, "view_resources"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "resource_id=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 116
    :sswitch_6
    const-string v0, "view_pages"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :sswitch_7
    const-string v0, "view_pages"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "page_id=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xcd -> :sswitch_2
        0xce -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x190 -> :sswitch_6
        0x191 -> :sswitch_7
    .end sparse-switch
.end method

.method protected updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .locals 8
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "builder"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v7, "pages"

    const-string v6, "chapters"

    const-string v5, "volume_id=?"

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sparse-switch p1, :sswitch_data_0

    .line 175
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 139
    :sswitch_0
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 140
    const-string v1, "sections"

    invoke-virtual {p4, v0, v1, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 172
    :goto_0
    return v1

    .line 143
    :sswitch_1
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 144
    const-string v1, "section_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p4, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 145
    const-string v1, "sections"

    invoke-virtual {p4, v0, v1, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    .line 148
    :sswitch_2
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 149
    const-string v1, "chapters"

    invoke-virtual {p4, v0, v6, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    .line 152
    :sswitch_3
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 153
    const-string v1, "chapter_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getChapterId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p4, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 154
    const-string v1, "chapters"

    invoke-virtual {p4, v0, v6, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    .line 157
    :sswitch_4
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 158
    const-string v1, "resources"

    invoke-virtual {p4, v0, v1, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    .line 161
    :sswitch_5
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 162
    const-string v1, "resource_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p4, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 163
    const-string v1, "resources"

    invoke-virtual {p4, v0, v1, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    goto/16 :goto_0

    .line 166
    :sswitch_6
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 167
    const-string v1, "pages"

    invoke-virtual {p4, v0, v7, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    goto/16 :goto_0

    .line 170
    :sswitch_7
    const-string v1, "volume_id=?"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p4, v5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 171
    const-string v1, "page_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p4, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 172
    const-string v1, "pages"

    invoke-virtual {p4, v0, v7, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    goto/16 :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xcd -> :sswitch_2
        0xce -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x190 -> :sswitch_6
        0x191 -> :sswitch_7
    .end sparse-switch
.end method

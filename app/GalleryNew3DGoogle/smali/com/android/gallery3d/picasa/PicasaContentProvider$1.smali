.class Lcom/android/gallery3d/picasa/PicasaContentProvider$1;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"

# interfaces
.implements Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncAlbumsForUser(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Lcom/android/gallery3d/picasa/UserEntry;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

.field final synthetic val$albumSchema:Lcom/android/gallery3d/picasa/EntrySchema;

.field final synthetic val$context:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

.field final synthetic val$local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

.field final synthetic val$syncResult:Landroid/content/SyncResult;

.field final synthetic val$user:Lcom/android/gallery3d/picasa/UserEntry;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasa/PicasaContentProvider;Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;Lcom/android/gallery3d/picasa/UserEntry;Lcom/android/gallery3d/picasa/EntrySchema;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

    iput-object p2, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    iput-object p3, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    iput-object p4, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$user:Lcom/android/gallery3d/picasa/UserEntry;

    iput-object p5, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$albumSchema:Lcom/android/gallery3d/picasa/EntrySchema;

    iput-object p6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$context:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    iput-object p8, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$syncResult:Landroid/content/SyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntry(Lcom/android/gallery3d/picasa/Entry;)V
    .locals 12
    .parameter "entry"

    .prologue
    const/4 v11, 0x1

    .line 372
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/picasa/AlbumEntry;

    move-object v1, v0

    .line 373
    .local v1, album:Lcom/android/gallery3d/picasa/AlbumEntry;
    iget-wide v2, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->id:J

    .line 374
    .local v2, albumId:J
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    iput-wide v2, v6, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->id:J

    .line 375
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    invoke-static {v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 376
    .local v4, index:I
    if-ltz v4, :cond_4

    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    aget-object v6, v6, v4

    move-object v5, v6

    .line 377
    .local v5, metadata:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    :goto_0
    if-eqz v5, :cond_0

    iget-wide v6, v5, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->dateEdited:J

    iget-wide v8, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->dateEdited:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 379
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$user:Lcom/android/gallery3d/picasa/UserEntry;

    iget-object v6, v6, Lcom/android/gallery3d/picasa/UserEntry;->account:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    .line 380
    iput-boolean v11, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->photosDirty:Z

    .line 381
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$albumSchema:Lcom/android/gallery3d/picasa/EntrySchema;

    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v7, v1}, Lcom/android/gallery3d/picasa/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/picasa/Entry;)J

    .line 382
    if-nez v5, :cond_1

    .line 383
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$context:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    iget-object v6, v6, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->albumsAdded:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;->val$syncResult:Landroid/content/SyncResult;

    iget-object v6, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numUpdates:J

    .line 391
    :cond_2
    if-eqz v5, :cond_3

    .line 392
    iput-boolean v11, v5, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    .line 394
    :cond_3
    return-void

    .line 376
    .end local v5           #metadata:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    :cond_4
    const/4 v6, 0x0

    move-object v5, v6

    goto :goto_0
.end method

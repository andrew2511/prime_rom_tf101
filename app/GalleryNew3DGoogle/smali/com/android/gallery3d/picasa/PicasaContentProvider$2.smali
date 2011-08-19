.class Lcom/android/gallery3d/picasa/PicasaContentProvider$2;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"

# interfaces
.implements Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncPhotosForAlbum(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Lcom/android/gallery3d/picasa/AlbumEntry;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$displayIndex:[I

.field final synthetic val$key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

.field final synthetic val$local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

.field final synthetic val$photoSchema:Lcom/android/gallery3d/picasa/EntrySchema;

.field final synthetic val$syncResult:Landroid/content/SyncResult;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasa/PicasaContentProvider;[ILcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;Ljava/lang/String;Lcom/android/gallery3d/picasa/EntrySchema;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/SyncResult;)V
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
    .line 471
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

    iput-object p2, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$displayIndex:[I

    iput-object p3, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    iput-object p4, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    iput-object p5, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$account:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$photoSchema:Lcom/android/gallery3d/picasa/EntrySchema;

    iput-object p7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p8, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$syncResult:Landroid/content/SyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntry(Lcom/android/gallery3d/picasa/Entry;)V
    .locals 13
    .parameter "entry"

    .prologue
    const/4 v12, 0x0

    .line 473
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/picasa/PhotoEntry;

    move-object v4, v0

    .line 474
    .local v4, photo:Lcom/android/gallery3d/picasa/PhotoEntry;
    iget-wide v5, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->id:J

    .line 475
    .local v5, photoId:J
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$displayIndex:[I

    aget v3, v7, v12

    .line 476
    .local v3, newDisplayIndex:I
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    iput-wide v5, v7, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->id:J

    .line 477
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    iget-object v8, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    invoke-static {v7, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 478
    .local v1, index:I
    if-ltz v1, :cond_3

    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    aget-object v7, v7, v1

    move-object v2, v7

    .line 479
    .local v2, metadata:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    :goto_0
    if-eqz v2, :cond_0

    iget-wide v7, v2, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->dateEdited:J

    iget-wide v9, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->dateEdited:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    iget v7, v2, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->displayIndex:I

    if-eq v7, v3, :cond_1

    .line 483
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$account:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->syncAccount:Ljava/lang/String;

    .line 484
    iput v3, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->displayIndex:I

    .line 485
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$photoSchema:Lcom/android/gallery3d/picasa/EntrySchema;

    iget-object v8, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v8, v4}, Lcom/android/gallery3d/picasa/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/picasa/Entry;)J

    .line 486
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$syncResult:Landroid/content/SyncResult;

    iget-object v7, v7, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numUpdates:J

    .line 492
    :cond_1
    if-eqz v2, :cond_2

    .line 493
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    .line 497
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;->val$displayIndex:[I

    add-int/lit8 v8, v3, 0x1

    aput v8, v7, v12

    .line 498
    return-void

    .line 478
    .end local v2           #metadata:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    :cond_3
    const/4 v7, 0x0

    move-object v2, v7

    goto :goto_0
.end method

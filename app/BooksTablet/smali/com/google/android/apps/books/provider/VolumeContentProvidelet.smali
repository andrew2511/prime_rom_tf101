.class Lcom/google/android/apps/books/provider/VolumeContentProvidelet;
.super Ljava/lang/Object;
.source "VolumeContentProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# static fields
.field private static final DIR_PAGES:Ljava/lang/String; = "pages"

.field private static final DIR_RES:Ljava/lang/String; = "res"

.field private static final DIR_SECTIONS:Ljava/lang/String; = "sections"

.field private static final DIR_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final FILE_COVER:Ljava/lang/String; = "cover.png"

.field private static final FILE_COVER_THUMBNAIL:Ljava/lang/String; = "cover_thumbnail.png"

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "VolumeContentProvidelet"

.field private static sEnsureLock:Ljava/lang/Object;


# instance fields
.field private final mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->sEnsureLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/ConfigurationProvidelet;)V
    .locals 0
    .parameter "context"
    .parameter "cp"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    .line 59
    return-void
.end method

.method private buildAndEnsureVolumeDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildVolumeDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 285
    .local v0, volumeDir:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->ensureDir(Ljava/io/File;)V

    .line 286
    return-object v0
.end method

.method private buildAndEnsureVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "volumeId"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 308
    .local v0, typeDir:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->ensureDir(Ljava/io/File;)V

    .line 309
    return-object v0
.end method

.method private buildCoverFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, volumeId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildAndEnsureVolumeDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 319
    .local v0, volumeDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "cover.png"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private buildCoverThumbnailFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, volumeId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildAndEnsureVolumeDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 329
    .local v0, volumeDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "cover_thumbnail.png"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private buildPageContentFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, pageId:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildPageContentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method private buildPageContentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "volumeId"
    .parameter "pageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Ljava/io/File;

    const-string v1, "pages"

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildAndEnsureVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildResContentFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, resId:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildResContentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method private buildResContentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "volumeId"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/io/File;

    const-string v1, "res"

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildAndEnsureVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildSectionContentFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, sectionId:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildSectionContentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method private buildSectionContentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "volumeId"
    .parameter "sectionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/io/File;

    const-string v1, "sections"

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildAndEnsureVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildVolumeDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "volumeId"

    .prologue
    .line 278
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "volumes"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v1, volumesDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v0, volumeDir:Ljava/io/File;
    return-object v0
.end method

.method private buildVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "volumeId"
    .parameter "type"

    .prologue
    .line 294
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "volumes"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v2, volumesDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    .local v1, volumeDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v0, typeDir:Ljava/io/File;
    return-object v0
.end method

.method private clearAllContent(Ljava/lang/String;)Z
    .locals 2
    .parameter "volumeId"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearSections(Ljava/lang/String;)Z

    move-result v0

    .line 114
    .local v0, result:Z
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearPages(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearResources(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 120
    return v0
.end method

.method private clearPages(Ljava/lang/String;)Z
    .locals 7
    .parameter "volumeId"

    .prologue
    .line 139
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "content_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content_status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    const-string v2, "pages"

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/ProviderUtils;->recursiveDelete(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private clearResources(Ljava/lang/String;)Z
    .locals 7
    .parameter "volumeId"

    .prologue
    .line 152
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 153
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "content_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content_status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    const-string v2, "res"

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/ProviderUtils;->recursiveDelete(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private clearSections(Ljava/lang/String;)Z
    .locals 7
    .parameter "volumeId"

    .prologue
    .line 126
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "content_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content_status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    const-string v2, "sections"

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildVolumeSubDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/ProviderUtils;->recursiveDelete(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private decorateFileNotFoundException(Ljava/io/FileNotFoundException;)Ljava/io/FileNotFoundException;
    .locals 2
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->usingExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksProvider;->externalStorageIsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    new-instance v0, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, toThrow:Ljava/io/FileNotFoundException;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 212
    :goto_1
    throw v0

    .line 206
    .end local v0           #toThrow:Ljava/io/FileNotFoundException;
    :cond_0
    new-instance v0, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;-><init>(Ljava/lang/String;)V

    .restart local v0       #toThrow:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 210
    .end local v0           #toThrow:Ljava/io/FileNotFoundException;
    :cond_1
    move-object v0, p1

    .restart local v0       #toThrow:Ljava/io/FileNotFoundException;
    goto :goto_1
.end method

.method private ensureDir(Ljava/io/File;)V
    .locals 4
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 267
    :cond_0
    sget-object v0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->sEnsureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->decorateFileNotFoundException(Ljava/io/FileNotFoundException;)Ljava/io/FileNotFoundException;

    move-result-object v1

    throw v1

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized getBaseDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getBaseDir()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getFile(ILandroid/net/Uri;)Ljava/io/File;
    .locals 1
    .parameter "match"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 73
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildCoverFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 76
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildCoverThumbnailFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 79
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildSectionContentFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 82
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildResContentFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_4
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->buildPageContentFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0x97 -> :sswitch_1
        0xca -> :sswitch_2
        0x12e -> :sswitch_3
        0x192 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 167
    .local v2, result:I
    :try_start_0
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, volumeId:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getFile(ILandroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 185
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 187
    .end local v1           #file:Ljava/io/File;
    .local v3, success:Z
    :goto_0
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    move v2, v5

    .line 191
    .end local v3           #success:Z
    .end local v4           #volumeId:Ljava/lang/String;
    :goto_1
    return v2

    .line 170
    .restart local v4       #volumeId:Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearAllContent(Ljava/lang/String;)Z

    move-result v3

    .line 171
    .restart local v3       #success:Z
    goto :goto_0

    .line 173
    .end local v3           #success:Z
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearSections(Ljava/lang/String;)Z

    move-result v3

    .line 174
    .restart local v3       #success:Z
    goto :goto_0

    .line 176
    .end local v3           #success:Z
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearPages(Ljava/lang/String;)Z

    move-result v3

    .line 177
    .restart local v3       #success:Z
    goto :goto_0

    .line 179
    .end local v3           #success:Z
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearResources(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 180
    .restart local v3       #success:Z
    goto :goto_0

    .line 187
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

    .line 188
    .end local v3           #success:Z
    .end local v4           #volumeId:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 189
    .local v0, e:Ljava/io/IOException;
    const-string v5, "VolumeContentProvidelet"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch 0x19a
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getFile(ILandroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 253
    .local v1, file:Ljava/io/File;
    move-object v0, p2

    .line 254
    .local v0, cookie:Landroid/net/Uri;
    invoke-virtual {p0, v1, p3, v0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->openFileOrThrow(Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public openFileOrThrow(Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .parameter "file"
    .parameter "mode"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p2, p3}, Lcom/google/android/apps/books/util/ProviderUtils;->providerModeToPfdMode(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    .line 222
    .local v3, rawMode:I
    const/high16 v5, 0x800

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v1, v5

    .line 223
    .local v1, isCreate:Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 224
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t exist for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->decorateFileNotFoundException(Ljava/io/FileNotFoundException;)Ljava/io/FileNotFoundException;

    move-result-object v5

    throw v5

    .line 222
    .end local v1           #isCreate:Z
    :cond_0
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0

    .line 228
    .restart local v1       #isCreate:Z
    :cond_1
    :try_start_0
    invoke-static {p1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 232
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    return-object v2

    .line 233
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/FileNotFoundException;
    move-object v4, v0

    .line 237
    .local v4, toThrow:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    new-instance v4, Ljava/io/FileNotFoundException;

    .end local v4           #toThrow:Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and cookie "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v4       #toThrow:Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 245
    :goto_1
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->decorateFileNotFoundException(Ljava/io/FileNotFoundException;)Ljava/io/FileNotFoundException;

    move-result-object v5

    throw v5

    .line 242
    :cond_2
    const-string v5, "VolumeContentProvidelet"

    const-string v6, "Looks like Parcel.openFileDescriptor() provides a message now.  Time to remove work-around in ProviderUtils.openFileOrThrow()?"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, result:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getFile(ILandroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryOpenableColumns(Ljava/io/File;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 101
    .local v0, e:Ljava/io/IOException;
    const-string v3, "VolumeContentProvidelet"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

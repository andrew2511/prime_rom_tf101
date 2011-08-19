.class public Lcom/layar/data/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/ImageCache$GetImageTask;
    }
.end annotation


# static fields
.field public static final CATEGORY_DIRECTORY:Ljava/lang/String; = "category/"

.field public static final CORNER_ALL:I = 0xf

.field public static final CORNER_BOTTOM_LEFT:I = 0x4

.field public static final CORNER_BOTTOM_RIGHT:I = 0x8

.field public static final CORNER_TOP_LEFT:I = 0x1

.field public static final CORNER_TOP_RIGHT:I = 0x2

.field public static final GROUPS_DIRECTORY:Ljava/lang/String; = "groups/"

.field public static final HIGH_RES_IMAGE:Ljava/lang/String; = "high"

.field private static final ICON_HIGH_SUFFIX:Ljava/lang/String; = "_high"

.field private static final ICON_LOW_SUFFIX:Ljava/lang/String; = "_low"

.field private static final ICON_NORMAL_SUFFIX:Ljava/lang/String; = "_medium"

.field private static ICON_SIZE_SUFFIX:Ljava/lang/String; = null

.field private static final LAYER_CIW_IMAGE_PATH:Ljava/lang/String; = "/ciw/"

.field public static final LAYER_DIRECTORY:Ljava/lang/String; = "layers/"

.field private static final LAYER_IMAGE_PATH:Ljava/lang/String; = "/images/"

.field public static final LOW_RES_IMAGE:Ljava/lang/String; = "low"

.field private static final MAX_IMAGE_SIZE:I = 0x186a0

.field private static final MAX_MODEL_SIZE:I = 0xf4240

.field private static final MAX_THREADS:I = 0x5

.field public static final MID_RES_IMAGE:Ljava/lang/String; = "medium"

.field public static final POI_DIRECTORY:Ljava/lang/String; = "poi/"

.field private static final TAG:Ljava/lang/String; = null

.field public static final TEXTURES_PATH:Ljava/lang/String; = "textures/"

.field private static instance:Lcom/layar/data/ImageCache;

.field private static final options:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final POI_IMAGE_HEIGHT:I

.field private final POI_IMAGE_ROUNDS:I

.field private final POI_IMAGE_WIDTH:I

.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCatCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mImageTaskExecuted:I

.field private mImageTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/layar/data/ImageCache$GetImageTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/layar/data/ImageCache;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/ImageCache;->TAG:Ljava/lang/String;

    .line 84
    const-string v0, "_medium"

    sput-object v0, Lcom/layar/data/ImageCache;->ICON_SIZE_SUFFIX:Ljava/lang/String;

    .line 92
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    sput-object v0, Lcom/layar/data/ImageCache;->options:Landroid/graphics/BitmapFactory$Options;

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    .line 96
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/layar/data/ImageCache;->mCache:Ljava/util/HashMap;

    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/layar/data/ImageCache;->mCatCache:Ljava/util/HashMap;

    .line 99
    const/4 v3, 0x0

    iput v3, p0, Lcom/layar/data/ImageCache;->mImageTaskExecuted:I

    .line 176
    invoke-static {}, Lcom/layar/data/ImageCache;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 177
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_WIDTH:I

    .line 178
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_HEIGHT:I

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_ROUNDS:I

    .line 182
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 186
    .local v0, cache:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v2, noMediaFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private _removeTask(Landroid/widget/ImageView;)V
    .locals 5
    .parameter "viewImage"

    .prologue
    .line 1206
    iget-object v2, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    iget-object v1, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/data/ImageCache$GetImageTask;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/layar/data/ImageCache$GetImageTask;->cancel(Z)Z

    .line 1209
    iget-object v1, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_0
    iget-object v1, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1212
    iget-object v1, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1206
    :cond_2
    :goto_0
    monitor-exit v2

    .line 1220
    return-void

    .line 1212
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/ImageCache$GetImageTask;

    .line 1213
    .local v0, newTask:Lcom/layar/data/ImageCache$GetImageTask;
    invoke-virtual {v0}, Lcom/layar/data/ImageCache$GetImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 1214
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/data/ImageCache$GetImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1206
    .end local v0           #newTask:Lcom/layar/data/ImageCache$GetImageTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$0(Lcom/layar/data/ImageCache;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/data/ImageCache;)I
    .locals 1
    .parameter

    .prologue
    .line 99
    iget v0, p0, Lcom/layar/data/ImageCache;->mImageTaskExecuted:I

    return v0
.end method

.method static synthetic access$10(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 653
    invoke-static {p0, p1}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/layar/data/ImageCache;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/layar/data/ImageCache;->mCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$12(Lcom/layar/data/ImageCache;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1205
    invoke-direct {p0, p1}, Lcom/layar/data/ImageCache;->_removeTask(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/data/ImageCache;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput p1, p0, Lcom/layar/data/ImageCache;->mImageTaskExecuted:I

    return-void
.end method

.method static synthetic access$3(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 1013
    invoke-static {p0}, Lcom/layar/data/ImageCache;->prepareLayerIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 1058
    invoke-static {p0}, Lcom/layar/data/ImageCache;->prepareGroupIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/data/ImageCache;)I
    .locals 1
    .parameter

    .prologue
    .line 101
    iget v0, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_WIDTH:I

    return v0
.end method

.method static synthetic access$6(Lcom/layar/data/ImageCache;)I
    .locals 1
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_HEIGHT:I

    return v0
.end method

.method static synthetic access$7(Lcom/layar/data/ImageCache;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_ROUNDS:I

    return v0
.end method

.method static synthetic access$8(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 474
    invoke-static {p0}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-static {p0, p1}, Lcom/layar/data/ImageCache;->downloadLayerIconImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static clearCategoryIconCache()V
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 332
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "category"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    .local v1, categoryDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-static {v1}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 337
    :cond_0
    return-void
.end method

.method public static clearLayerImageCache(Ljava/lang/String;)V
    .locals 4
    .parameter "layerName"

    .prologue
    .line 287
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 288
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layers/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    .local v1, layerDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-static {v1}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 293
    :cond_0
    return-void
.end method

.method public static clearLayersCache()V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 278
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "layers"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v1, layerDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-static {v1}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 283
    :cond_0
    return-void
.end method

.method public static clearModelCache()V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 268
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "model"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    .local v1, modelDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    invoke-static {v1}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 273
    :cond_0
    return-void
.end method

.method public static clearPoiImageCache()V
    .locals 3

    .prologue
    .line 257
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 258
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "poi"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    .local v1, poiDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-static {v1}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 263
    :cond_0
    return-void
.end method

.method public static clearWorldCache()V
    .locals 9

    .prologue
    .line 297
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 299
    .local v0, cacheDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "floaticons"

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    .local v4, floaticonsDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 301
    invoke-static {v4}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 303
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v8, "families"

    invoke-direct {v2, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    .local v2, familiesDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 305
    invoke-static {v2}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 307
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v8, "packs"

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    .local v6, packDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 309
    invoke-static {v6}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 311
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string v8, "floaticon"

    invoke-direct {v3, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v3, floaticonDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 313
    invoke-static {v3}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 315
    :cond_3
    new-instance v7, Ljava/io/File;

    const-string v8, "species"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .local v7, speciesDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 317
    invoke-static {v7}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 319
    :cond_4
    new-instance v5, Ljava/io/File;

    const-string v8, "layers"

    invoke-direct {v5, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    .local v5, layersDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 321
    invoke-static {v5}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 323
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string v8, "category"

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v1, categoriesDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 325
    invoke-static {v1}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    .line 327
    :cond_6
    return-void
.end method

.method public static decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "inputStream"

    .prologue
    const/4 v1, 0x0

    .line 725
    if-nez p0, :cond_0

    .line 736
    :goto_0
    return-object v1

    .line 728
    :cond_0
    const/4 v0, 0x0

    .line 730
    .local v0, result:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/layar/data/ImageCache;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 734
    invoke-static {p0}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    :goto_1
    move-object v1, v0

    .line 736
    goto :goto_0

    .line 731
    :catch_0
    move-exception v1

    .line 734
    invoke-static {p0}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 733
    :catchall_0
    move-exception v1

    .line 734
    invoke-static {p0}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 735
    throw v1
.end method

.method private static deleteRecursive(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 366
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 369
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 370
    return-void

    .line 367
    :cond_1
    aget-object v0, v1, v3

    .local v0, child:Ljava/io/File;
    invoke-static {v0}, Lcom/layar/data/ImageCache;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static downloadCategoryIcon(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "baseUrl"
    .parameter "category"
    .parameter "size"
    .parameter "resize"

    .prologue
    .line 556
    invoke-static {p1, p2}, Lcom/layar/data/category/CategoryManager;->getCategoryFilePath(II)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, filename:Ljava/lang/String;
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 558
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "category/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 560
    .local v1, cacheFile:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, p3}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static downloadCiwImage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "layerName"
    .parameter "ciwIndex"
    .parameter "ciwState"
    .parameter "isFallback"

    .prologue
    .line 512
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 513
    .local v0, cacheDir:Ljava/io/File;
    invoke-static {p0, p1, p2, p3}, Lcom/layar/data/ImageCache;->getCiwImagePath(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "layers/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 516
    .local v1, cacheFile:Ljava/io/File;
    invoke-static {v2}, Lcom/layar/data/ImageCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private static downloadImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"
    .parameter "cacheFile"

    .prologue
    .line 654
    const v0, 0x186a0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static downloadImage(Ljava/lang/String;Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter "cacheFile"
    .parameter "maxsize"

    .prologue
    .line 662
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static downloadImage(Ljava/lang/String;Ljava/io/File;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter "cacheFile"
    .parameter "maxSize"
    .parameter "resize"

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static downloadImage(Ljava/lang/String;Ljava/io/File;IZZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "url"
    .parameter "cacheFile"
    .parameter "maxSize"
    .parameter "resize"
    .parameter "prepareIcon"

    .prologue
    const/4 v7, 0x0

    .line 678
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v7

    .line 721
    :goto_0
    return-object v5

    .line 680
    :cond_0
    const/4 v0, 0x0

    .line 682
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 684
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 685
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/client/methods/HttpGet;Z)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 686
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 688
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_2

    .line 712
    if-eqz v1, :cond_1

    .line 714
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    :cond_1
    :goto_1
    move-object v5, v7

    .line 689
    goto :goto_0

    .line 690
    :cond_2
    const/4 v3, 0x0

    .line 693
    .local v3, in:Ljava/io/InputStream;
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 694
    const/4 v5, 0x0

    if-eqz p3, :cond_5

    sget-object v6, Lcom/layar/data/ImageCache;->options:Landroid/graphics/BitmapFactory$Options;

    :goto_2
    invoke-static {v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 695
    if-eqz p4, :cond_3

    .line 696
    invoke-static {v0}, Lcom/layar/data/ImageCache;->prepareLayerIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 697
    :cond_3
    invoke-static {p1, v0}, Lcom/layar/data/ImageCache;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 703
    :try_start_3
    invoke-static {v3}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 712
    :goto_3
    if-eqz v1, :cond_4

    .line 714
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :cond_4
    :goto_4
    move-object v5, v0

    .line 721
    goto :goto_0

    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :cond_5
    move-object v6, v7

    .line 694
    goto :goto_2

    .line 698
    :catch_0
    move-exception v5

    .line 703
    :try_start_5
    invoke-static {v3}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .line 705
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v5

    .line 712
    if-eqz v1, :cond_4

    .line 714
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 715
    :catch_2
    move-exception v5

    goto :goto_4

    .line 700
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v5

    .line 703
    :try_start_7
    invoke-static {v3}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    .line 707
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v5

    .line 712
    if-eqz v1, :cond_4

    .line 714
    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 715
    :catch_5
    move-exception v5

    goto :goto_4

    .line 702
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v5

    .line 703
    :try_start_9
    invoke-static {v3}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 704
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 709
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catch_6
    move-exception v5

    .line 712
    if-eqz v1, :cond_4

    .line 714
    :try_start_a
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_4

    .line 715
    :catch_7
    move-exception v5

    goto :goto_4

    .line 711
    :catchall_1
    move-exception v5

    .line 712
    if-eqz v1, :cond_6

    .line 714
    :try_start_b
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 719
    :cond_6
    :goto_5
    throw v5

    .line 715
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catch_8
    move-exception v5

    goto :goto_1

    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catch_9
    move-exception v6

    goto :goto_5

    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catch_a
    move-exception v5

    goto :goto_4
.end method

.method private static downloadImage(Ljava/lang/String;Ljava/io/File;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter "cacheFile"
    .parameter "resize"

    .prologue
    .line 658
    const v0, 0x186a0

    invoke-static {p0, p1, v0, p2}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static downloadLayerIconImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"
    .parameter "cacheFile"

    .prologue
    const/4 v1, 0x1

    .line 545
    const v0, 0x186a0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static downloadLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "layerName"
    .parameter "imageType"
    .parameter "isFallback"

    .prologue
    .line 521
    invoke-static {p0, p1, p2}, Lcom/layar/data/ImageCache;->getLayerImagePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Lcom/layar/data/ImageCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, url:Ljava/lang/String;
    const-string v5, "icon"

    if-ne p1, v5, :cond_0

    const/4 v5, 0x1

    move v2, v5

    .line 525
    .local v2, iconify:Z
    :goto_0
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 526
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "layers/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 528
    .local v1, cacheFile:Ljava/io/File;
    if-eqz v2, :cond_1

    .line 529
    invoke-static {v4, v1}, Lcom/layar/data/ImageCache;->downloadLayerIconImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 530
    :goto_1
    return-object v5

    .line 523
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v1           #cacheFile:Ljava/io/File;
    .end local v2           #iconify:Z
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 530
    .restart local v0       #cacheDir:Ljava/io/File;
    .restart local v1       #cacheFile:Ljava/io/File;
    .restart local v2       #iconify:Z
    :cond_1
    invoke-static {v4, v1}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method public static downloadModel(Ljava/lang/String;)Lcom/layar/core/Layar3DModel;
    .locals 4
    .parameter "url"

    .prologue
    .line 549
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 550
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "model/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 552
    .local v1, cacheFile:Ljava/io/File;
    invoke-static {p0, v1}, Lcom/layar/data/ImageCache;->downloadModel(Ljava/lang/String;Ljava/io/File;)Lcom/layar/core/Layar3DModel;

    move-result-object v2

    return-object v2
.end method

.method private static downloadModel(Ljava/lang/String;Ljava/io/File;)Lcom/layar/core/Layar3DModel;
    .locals 12
    .parameter "url"
    .parameter "cacheFile"

    .prologue
    const/4 v11, 0x0

    .line 596
    const/4 v5, 0x0

    .line 597
    .local v5, model:Lcom/layar/core/Layar3DModel;
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v9, v11

    .line 650
    :goto_0
    return-object v9

    .line 600
    :cond_0
    const/4 v2, 0x0

    .line 602
    .local v2, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 603
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/client/methods/HttpGet;Z)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 604
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 608
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_3

    .line 609
    const/4 v4, 0x0

    .line 610
    .local v4, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 613
    .local v6, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 615
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 616
    .local v1, dataStream:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v7, v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 617
    .end local v6           #out:Ljava/io/OutputStream;
    .local v7, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v4, v7}, Lcom/layar/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 618
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 620
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 621
    .local v0, data:[B
    array-length v9, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    const v10, 0xf4240

    if-le v9, v10, :cond_2

    .line 630
    :try_start_3
    invoke-static {v4}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 631
    invoke-static {v7}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 641
    if-eqz v2, :cond_1

    .line 643
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_1
    :goto_1
    move-object v9, v11

    .line 623
    goto :goto_0

    .line 625
    :cond_2
    :try_start_5
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v9}, Lcom/layar/core/Layar3DModelLoader;->loadModel(Ljava/io/InputStream;)Lcom/layar/core/Layar3DModel;

    move-result-object v5

    .line 626
    invoke-static {p1, v0}, Lcom/layar/data/ImageCache;->saveData(Ljava/io/File;[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 630
    :try_start_6
    invoke-static {v4}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 631
    invoke-static {v7}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 641
    .end local v0           #data:[B
    .end local v1           #dataStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v7           #out:Ljava/io/OutputStream;
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 643
    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :cond_4
    :goto_3
    move-object v9, v5

    .line 650
    goto :goto_0

    .line 627
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v9

    .line 630
    :goto_4
    :try_start_8
    invoke-static {v4}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 631
    invoke-static {v6}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 634
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v9

    .line 641
    if-eqz v2, :cond_4

    .line 643
    :try_start_9
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 644
    :catch_2
    move-exception v9

    goto :goto_3

    .line 629
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v9

    .line 630
    :goto_5
    :try_start_a
    invoke-static {v4}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 631
    invoke-static {v6}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 632
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 636
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v9

    .line 641
    if-eqz v2, :cond_4

    .line 643
    :try_start_b
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 644
    :catch_4
    move-exception v9

    goto :goto_3

    .line 638
    :catch_5
    move-exception v9

    .line 641
    if-eqz v2, :cond_4

    .line 643
    :try_start_c
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 644
    :catch_6
    move-exception v9

    goto :goto_3

    .line 640
    :catchall_1
    move-exception v9

    .line 641
    if-eqz v2, :cond_5

    .line 643
    :try_start_d
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 648
    :cond_5
    :goto_6
    throw v9

    .line 644
    .restart local v0       #data:[B
    .restart local v1       #dataStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v7       #out:Ljava/io/OutputStream;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :catch_7
    move-exception v9

    goto :goto_1

    .end local v0           #data:[B
    .end local v1           #dataStream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v7           #out:Ljava/io/OutputStream;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_8
    move-exception v10

    goto :goto_6

    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :catch_9
    move-exception v9

    goto :goto_3

    .line 629
    .restart local v1       #dataStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v7       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    goto :goto_5

    .line 627
    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v7       #out:Ljava/io/OutputStream;
    :catch_a
    move-exception v9

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    goto :goto_4
.end method

.method public static downloadPaymentIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "baseUrl"
    .parameter "name"

    .prologue
    .line 572
    sget v5, Lcom/layar/App;->DENSITY:F

    const/high16 v6, 0x3fc0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 573
    const/16 v4, 0x22c

    .line 579
    .local v4, width:I
    :goto_0
    invoke-static {v4}, Lcom/layar/data/user/PaymentProvider;->getPaymentIconFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, filename:Ljava/lang/String;
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 581
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "payment/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 582
    .local v1, cacheFile:Ljava/io/File;
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Android/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 584
    .local v3, url:Ljava/lang/String;
    :goto_1
    sget-boolean v5, Lcom/layar/App;->IS_HIGH_DENSITY:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_2
    invoke-static {v3, v1, v5}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 574
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v1           #cacheFile:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #width:I
    :cond_0
    sget v5, Lcom/layar/App;->DENSITY:F

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 575
    const/16 v4, 0x1a1

    .restart local v4       #width:I
    goto :goto_0

    .line 577
    .end local v4           #width:I
    :cond_1
    const/16 v4, 0x116

    .restart local v4       #width:I
    goto :goto_0

    .line 583
    .restart local v0       #cacheDir:Ljava/io/File;
    .restart local v1       #cacheFile:Ljava/io/File;
    .restart local v2       #filename:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/Android/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    .line 584
    .restart local v3       #url:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public static downloadPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 534
    const v0, 0x186a0

    invoke-static {p0, v0}, Lcom/layar/data/ImageCache;->downloadPoiImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static downloadPoiImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "url"
    .parameter "maxSize"

    .prologue
    .line 538
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 539
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "poi/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 541
    .local v1, cacheFile:Ljava/io/File;
    invoke-static {p0, v1, p1}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "layar/cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v0, cache:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 207
    .end local v0           #cache:Ljava/io/File;
    :goto_0
    return-object v1

    .line 203
    .restart local v0       #cache:Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 207
    .end local v0           #cache:Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/layar/data/ImageCache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCiwImagePath(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "layerName"
    .parameter "ciwIndex"
    .parameter "ciwState"
    .parameter "isFallback"

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/ciw/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/layar/data/ImageCache;->ICON_SIZE_SUFFIX:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v0

    return-object v0
.end method

.method public static getIconsSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/layar/data/ImageCache;->ICON_SIZE_SUFFIX:Ljava/lang/String;

    const-string v1, "_low"

    if-ne v0, v1, :cond_0

    .line 138
    const-string v0, "low"

    .line 142
    :goto_0
    return-object v0

    .line 139
    :cond_0
    sget-object v0, Lcom/layar/data/ImageCache;->ICON_SIZE_SUFFIX:Ljava/lang/String;

    const-string v1, "_medium"

    if-ne v0, v1, :cond_1

    .line 140
    const-string v0, "medium"

    goto :goto_0

    .line 142
    :cond_1
    const-string v0, "high"

    goto :goto_0
.end method

.method private static getImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://dev.layar.com/images/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/layar/data/ImageCache;
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/layar/data/ImageCache;->instance:Lcom/layar/data/ImageCache;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/layar/data/ImageCache;

    invoke-direct {v0}, Lcom/layar/data/ImageCache;-><init>()V

    sput-object v0, Lcom/layar/data/ImageCache;->instance:Lcom/layar/data/ImageCache;

    .line 109
    :cond_0
    invoke-static {}, Lcom/layar/util/MyConfig;->getSdkVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 111
    sget-object v0, Lcom/layar/data/ImageCache;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v1, 0xa0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 113
    :try_start_0
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string v1, "inPurgeable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/layar/data/ImageCache;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_1
    :goto_0
    sget-object v0, Lcom/layar/data/ImageCache;->instance:Lcom/layar/data/ImageCache;

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getLayerImagePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "layerName"
    .parameter "imageType"
    .parameter "isFallback"

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/layar/data/ImageCache;->ICON_SIZE_SUFFIX:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "corner"
    .parameter "width"
    .parameter "height"
    .parameter "roundPx"

    .prologue
    .line 932
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/layar/data/ImageCache;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "corner"
    .parameter "width"
    .parameter "height"
    .parameter "roundPx"
    .parameter "color"

    .prologue
    .line 937
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 938
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 940
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 942
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 943
    invoke-virtual {v3, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 944
    new-instance p5, Landroid/graphics/RectF;

    .end local p5
    const/4 v1, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-direct {p5, v1, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 945
    .local p5, rect:Landroid/graphics/RectF;
    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    .line 946
    int-to-float p1, p4

    int-to-float p4, p4

    invoke-virtual {v0, p5, p1, p4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 981
    .end local p1
    .end local p4
    :goto_0
    if-nez p0, :cond_5

    move-object p0, v2

    .line 1010
    .end local v2           #output:Landroid/graphics/Bitmap;
    .end local p2
    .end local p3
    .end local p5           #rect:Landroid/graphics/RectF;
    .local p0, output:Landroid/graphics/Bitmap;
    :goto_1
    return-object p0

    .line 948
    .restart local v2       #output:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5       #rect:Landroid/graphics/RectF;
    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 949
    const/4 v1, 0x0

    const/4 v4, 0x0

    div-int/lit8 v5, p2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, p3, 0x2

    int-to-float v6, v6

    invoke-virtual {p5, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 950
    int-to-float v1, p4

    int-to-float v4, p4

    invoke-virtual {v0, p5, v1, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 956
    :goto_2
    and-int/lit8 v1, p1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 957
    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    const/4 v4, 0x0

    int-to-float v5, p2

    div-int/lit8 v6, p3, 0x2

    int-to-float v6, v6

    invoke-virtual {p5, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 958
    int-to-float v1, p4

    int-to-float v4, p4

    invoke-virtual {v0, p5, v1, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 964
    :goto_3
    and-int/lit8 v1, p1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    .line 965
    const/4 v1, 0x0

    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p2, 0x2

    int-to-float v5, v5

    int-to-float v6, p3

    invoke-virtual {p5, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 966
    int-to-float v1, p4

    int-to-float v4, p4

    invoke-virtual {v0, p5, v1, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 972
    :goto_4
    and-int/lit8 p1, p1, 0x8

    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    .line 973
    .end local p1
    div-int/lit8 p1, p2, 0x2

    int-to-float p1, p1

    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {p5, p1, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 974
    int-to-float p1, p4

    int-to-float p4, p4

    invoke-virtual {v0, p5, p1, p4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 952
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    div-int/lit8 v5, p2, 0x2

    add-int/2addr v5, p4

    int-to-float v5, v5

    div-int/lit8 v6, p3, 0x2

    add-int/2addr v6, p4

    int-to-float v6, v6

    invoke-virtual {p5, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 953
    invoke-virtual {v0, p5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 960
    :cond_2
    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v1, p4

    int-to-float v1, v1

    const/4 v4, 0x0

    int-to-float v5, p2

    div-int/lit8 v6, p3, 0x2

    add-int/2addr v6, p4

    int-to-float v6, v6

    invoke-virtual {p5, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 961
    invoke-virtual {v0, p5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 968
    :cond_3
    const/4 v1, 0x0

    div-int/lit8 v4, p3, 0x2

    sub-int/2addr v4, p4

    int-to-float v4, v4

    div-int/lit8 v5, p2, 0x2

    add-int/2addr v5, p4

    int-to-float v5, v5

    int-to-float v6, p3

    invoke-virtual {p5, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 969
    invoke-virtual {v0, p5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 976
    .end local p1
    :cond_4
    div-int/lit8 p1, p2, 0x2

    sub-int/2addr p1, p4

    int-to-float p1, p1

    div-int/lit8 v1, p3, 0x2

    sub-int p4, v1, p4

    int-to-float p4, p4

    int-to-float v1, p2

    int-to-float v4, p3

    invoke-virtual {p5, p1, p4, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 977
    .end local p4
    invoke-virtual {v0, p5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 984
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    .line 985
    .local p5, imgWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 986
    .local p1, imgHeight:I
    new-instance v4, Landroid/graphics/Rect;

    const/4 p4, 0x0

    const/4 v1, 0x0

    invoke-direct {v4, p4, v1, p5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 987
    .local v4, srcRect:Landroid/graphics/Rect;
    new-instance p4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct {p4, v1, v5, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 989
    .local p4, dstRect:Landroid/graphics/Rect;
    if-ge p5, p2, :cond_7

    if-ge p1, p3, :cond_7

    .line 990
    div-int/lit8 p5, p5, 0x2

    .end local p5           #imgWidth:I
    int-to-float p5, p5

    .line 991
    .local p5, offsetX:F
    div-int/lit8 p1, p1, 0x2

    .end local p1           #imgHeight:I
    int-to-float v1, p1

    .line 992
    .local v1, offsetY:F
    div-int/lit8 p1, p2, 0x2

    int-to-float p1, p1

    .line 993
    .local p1, centerX:F
    div-int/lit8 p2, p3, 0x2

    .end local p2
    int-to-float p2, p2

    .line 994
    .local p2, centerY:F
    sub-float p3, p1, p5

    float-to-int p3, p3

    iput p3, p4, Landroid/graphics/Rect;->left:I

    .line 995
    .end local p3
    add-float/2addr p1, p5

    float-to-int p1, p1

    iput p1, p4, Landroid/graphics/Rect;->right:I

    .line 996
    .end local p1           #centerX:F
    sub-float p1, p2, v1

    float-to-int p1, p1

    iput p1, p4, Landroid/graphics/Rect;->top:I

    .line 997
    add-float p1, p2, v1

    float-to-int p1, p1

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 1008
    .end local v1           #offsetY:F
    .end local p2           #centerY:F
    .end local p5           #offsetX:F
    :cond_6
    :goto_5
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1009
    invoke-virtual {v0, p0, v4, p4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, v2

    .line 1010
    .end local v2           #output:Landroid/graphics/Bitmap;
    .local p0, output:Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 998
    .restart local v2       #output:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p1, imgHeight:I
    .local p2, width:I
    .restart local p3
    .local p5, imgWidth:I
    :cond_7
    if-gt p5, p1, :cond_8

    .line 999
    mul-int/2addr p3, p5

    div-int p1, p3, p1

    .end local p1           #imgHeight:I
    .end local p3
    sub-int p1, p2, p1

    int-to-float p1, p1

    .line 1000
    .local p1, offset:F
    const/high16 p3, 0x3f80

    const/high16 p5, 0x4000

    div-float p5, p1, p5

    add-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p4, Landroid/graphics/Rect;->left:I

    .line 1001
    .end local p5           #imgWidth:I
    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    const/high16 p3, 0x4000

    div-float/2addr p1, p3

    sub-float p1, p2, p1

    float-to-int p1, p1

    iput p1, p4, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 1002
    .local p1, imgHeight:I
    .restart local p3
    .restart local p5       #imgWidth:I
    :cond_8
    if-le p5, p1, :cond_6

    .line 1003
    mul-int/2addr p1, p2

    div-int/2addr p1, p5

    .end local p1           #imgHeight:I
    sub-int p1, p3, p1

    int-to-float p1, p1

    .line 1004
    .local p1, offset:F
    const/high16 p2, 0x3f80

    const/high16 p5, 0x4000

    div-float p5, p1, p5

    add-float/2addr p2, p5

    float-to-int p2, p2

    iput p2, p4, Landroid/graphics/Rect;->top:I

    .line 1005
    .end local p2           #width:I
    .end local p5           #imgWidth:I
    add-int/lit8 p2, p3, 0x1

    int-to-float p2, p2

    const/high16 p3, 0x4000

    div-float/2addr p1, p3

    sub-float p1, p2, p1

    float-to-int p1, p1

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_5
.end method

.method public static getShareDialogImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 146
    if-nez p0, :cond_0

    move-object v1, v4

    .line 153
    :goto_0
    return-object v1

    .line 149
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layers/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 153
    goto :goto_0
.end method

.method public static getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "textures/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layar/data/ImageCache;->getAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getUrlHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 157
    invoke-static {p0}, Lcom/layar/util/HashHelper;->getDevlKeyHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVariantImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const/4 v1, 0x0

    .line 507
    :goto_0
    return-object v1

    .line 504
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "variants/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 505
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    invoke-static {v0}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 507
    :cond_1
    const v1, 0x186a0

    invoke-static {p0, v0, v1, v4, v4}, Lcom/layar/data/ImageCache;->downloadImage(Ljava/lang/String;Ljava/io/File;IZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static prepareGroupIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "icon"

    .prologue
    .line 1059
    invoke-static {}, Lcom/layar/data/ImageCache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1061
    .local v5, resources:Landroid/content/res/Resources;
    const v0, 0x7f020091

    .line 1060
    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1062
    .local v0, maskBitmap:Landroid/graphics/Bitmap;
    sget v2, Lcom/layar/App;->DENSITY:F

    .line 1065
    .local v2, density:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1064
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1066
    .local v3, fullIcon:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1068
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1070
    .local v4, p:Landroid/graphics/Paint;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1071
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1072
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .end local v0           #maskBitmap:Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1073
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1075
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    const/high16 v0, 0x4314

    .line 1077
    .local v0, WIDTH:F
    const/high16 v0, 0x4290

    .line 1079
    .local v0, HEIGHT:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1080
    .local v7, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1082
    .local v0, height:I
    new-instance v6, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1083
    .local v6, src:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #height:I
    const/high16 v7, 0x4000

    mul-float/2addr v7, v2

    const/high16 v8, 0x4000

    mul-float/2addr v8, v2

    const/high16 v9, 0x4314

    mul-float/2addr v9, v2

    const/high16 v10, 0x4290

    mul-float/2addr v2, v10

    invoke-direct {v0, v7, v8, v9, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1084
    .end local v2           #density:F
    .end local v7           #width:I
    .local v0, dst:Landroid/graphics/RectF;
    invoke-virtual {v1, p0, v6, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1085
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1089
    .end local v0           #dst:Landroid/graphics/RectF;
    .end local v6           #src:Landroid/graphics/Rect;
    :cond_0
    const p0, 0x7f020090

    .line 1088
    invoke-static {v5, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .end local p0
    move-result-object p0

    .line 1090
    .local p0, overlayBitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v4, Landroid/graphics/Paint;

    .end local v4           #p:Landroid/graphics/Paint;
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1091
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1092
    return-object v3
.end method

.method private static prepareLayerIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "icon"

    .prologue
    .line 1014
    invoke-static {}, Lcom/layar/data/ImageCache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1016
    .local v6, resources:Landroid/content/res/Resources;
    const v0, 0x7f0200a9

    .line 1015
    invoke-static {v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1017
    .local v2, maskBitmap:Landroid/graphics/Bitmap;
    sget v1, Lcom/layar/App;->DENSITY:F

    .line 1020
    .local v1, density:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1019
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1021
    .local v3, fullIcon:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1023
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1025
    .local v5, p:Landroid/graphics/Paint;
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v4, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1026
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1027
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .end local v2           #maskBitmap:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1028
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1030
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1031
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1032
    .local v8, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1034
    .local v4, height:I
    new-instance v7, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1035
    .local v7, src:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v9, 0x3f80

    mul-float/2addr v9, v1

    const/high16 v10, 0x3f80

    mul-float/2addr v10, v1

    const/high16 v11, 0x4282

    mul-float/2addr v11, v1

    const/high16 v12, 0x4282

    mul-float/2addr v12, v1

    invoke-direct {v2, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1037
    .local v2, dst:Landroid/graphics/RectF;
    if-ge v8, v4, :cond_2

    .line 1038
    const/high16 v9, 0x4280

    const/high16 v10, 0x4280

    int-to-float v8, v8

    mul-float/2addr v8, v10

    int-to-float v4, v4

    div-float v4, v8, v4

    sub-float v4, v9, v4

    .line 1039
    .local v4, offset:F
    const/high16 v8, 0x3f80

    const/high16 v9, 0x4000

    div-float v9, v4, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v1

    iput v8, v2, Landroid/graphics/RectF;->left:F

    .line 1040
    .end local v8           #width:I
    const/high16 v8, 0x4282

    const/high16 v9, 0x4000

    div-float/2addr v4, v9

    sub-float v4, v8, v4

    mul-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 1047
    .end local v1           #density:F
    .end local v4           #offset:F
    :cond_0
    :goto_0
    invoke-virtual {v0, p0, v7, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1048
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1052
    .end local v2           #dst:Landroid/graphics/RectF;
    .end local v7           #src:Landroid/graphics/Rect;
    :cond_1
    const p0, 0x7f0200a8

    .line 1051
    invoke-static {v6, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .end local p0
    move-result-object p0

    .line 1053
    .local p0, overlayBitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1054
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1055
    return-object v3

    .line 1041
    .restart local v1       #density:F
    .restart local v2       #dst:Landroid/graphics/RectF;
    .local v4, height:I
    .restart local v7       #src:Landroid/graphics/Rect;
    .restart local v8       #width:I
    .local p0, icon:Landroid/graphics/Bitmap;
    :cond_2
    if-le v8, v4, :cond_0

    .line 1042
    const/high16 v9, 0x4280

    const/high16 v10, 0x4280

    int-to-float v4, v4

    mul-float/2addr v4, v10

    int-to-float v8, v8

    div-float/2addr v4, v8

    sub-float v4, v9, v4

    .line 1043
    .local v4, offset:F
    const/high16 v8, 0x3f80

    const/high16 v9, 0x4000

    div-float v9, v4, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v1

    iput v8, v2, Landroid/graphics/RectF;->top:F

    .line 1044
    .end local v8           #width:I
    const/high16 v8, 0x4282

    const/high16 v9, 0x4000

    div-float/2addr v4, v9

    sub-float v4, v8, v4

    mul-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private readCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "cacheId"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/layar/data/ImageCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/layar/data/ImageCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    .line 471
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readCategoryIcon(IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "category"
    .parameter "size"
    .parameter "resize"

    .prologue
    .line 425
    invoke-static {p0, p1}, Lcom/layar/data/category/CategoryManager;->getCategoryFilePath(II)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, filename:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "category/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .local v0, cacheFile:Ljava/io/File;
    invoke-static {v0, p2}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static readCiwImage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "layerName"
    .parameter "ciwIndex"
    .parameter "ciwState"
    .parameter "isFallback"

    .prologue
    .line 388
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 389
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layers/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcom/layar/data/ImageCache;->getCiwImagePath(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .local v1, cacheFile:Ljava/io/File;
    invoke-static {v1}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static readImage(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "cacheFile"

    .prologue
    .line 475
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 480
    .local v0, result:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static readImage(Ljava/io/File;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "cacheFile"
    .parameter "resize"

    .prologue
    const/4 v4, 0x0

    .line 484
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    .end local v0           #stream:Ljava/io/InputStream;
    .local v1, stream:Ljava/io/InputStream;
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    sget-object v3, Lcom/layar/data/ImageCache;->options:Landroid/graphics/BitmapFactory$Options;

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 494
    invoke-static {v1}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 497
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_1
    return-object v2

    .restart local v1       #stream:Ljava/io/InputStream;
    :cond_0
    move-object v3, v4

    .line 488
    goto :goto_0

    .line 489
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 494
    :goto_2
    invoke-static {v0}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .end local v0           #stream:Ljava/io/InputStream;
    :cond_1
    :goto_3
    move-object v2, v4

    .line 497
    goto :goto_1

    .line 491
    .restart local v0       #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 494
    :goto_4
    invoke-static {v0}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_3

    .line 493
    :catchall_0
    move-exception v2

    .line 494
    :goto_5
    invoke-static {v0}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 495
    throw v2

    .line 493
    .end local v0           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    goto :goto_5

    .line 491
    .end local v0           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    goto :goto_4

    .line 489
    .end local v0           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "layerName"
    .parameter "imageType"
    .parameter "isFallback"

    .prologue
    .line 395
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 396
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layers/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-static {p0, p1, p2}, Lcom/layar/data/ImageCache;->getLayerImagePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    .local v1, cacheFile:Ljava/io/File;
    invoke-static {v1}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static readModel(Ljava/io/File;)Lcom/layar/core/Layar3DModel;
    .locals 3
    .parameter "cacheFile"

    .prologue
    .line 454
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v0           #stream:Ljava/io/InputStream;
    .local v1, stream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/layar/core/Layar3DModelLoader;->loadModel(Ljava/io/InputStream;)Lcom/layar/core/Layar3DModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 462
    invoke-static {v1}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 465
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 459
    .restart local v0       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 462
    :goto_1
    invoke-static {v0}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 465
    .end local v0           #stream:Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 461
    .restart local v0       #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 462
    :goto_2
    invoke-static {v0}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 463
    throw v2

    .line 461
    .end local v0           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    goto :goto_2

    .line 459
    .end local v0           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static readModel(Ljava/lang/String;)Lcom/layar/core/Layar3DModel;
    .locals 4
    .parameter "url"

    .prologue
    .line 414
    if-nez p0, :cond_0

    .line 415
    const/4 v2, 0x0

    .line 421
    :goto_0
    return-object v2

    .line 418
    :cond_0
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 419
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "model/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 421
    .local v1, cacheFile:Ljava/io/File;
    invoke-static {v1}, Lcom/layar/data/ImageCache;->readModel(Ljava/io/File;)Lcom/layar/core/Layar3DModel;

    move-result-object v2

    goto :goto_0
.end method

.method public static readPaymentIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "name"

    .prologue
    .line 439
    sget v4, Lcom/layar/App;->DENSITY:F

    const/high16 v5, 0x3fc0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 440
    const/16 v3, 0x22c

    .line 446
    .local v3, width:I
    :goto_0
    invoke-static {v3}, Lcom/layar/data/user/PaymentProvider;->getPaymentIconFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, filename:Ljava/lang/String;
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 448
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "payment/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 450
    .local v1, cacheFile:Ljava/io/File;
    sget-boolean v4, Lcom/layar/App;->IS_HIGH_DENSITY:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-static {v1, v4}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 441
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v1           #cacheFile:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #width:I
    :cond_0
    sget v4, Lcom/layar/App;->DENSITY:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 442
    const/16 v3, 0x1a1

    .restart local v3       #width:I
    goto :goto_0

    .line 444
    .end local v3           #width:I
    :cond_1
    const/16 v3, 0x116

    .restart local v3       #width:I
    goto :goto_0

    .line 450
    .restart local v0       #cacheDir:Ljava/io/File;
    .restart local v1       #cacheFile:Ljava/io/File;
    .restart local v2       #filename:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static readPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "url"

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    const/4 v2, 0x0

    .line 410
    :goto_0
    return-object v2

    .line 407
    :cond_0
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 408
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "poi/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    .local v1, cacheFile:Ljava/io/File;
    invoke-static {v1}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private static saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "cacheFile"
    .parameter "image"

    .prologue
    .line 774
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 775
    .local v0, parentDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 776
    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 777
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 793
    :cond_1
    :goto_0
    return-void

    .line 779
    :cond_2
    if-eqz p1, :cond_1

    .line 782
    const/4 v1, 0x0

    .line 784
    .local v1, stream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 786
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v1           #stream:Ljava/io/OutputStream;
    .local v2, stream:Ljava/io/OutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 791
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/OutputStream;
    goto :goto_0

    .line 788
    :catch_0
    move-exception v3

    .line 791
    :goto_1
    invoke-static {v1}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v3

    .line 791
    :goto_2
    invoke-static {v1}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 792
    throw v3

    .line 790
    .end local v1           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/OutputStream;
    goto :goto_2

    .line 788
    .end local v1           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private static saveData(Ljava/io/File;[B)V
    .locals 4
    .parameter "cacheFile"
    .parameter "data"

    .prologue
    .line 746
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 747
    .local v0, parentDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 748
    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 749
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 765
    :cond_1
    :goto_0
    return-void

    .line 751
    :cond_2
    if-eqz p1, :cond_1

    .line 754
    const/4 v1, 0x0

    .line 756
    .local v1, stream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 757
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v1           #stream:Ljava/io/OutputStream;
    .local v2, stream:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 759
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 763
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/OutputStream;
    goto :goto_0

    .line 760
    :catch_0
    move-exception v3

    .line 763
    :goto_1
    invoke-static {v1}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 762
    :catchall_0
    move-exception v3

    .line 763
    :goto_2
    invoke-static {v1}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 764
    throw v3

    .line 762
    .end local v1           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/OutputStream;
    goto :goto_2

    .line 760
    .end local v1           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static setIconSize(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 127
    const/high16 v0, 0x3fc0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 128
    const-string v0, "_low"

    sput-object v0, Lcom/layar/data/ImageCache;->ICON_SIZE_SUFFIX:Ljava/lang/String;

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    const/high16 v0, 0x4000

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 130
    const-string v0, "_medium"

    sput-object v0, Lcom/layar/data/ImageCache;->ICON_SIZE_SUFFIX:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_1
    const-string v0, "_high"

    sput-object v0, Lcom/layar/data/ImageCache;->ICON_SIZE_SUFFIX:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setLayerModified(Ljava/lang/String;J)Z
    .locals 8
    .parameter "layerName"
    .parameter "modified"

    .prologue
    .line 219
    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 220
    .local v0, cacheDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "layers/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/modified"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v2, modifiedFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 223
    .local v1, layerDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    const/4 v4, 0x0

    .line 226
    .local v4, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v4           #stream:Ljava/io/InputStream;
    .local v5, stream:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 229
    .local v3, scanner:Ljava/util/Scanner;
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLong()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    .line 236
    invoke-static {v5}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 230
    const/4 v6, 0x0

    .line 252
    .end local v3           #scanner:Ljava/util/Scanner;
    .end local v5           #stream:Ljava/io/InputStream;
    :goto_0
    return v6

    .line 231
    .restart local v3       #scanner:Ljava/util/Scanner;
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/layar/data/ImageCache;->clearLayerImageCache(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 236
    :cond_1
    invoke-static {v5}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 240
    .end local v3           #scanner:Ljava/util/Scanner;
    .end local v5           #stream:Ljava/io/InputStream;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 242
    :cond_3
    const/4 v4, 0x0

    .line 244
    .local v4, stream:Ljava/io/OutputStream;
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 245
    .end local v4           #stream:Ljava/io/OutputStream;
    .local v5, stream:Ljava/io/OutputStream;
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 249
    invoke-static {v5}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 252
    .end local v5           #stream:Ljava/io/OutputStream;
    .restart local v4       #stream:Ljava/io/OutputStream;
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 233
    .local v4, stream:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 236
    :goto_3
    invoke-static {v4}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v6

    .line 236
    :goto_4
    invoke-static {v4}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 237
    throw v6

    .line 246
    .local v4, stream:Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    .line 249
    :goto_5
    invoke-static {v4}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 248
    :catchall_1
    move-exception v6

    .line 249
    :goto_6
    invoke-static {v4}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 250
    throw v6

    .line 248
    .end local v4           #stream:Ljava/io/OutputStream;
    .restart local v5       #stream:Ljava/io/OutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/OutputStream;
    .restart local v4       #stream:Ljava/io/OutputStream;
    goto :goto_6

    .line 246
    .end local v4           #stream:Ljava/io/OutputStream;
    .restart local v5       #stream:Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/OutputStream;
    .restart local v4       #stream:Ljava/io/OutputStream;
    goto :goto_5

    .line 235
    .end local v4           #stream:Ljava/io/OutputStream;
    .local v5, stream:Ljava/io/InputStream;
    :catchall_3
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/InputStream;
    .local v4, stream:Ljava/io/InputStream;
    goto :goto_4

    .line 233
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v5       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    goto :goto_3
.end method


# virtual methods
.method public clearCategoryMemoryCache()V
    .locals 4

    .prologue
    .line 354
    iget-object v2, p0, Lcom/layar/data/ImageCache;->mCatCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    iget-object v2, p0, Lcom/layar/data/ImageCache;->mCatCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 363
    return-void

    .line 354
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 355
    .local v0, image:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    move-object v1, v0

    .line 358
    .local v1, inhereted:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 359
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public clearMemoryCache()V
    .locals 5

    .prologue
    .line 341
    iget-object v3, p0, Lcom/layar/data/ImageCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    iget-object v3, p0, Lcom/layar/data/ImageCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 350
    return-void

    .line 341
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 342
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/layar/data/ImageCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 343
    .local v1, imageRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 344
    .local v0, image:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 345
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 347
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0
.end method

.method public loadAllFromFileCache(I[I)V
    .locals 5
    .parameter "size"
    .parameter "ids"

    .prologue
    .line 819
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_0

    .line 826
    return-void

    .line 820
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "category/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, p2, v2

    invoke-static {v4, p1}, Lcom/layar/data/category/CategoryManager;->getCategoryFilePath(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, cacheId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/layar/data/ImageCache;->readCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 822
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 823
    iget-object v3, p0, Lcom/layar/data/ImageCache;->mCatCache:Ljava/util/HashMap;

    aget v4, p2, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setActionImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "imageView"
    .parameter "progressBar"

    .prologue
    const/4 v4, 0x0

    .line 864
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 874
    :goto_0
    return-object v0

    .line 867
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "layers/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 868
    .local v3, cacheFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 869
    .local v8, path:Ljava/lang/String;
    invoke-static {v3}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 870
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 871
    const/4 v1, 0x7

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/layar/data/ImageCache;->setImageBitmap(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 872
    :cond_1
    if-eqz v7, :cond_2

    .line 873
    invoke-virtual {p0, v7, p2, p3}, Lcom/layar/data/ImageCache;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    :cond_2
    move-object v0, v8

    .line 874
    goto :goto_0
.end method

.method public setCategoryImageBitmap(IILandroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 8
    .parameter "category"
    .parameter "size"
    .parameter "imageView"
    .parameter "progressBar"

    .prologue
    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "category/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/layar/data/category/CategoryManager;->getCategoryFilePath(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, cacheId:Ljava/lang/String;
    iget-object v0, p0, Lcom/layar/data/ImageCache;->mCatCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 799
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 800
    invoke-direct {p0, v4}, Lcom/layar/data/ImageCache;->readCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 802
    :cond_0
    if-nez v7, :cond_1

    .line 803
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/layar/data/ImageCache;->readCategoryIcon(IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 806
    :cond_1
    if-nez v7, :cond_2

    .line 807
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 808
    .local v3, cacheFile:Ljava/io/File;
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/layar/data/category/CategoryManager;->iconURLFor(II)Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, url:Ljava/lang/String;
    const/4 v1, 0x4

    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/layar/data/ImageCache;->setImageBitmap(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 816
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #cacheFile:Ljava/io/File;
    :goto_0
    return-void

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/layar/data/ImageCache;->mCatCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/layar/data/ImageCache;->mCatCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_3
    invoke-virtual {p0, v7, p3, p4}, Lcom/layar/data/ImageCache;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_0
.end method

.method public setGroupImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 8
    .parameter "url"
    .parameter "imageView"
    .parameter "progressBar"

    .prologue
    .line 878
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 881
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "groups/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 882
    .local v3, cacheFile:Ljava/io/File;
    invoke-static {v3}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 883
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 884
    const/16 v1, 0x8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/layar/data/ImageCache;->setImageBitmap(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_0

    .line 886
    :cond_1
    invoke-static {v7}, Lcom/layar/data/ImageCache;->prepareGroupIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/layar/data/ImageCache;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_0
.end method

.method public setImageBitmap(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 13
    .parameter "action"
    .parameter "url"
    .parameter "cache"
    .parameter "cacheId"
    .parameter "imageView"
    .parameter "progressBar"

    .prologue
    .line 902
    :try_start_0
    iget-object v12, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :try_start_1
    iget-object v4, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/layar/data/ImageCache$GetImageTask;

    .line 904
    .local v11, oldTask:Lcom/layar/data/ImageCache$GetImageTask;
    if-eqz v11, :cond_1

    .line 905
    invoke-static {v11}, Lcom/layar/data/ImageCache$GetImageTask;->access$2(Lcom/layar/data/ImageCache$GetImageTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 907
    monitor-exit v12

    .line 928
    .end local v11           #oldTask:Lcom/layar/data/ImageCache$GetImageTask;
    :goto_0
    return-void

    .line 908
    .restart local v11       #oldTask:Lcom/layar/data/ImageCache$GetImageTask;
    :cond_0
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/layar/data/ImageCache;->_removeTask(Landroid/widget/ImageView;)V

    .line 911
    :cond_1
    if-eqz p6, :cond_2

    .line 912
    const/4 v4, 0x0

    move-object/from16 v0, p6

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 913
    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 914
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/layar/data/ImageCache;->prepareLayerIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 920
    :goto_1
    new-instance v3, Lcom/layar/data/ImageCache$GetImageTask;

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/layar/data/ImageCache$GetImageTask;-><init>(Lcom/layar/data/ImageCache;ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 921
    .local v3, task:Lcom/layar/data/ImageCache$GetImageTask;
    iget-object v4, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    move-object v0, v4

    move-object/from16 v1, p5

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget v4, p0, Lcom/layar/data/ImageCache;->mImageTaskExecuted:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_3

    .line 923
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/layar/data/ImageCache$GetImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 902
    :cond_3
    monitor-exit v12

    goto :goto_0

    .end local v3           #task:Lcom/layar/data/ImageCache$GetImageTask;
    .end local v11           #oldTask:Lcom/layar/data/ImageCache$GetImageTask;
    :catchall_0
    move-exception v4

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 925
    :catch_0
    move-exception v4

    goto :goto_0

    .line 915
    .restart local v11       #oldTask:Lcom/layar/data/ImageCache$GetImageTask;
    :cond_4
    const/4 v4, 0x1

    if-ne p1, v4, :cond_5

    .line 916
    const/4 v4, 0x0

    .line 917
    const/16 v5, 0xf

    :try_start_3
    iget v6, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_WIDTH:I

    iget v7, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_HEIGHT:I

    iget v8, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_ROUNDS:I

    .line 916
    invoke-static {v4, v5, v6, v7, v8}, Lcom/layar/data/ImageCache;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 919
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 2
    .parameter "image"
    .parameter "imageView"
    .parameter "progressBar"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    monitor-enter v0

    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/ImageCache;->mImageTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    invoke-direct {p0, p2}, Lcom/layar/data/ImageCache;->_removeTask(Landroid/widget/ImageView;)V

    .line 894
    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 895
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 896
    if-eqz p3, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 891
    :cond_1
    monitor-exit v0

    .line 898
    return-void

    .line 891
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 10
    .parameter "layerName"
    .parameter "imageType"
    .parameter "imageView"
    .parameter "progressBar"

    .prologue
    const/4 v1, 0x0

    .line 847
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    const-string v0, "icon"

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    .line 852
    .local v8, iconify:Z
    :goto_1
    invoke-static {p1, p2, v1}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 853
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_4

    .line 854
    invoke-static {p1, p2, v1}, Lcom/layar/data/ImageCache;->getLayerImagePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 855
    .local v9, path:Ljava/lang/String;
    invoke-static {v9}, Lcom/layar/data/ImageCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, url:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "layers/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 858
    .local v3, cacheFile:Ljava/io/File;
    if-eqz v8, :cond_3

    const/4 v0, 0x3

    move v1, v0

    :goto_2
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/layar/data/ImageCache;->setImageBitmap(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_0

    .end local v2           #url:Ljava/lang/String;
    .end local v3           #cacheFile:Ljava/io/File;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #iconify:Z
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    move v8, v1

    .line 850
    goto :goto_1

    .line 858
    .restart local v2       #url:Ljava/lang/String;
    .restart local v3       #cacheFile:Ljava/io/File;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #iconify:Z
    .restart local v9       #path:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x2

    move v1, v0

    goto :goto_2

    .line 860
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #cacheFile:Ljava/io/File;
    .end local v9           #path:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v7, p3, p4}, Lcom/layar/data/ImageCache;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_0
.end method

.method public setPoiImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 8
    .parameter "url"
    .parameter "imageView"
    .parameter "progressBar"

    .prologue
    .line 829
    const/4 v7, 0x0

    .line 830
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    invoke-static {}, Lcom/layar/data/ImageCache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 839
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 841
    const/16 v0, 0xf

    iget v1, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_WIDTH:I

    iget v2, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_HEIGHT:I

    iget v4, p0, Lcom/layar/data/ImageCache;->POI_IMAGE_ROUNDS:I

    .line 840
    invoke-static {v7, v0, v1, v2, v4}, Lcom/layar/data/ImageCache;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/layar/data/ImageCache;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 844
    :cond_1
    return-void

    .line 833
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/layar/data/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "poi/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/layar/data/ImageCache;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 834
    .local v3, cacheFile:Ljava/io/File;
    invoke-static {v3}, Lcom/layar/data/ImageCache;->readImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 835
    if-nez v7, :cond_0

    .line 836
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/layar/data/ImageCache;->setImageBitmap(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_0
.end method

.class public Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;
.super Ljava/lang/Object;
.source "PageCellsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageCell"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$core$PageCellsManager$BitmapTypes:[I


# instance fields
.field private loading:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mFileNamePrefix:Ljava/lang/String;

.field private mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$core$PageCellsManager$BitmapTypes()[I
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$core$PageCellsManager$BitmapTypes:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->values()[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->BACKGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->FOREGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->UNKNOWN:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$core$PageCellsManager$BitmapTypes:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Landroid/graphics/Rect;)V
    .locals 2
    .parameter
    .parameter "rect"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mRect:Landroid/graphics/Rect;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->loadBitmapFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->loadBitmapFromZipFile()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->loading:Z

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->dispose()V

    return-void
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->recycle()V

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->loadBitmap()V

    return-void
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;Ljava/util/zip/ZipFile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->putBitmapIntoCache(Ljava/util/zip/ZipFile;)V

    return-void
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    return-object v0
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getCacheFile()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 374
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$core$PageCellsManager$BitmapTypes()[I

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$5(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v4

    .line 387
    :goto_0
    return-object v1

    .line 375
    :pswitch_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :pswitch_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_fg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_fg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    .local v0, result:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->FOREGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;)V

    :goto_1
    move-object v1, v0

    .line 385
    goto/16 :goto_0

    .line 381
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #result:Ljava/io/File;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .restart local v0       #result:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->BACKGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;)V

    goto :goto_1

    :cond_1
    move-object v1, v4

    .line 383
    goto/16 :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getZipEntryInputStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;
    .locals 6
    .parameter "zip"

    .prologue
    const/4 v5, 0x0

    .line 348
    if-nez p1, :cond_0

    move-object v3, v5

    .line 370
    :goto_0
    return-object v3

    .line 349
    :cond_0
    const/4 v1, 0x0

    .line 350
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$core$PageCellsManager$BitmapTypes()[I

    move-result-object v3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$5(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 362
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    move-object v3, v5

    goto :goto_0

    .line 351
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    goto :goto_1

    .line 352
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_fg.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    goto :goto_1

    .line 354
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_fg.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    sget-object v4, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->FOREGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-static {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;)V

    goto :goto_1

    .line 357
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mFileNamePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    sget-object v4, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->BACKGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-static {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;)V

    goto :goto_1

    .line 363
    :cond_3
    const/4 v2, 0x0

    .line 365
    .local v2, result:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    move-object v3, v2

    .line 370
    goto/16 :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PageCellsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadBitmap()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->loading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->loading:Z

    .line 215
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private loadBitmapFromCache()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 243
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getCacheFile()Ljava/io/File;

    move-result-object v1

    .line 244
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    .line 265
    :goto_0
    return-object v6

    .line 245
    :cond_1
    const/4 v3, 0x0

    .line 246
    .local v3, result:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 248
    .local v4, stream:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v4           #stream:Ljava/io/BufferedInputStream;
    .local v5, stream:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 250
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 251
    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 252
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 253
    const/4 v4, 0x0

    .line 260
    .end local v5           #stream:Ljava/io/BufferedInputStream;
    .restart local v4       #stream:Ljava/io/BufferedInputStream;
    if-eqz v4, :cond_2

    .line 261
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 262
    :goto_1
    const/4 v4, 0x0

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_2
    move-object v6, v3

    .line 265
    goto :goto_0

    .line 255
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 256
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v6, "PageCellsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    if-eqz v4, :cond_2

    .line 261
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 262
    :goto_4
    const/4 v4, 0x0

    goto :goto_2

    .line 259
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 260
    :goto_5
    if-eqz v4, :cond_3

    .line 261
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 262
    :goto_6
    const/4 v4, 0x0

    .line 264
    :cond_3
    throw v6

    .line 261
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_6

    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v6

    goto :goto_1

    .line 259
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #stream:Ljava/io/BufferedInputStream;
    .restart local v5       #stream:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/BufferedInputStream;
    .restart local v4       #stream:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 255
    .end local v4           #stream:Ljava/io/BufferedInputStream;
    .restart local v5       #stream:Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/BufferedInputStream;
    .restart local v4       #stream:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private loadBitmapFromZipFile()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, istream:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 271
    .local v6, ostream:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 272
    .local v9, result:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/util/zip/ZipFile;

    move-result-object v10

    if-nez v10, :cond_0

    .line 273
    const-string v10, "mZipFile"

    const-string v11, "cannot proceed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v12

    .line 310
    :goto_0
    return-object v10

    .line 276
    :cond_0
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/util/zip/ZipFile;

    move-result-object v10

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/core/cipher/Util;->retrievePassword(Ljava/util/zip/ZipFile;)[B

    move-result-object v8

    .line 278
    .local v8, password:[B
    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 279
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 281
    if-nez v8, :cond_3

    .line 282
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/util/zip/ZipFile;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getZipEntryInputStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;

    move-result-object v10

    const/high16 v11, 0x1

    invoke-direct {v4, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 283
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .local v4, istream:Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v4, v10, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v9

    move-object v3, v4

    .line 301
    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v6, :cond_1

    .line 302
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 303
    :goto_2
    const/4 v6, 0x0

    .line 305
    :cond_1
    if-eqz v3, :cond_2

    .line 306
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 307
    :goto_3
    const/4 v3, 0x0

    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_4
    move-object v10, v9

    .line 310
    goto :goto_0

    .line 286
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :try_start_4
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/util/zip/ZipFile;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getZipEntryInputStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;

    move-result-object v10

    const/high16 v11, 0x1

    invoke-direct {v4, v10, v11, v8}, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;-><init>(Ljava/io/InputStream;I[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 287
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    const/16 v10, 0x2000

    :try_start_5
    new-array v0, v10, [B

    .line 288
    .local v0, buffer:[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    array-length v10, v0

    invoke-direct {v7, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 289
    .end local v6           #ostream:Ljava/io/ByteArrayOutputStream;
    .local v7, ostream:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 290
    .local v1, count:I
    :goto_5
    :try_start_6
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_4

    .line 292
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    invoke-static {v10, v11, v12, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, v7

    .end local v7           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 291
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .end local v6           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    .restart local v7       #ostream:Ljava/io/ByteArrayOutputStream;
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    .line 296
    :catch_0
    move-exception v10

    move-object v2, v10

    move-object v6, v7

    .end local v7           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .line 297
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    :goto_6
    :try_start_7
    const-string v10, "PageCellsManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 301
    if-eqz v6, :cond_5

    .line 302
    :try_start_8
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 303
    :goto_7
    const/4 v6, 0x0

    .line 305
    :cond_5
    if-eqz v3, :cond_2

    .line 306
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 307
    :goto_8
    const/4 v3, 0x0

    goto :goto_4

    .line 300
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 301
    :goto_9
    if-eqz v6, :cond_6

    .line 302
    :try_start_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 303
    :goto_a
    const/4 v6, 0x0

    .line 305
    :cond_6
    if-eqz v3, :cond_7

    .line 306
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 307
    :goto_b
    const/4 v3, 0x0

    .line 309
    :cond_7
    throw v10

    .line 302
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v10

    goto :goto_7

    .line 306
    :catch_2
    move-exception v10

    goto :goto_8

    .line 302
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_a

    .line 306
    :catch_4
    move-exception v11

    goto :goto_b

    .line 302
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .line 306
    :catch_6
    move-exception v10

    goto/16 :goto_3

    .line 300
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_9

    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .end local v6           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    .restart local v7       #ostream:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 296
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_7
    move-exception v10

    move-object v2, v10

    goto :goto_6

    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .restart local v4       #istream:Ljava/io/BufferedInputStream;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_8
    move-exception v10

    move-object v2, v10

    move-object v3, v4

    .end local v4           #istream:Ljava/io/BufferedInputStream;
    .restart local v3       #istream:Ljava/io/BufferedInputStream;
    goto :goto_6
.end method

.method private putBitmapIntoCache(Ljava/util/zip/ZipFile;)V
    .locals 12
    .parameter "zip"

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getCacheFile()Ljava/io/File;

    move-result-object v2

    .line 315
    .local v2, dst:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v4, 0x0

    .line 317
    .local v4, istream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 318
    .local v6, ostream:Ljava/io/OutputStream;
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/util/zip/ZipFile;

    move-result-object v9

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/cipher/Util;->retrievePassword(Ljava/util/zip/ZipFile;)[B

    move-result-object v8

    .line 320
    .local v8, password:[B
    if-nez v8, :cond_3

    .line 321
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/util/zip/ZipFile;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getZipEntryInputStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;

    move-result-object v9

    const/high16 v10, 0x1

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local v4           #istream:Ljava/io/InputStream;
    .local v5, istream:Ljava/io/InputStream;
    move-object v4, v5

    .line 324
    .end local v5           #istream:Ljava/io/InputStream;
    .restart local v4       #istream:Ljava/io/InputStream;
    :goto_1
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getCacheFile()Ljava/io/File;

    move-result-object v2

    .line 325
    :cond_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 326
    .end local v6           #ostream:Ljava/io/OutputStream;
    .local v7, ostream:Ljava/io/OutputStream;
    const/16 v9, 0x2000

    :try_start_1
    new-array v0, v9, [B

    .line 328
    .local v0, buffer:[B
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .local v1, count:I
    if-gtz v1, :cond_4

    .line 336
    if-eqz v7, :cond_8

    .line 337
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 338
    :goto_3
    const/4 v6, 0x0

    .line 340
    .end local v7           #ostream:Ljava/io/OutputStream;
    .restart local v6       #ostream:Ljava/io/OutputStream;
    :goto_4
    if-eqz v4, :cond_0

    .line 341
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 342
    :goto_5
    const/4 v4, 0x0

    goto :goto_0

    .line 323
    .end local v0           #buffer:[B
    .end local v1           #count:I
    :cond_3
    :try_start_4
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/util/zip/ZipFile;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getZipEntryInputStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;

    move-result-object v9

    const/high16 v10, 0x1

    invoke-direct {v5, v9, v10, v8}, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;-><init>(Ljava/io/InputStream;I[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .end local v4           #istream:Ljava/io/InputStream;
    .restart local v5       #istream:Ljava/io/InputStream;
    move-object v4, v5

    .end local v5           #istream:Ljava/io/InputStream;
    .restart local v4       #istream:Ljava/io/InputStream;
    goto :goto_1

    .line 329
    .end local v6           #ostream:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v7       #ostream:Ljava/io/OutputStream;
    :cond_4
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v7, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 331
    .end local v0           #buffer:[B
    .end local v1           #count:I
    :catch_0
    move-exception v9

    move-object v3, v9

    move-object v6, v7

    .line 332
    .end local v7           #ostream:Ljava/io/OutputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v6       #ostream:Ljava/io/OutputStream;
    :goto_6
    :try_start_6
    const-string v9, "PageCellsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 336
    if-eqz v6, :cond_5

    .line 337
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 338
    :goto_7
    const/4 v6, 0x0

    .line 340
    :cond_5
    if-eqz v4, :cond_0

    .line 341
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 342
    :goto_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 335
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 336
    :goto_9
    if-eqz v6, :cond_6

    .line 337
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 338
    :goto_a
    const/4 v6, 0x0

    .line 340
    :cond_6
    if-eqz v4, :cond_7

    .line 341
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 342
    :goto_b
    const/4 v4, 0x0

    .line 344
    :cond_7
    throw v9

    .line 337
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    goto :goto_7

    .line 341
    :catch_2
    move-exception v9

    goto :goto_8

    .line 337
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v10

    goto :goto_a

    .line 341
    :catch_4
    move-exception v10

    goto :goto_b

    .line 337
    .end local v6           #ostream:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v7       #ostream:Ljava/io/OutputStream;
    :catch_5
    move-exception v9

    goto :goto_3

    .line 341
    .end local v7           #ostream:Ljava/io/OutputStream;
    .restart local v6       #ostream:Ljava/io/OutputStream;
    :catch_6
    move-exception v9

    goto :goto_5

    .line 335
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v6           #ostream:Ljava/io/OutputStream;
    .restart local v7       #ostream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #ostream:Ljava/io/OutputStream;
    .restart local v6       #ostream:Ljava/io/OutputStream;
    goto :goto_9

    .line 331
    :catch_7
    move-exception v9

    move-object v3, v9

    goto :goto_6

    .end local v6           #ostream:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v7       #ostream:Ljava/io/OutputStream;
    :cond_8
    move-object v6, v7

    .end local v7           #ostream:Ljava/io/OutputStream;
    .restart local v6       #ostream:Ljava/io/OutputStream;
    goto :goto_4
.end method

.method private recycle()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    .line 197
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    .line 198
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$1;

    invoke-direct {v2, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->loadBitmap()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

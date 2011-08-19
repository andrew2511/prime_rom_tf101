.class final Lcom/asus/reader/util/Downloader$4;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/util/Downloader;->saveURLImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/asus/reader/util/Downloader$4;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/asus/reader/util/Downloader$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, cover:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/asus/reader/util/Downloader$4;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeAPIBase;->getURLBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_2

    .line 263
    :cond_0
    if-eqz v0, :cond_1

    .line 264
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/util/Downloader$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/asus/reader/book/ReaderDatabase;->addCoverCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 265
    iget-object v2, p0, Lcom/asus/reader/util/Downloader$4;->val$path:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/asus/reader/util/Downloader;->saveCover(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 268
    :cond_1
    return-void

    .line 258
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

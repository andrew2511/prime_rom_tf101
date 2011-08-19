.class final Lcom/asus/reader/util/Downloader$3;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/util/Downloader;->loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/asus/reader/util/Downloader$3;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    iput-object p2, p0, Lcom/asus/reader/util/Downloader$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/asus/reader/util/Downloader$3;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/reader/util/Downloader$3;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    iget-object v3, p0, Lcom/asus/reader/util/Downloader$3;->val$url:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/asus/reader/util/Downloader$UpdateListener;->checkAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/4 v0, 0x0

    .line 234
    .local v0, cover:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/util/Downloader$3;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeAPIBase;->getURLBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/asus/reader/util/Downloader$3;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    if-eqz v2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/asus/reader/util/Downloader$3;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    iget-object v3, p0, Lcom/asus/reader/util/Downloader$3;->val$url:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/asus/reader/util/Downloader$UpdateListener;->onUpdate(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 245
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/util/Downloader$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/asus/reader/book/ReaderDatabase;->addCoverCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 236
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 241
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/asus/reader/util/Downloader$3;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/asus/reader/util/Downloader$3;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    iget-object v3, p0, Lcom/asus/reader/util/Downloader$3;->val$url:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/asus/reader/util/Downloader$UpdateListener;->checkAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/asus/reader/util/Downloader$3;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    iget-object v3, p0, Lcom/asus/reader/util/Downloader$3;->val$url:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/asus/reader/util/Downloader$UpdateListener;->onFailed(Ljava/lang/String;)V

    goto :goto_2
.end method

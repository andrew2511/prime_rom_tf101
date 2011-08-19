.class final Lcom/asus/reader/util/Downloader$2;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/util/Downloader;->loadFileImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/asus/reader/util/Downloader$2;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    iput-object p2, p0, Lcom/asus/reader/util/Downloader$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/asus/reader/util/Downloader$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 194
    iget-object v3, p0, Lcom/asus/reader/util/Downloader$2;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/asus/reader/util/Downloader$2;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    iget-object v4, p0, Lcom/asus/reader/util/Downloader$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/asus/reader/util/Downloader$UpdateListener;->checkAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 197
    .local v0, cover:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/asus/reader/util/Downloader$2;->val$url:Ljava/lang/String;

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/asus/reader/util/Downloader$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/util/Downloader$2;->val$url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 201
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    .end local v2           #is:Ljava/io/InputStream;
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/asus/reader/util/Downloader$2;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    if-eqz v3, :cond_2

    .line 214
    iget-object v3, p0, Lcom/asus/reader/util/Downloader$2;->val$updatelistener:Lcom/asus/reader/util/Downloader$UpdateListener;

    iget-object v4, p0, Lcom/asus/reader/util/Downloader$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Lcom/asus/reader/util/Downloader$UpdateListener;->onUpdate(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 219
    :cond_2
    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/util/Downloader$2;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/asus/reader/book/ReaderDatabase;->addCoverCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 202
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 203
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/asus/reader/util/Downloader$2;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 208
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 209
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.class Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;
.super Ljava/lang/Object;
.source "BooksImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageTask"
.end annotation


# instance fields
.field private mPrerequisite:Ljava/lang/Runnable;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksImageManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/BooksImageManager;Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter "prereq"
    .parameter "uri"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    if-nez p3, :cond_0

    .line 282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 284
    :cond_0
    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mPrerequisite:Ljava/lang/Runnable;

    .line 285
    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    .line 286
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-string v14, "BooksImageManager"

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 298
    .local v5, exception:Ljava/lang/Throwable;
    :try_start_0
    iget-object v12, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mPrerequisite:Ljava/lang/Runnable;

    if-eqz v12, :cond_0

    .line 299
    iget-object v12, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mPrerequisite:Ljava/lang/Runnable;

    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    .line 302
    :cond_0
    iget-object v12, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    invoke-static {v12}, Lcom/google/android/apps/books/app/BooksImageManager;->access$100(Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 304
    new-instance v6, Lcom/google/android/apps/books/net/BitmapContentHandler;

    invoke-direct {v6}, Lcom/google/android/apps/books/net/BitmapContentHandler;-><init>()V

    .line 305
    .local v6, handler:Ljava/net/ContentHandler;
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/google/android/apps/books/net/BooksCache;->createCookie(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    .line 306
    .local v3, cookie:Ljava/lang/Object;
    invoke-static {v6, v3}, Lcom/google/android/apps/books/net/BooksCache;->createContentHandler(Ljava/net/ContentHandler;Ljava/lang/Object;)Ljava/net/ContentHandler;

    move-result-object v6

    .line 308
    iget-object v12, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 309
    .local v10, spec:Ljava/lang/String;
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 310
    .local v11, url:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 311
    .local v2, connection:Ljava/net/URLConnection;
    invoke-virtual {v6, v2}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    .end local v2           #connection:Ljava/net/URLConnection;
    .end local v3           #cookie:Ljava/lang/Object;
    .end local v6           #handler:Ljava/net/ContentHandler;
    .end local v10           #spec:Ljava/lang/String;
    .end local v11           #url:Ljava/net/URL;
    :cond_1
    :goto_0
    move-object v8, v1

    .line 329
    .local v8, resultBitmap:Landroid/graphics/Bitmap;
    move-object v9, v5

    .line 330
    .local v9, resultException:Ljava/lang/Throwable;
    iget-object v12, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-static {v12}, Lcom/google/android/apps/books/app/BooksImageManager;->access$800(Lcom/google/android/apps/books/app/BooksImageManager;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;

    invoke-direct {v13, p0, v8, v9}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;-><init>(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void

    .line 314
    .end local v8           #resultBitmap:Landroid/graphics/Bitmap;
    .end local v9           #resultException:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v12, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-static {v12}, Lcom/google/android/apps/books/app/BooksImageManager;->access$200(Lcom/google/android/apps/books/app/BooksImageManager;)Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 315
    .local v7, is:Ljava/io/InputStream;
    if-eqz v7, :cond_1

    .line 316
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 317
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 320
    .end local v7           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 321
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v12, "BooksImageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Insufficient memory to load image: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    move-object v5, v4

    .line 326
    goto :goto_0

    .line 323
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v12

    move-object v4, v12

    .line 324
    .local v4, e:Ljava/io/IOException;
    const-string v12, "BooksImageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IO error while loading image: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object v5, v4

    goto :goto_0
.end method

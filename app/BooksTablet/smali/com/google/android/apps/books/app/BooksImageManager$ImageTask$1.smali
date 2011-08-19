.class Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;
.super Ljava/lang/Object;
.source "BooksImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

.field final synthetic val$resultBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$resultException:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->val$resultException:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-string v6, "BooksImageManager"

    .line 332
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    iget-object v3, v3, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksImageManager;->access$400(Lcom/google/android/apps/books/app/BooksImageManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->access$300(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 333
    .local v1, callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    if-eqz v1, :cond_1

    .line 335
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksImageManager;->access$500(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/ImageCallback;

    .line 336
    .local v0, callback:Lcom/google/android/apps/books/common/ImageCallback;
    const-string v3, "BooksImageManager"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    const-string v3, "BooksImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoking image callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->val$resultException:Ljava/lang/Throwable;

    invoke-interface {v0, v3, v4}, Lcom/google/android/apps/books/common/ImageCallback;->onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 344
    .end local v0           #callback:Lcom/google/android/apps/books/common/ImageCallback;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 345
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    iget-object v3, v3, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksImageManager;->access$600(Lcom/google/android/apps/books/app/BooksImageManager;)Lcom/google/android/apps/books/util/SimpleCache;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->access$300(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/books/util/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    iget-object v3, v3, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksImageManager;->access$400(Lcom/google/android/apps/books/app/BooksImageManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->access$300(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    iget-object v3, v3, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksImageManager;->access$700(Lcom/google/android/apps/books/app/BooksImageManager;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->access$300(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 351
    const-string v3, "BooksImageManager"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    const-string v3, "BooksImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image task for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->access$300(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exiting; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;->this$1:Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    iget-object v4, v4, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksImageManager;->access$700(Lcom/google/android/apps/books/app/BooksImageManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_3
    return-void
.end method

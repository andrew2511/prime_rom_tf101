.class Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;
.super Ljava/lang/Object;
.source "CachingImageManagerProxy.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/common/CachingImageManagerProxy;->getImage(Landroid/net/Uri;Ljava/lang/Runnable;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

.field final synthetic val$callback:Lcom/google/android/apps/books/common/ImageCallback;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/common/CachingImageManagerProxy;Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->this$0:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    iput-object p2, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->val$callback:Lcom/google/android/apps/books/common/ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "bitmap"
    .parameter "exception"

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "CachingImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->this$0:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    invoke-static {v1}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->access$100(Lcom/google/android/apps/books/common/CachingImageManagerProxy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;

    .line 58
    .local v0, cacheValue:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    if-eqz v0, :cond_2

    .line 60
    iget-object v1, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 61
    iget-object p1, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->bitmap:Landroid/graphics/Bitmap;

    .line 69
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->val$callback:Lcom/google/android/apps/books/common/ImageCallback;

    invoke-interface {v1, p1, p2}, Lcom/google/android/apps/books/common/ImageCallback;->onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    .line 70
    return-void

    .line 64
    :cond_2
    new-instance v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;

    .end local v0           #cacheValue:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;-><init>(Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;)V

    .line 65
    .restart local v0       #cacheValue:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    iput-object p1, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->bitmap:Landroid/graphics/Bitmap;

    .line 66
    iput-object p2, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->exception:Ljava/lang/Throwable;

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->this$0:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    invoke-static {v1}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->access$100(Lcom/google/android/apps/books/common/CachingImageManagerProxy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

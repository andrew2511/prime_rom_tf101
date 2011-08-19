.class Lcom/android/gallery3d/ui/CacheBarView$2;
.super Ljava/lang/Object;
.source "CacheBarView.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/CacheBarView;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/CacheBarView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/CacheBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/gallery3d/ui/CacheBarView$2;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView$2;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/CacheBarView;->access$202(Lcom/android/gallery3d/ui/CacheBarView;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 220
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView$2;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/CacheBarView;->access$300(Lcom/android/gallery3d/ui/CacheBarView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView$2;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/CacheBarView;->access$300(Lcom/android/gallery3d/ui/CacheBarView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    :cond_0
    return-void
.end method

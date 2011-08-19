.class Lcom/android/gallery3d/app/SlideshowDataAdapter$1;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/android/gallery3d/data/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/gallery3d/data/MediaItem;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$100(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$200(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->reload()J

    move-result-wide v0

    .line 80
    .local v0, v:J
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/android/gallery3d/app/SlideshowDataAdapter;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v2, v0, v1}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$302(Lcom/android/gallery3d/app/SlideshowDataAdapter;J)J

    .line 82
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v2, v4}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$402(Lcom/android/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 83
    const/4 v2, 0x0

    .line 86
    .end local v0           #v:J
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$200(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$500(Lcom/android/gallery3d/app/SlideshowDataAdapter;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->call()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

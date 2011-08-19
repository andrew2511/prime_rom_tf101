.class Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;Lcom/android/gallery3d/app/SlideshowDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$100(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$702(Lcom/android/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 151
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

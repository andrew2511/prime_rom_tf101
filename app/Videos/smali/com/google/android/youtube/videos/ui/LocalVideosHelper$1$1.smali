.class Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1$1;
.super Ljava/lang/Object;
.source "LocalVideosHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1$1;->this$1:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;

    iput-object p2, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1$1;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1$1;->this$1:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$100(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1$1;->this$1:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;

    iget-object v1, v1, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;->val$video:Lcom/google/android/youtube/videos/LocalVideo;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1$1;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->setThumbnail(Lcom/google/android/youtube/videos/LocalVideo;Landroid/graphics/Bitmap;)V

    .line 168
    return-void
.end method

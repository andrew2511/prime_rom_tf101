.class Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;
.super Ljava/lang/Object;
.source "LocalVideosHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->loadThumbnail(Lcom/google/android/youtube/videos/LocalVideo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

.field final synthetic val$video:Lcom/google/android/youtube/videos/LocalVideo;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/LocalVideo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    iput-object p2, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;->val$video:Lcom/google/android/youtube/videos/LocalVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$500(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;->val$video:Lcom/google/android/youtube/videos/LocalVideo;

    iget-wide v2, v2, Lcom/google/android/youtube/videos/LocalVideo;->id:J

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$800()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, thumbnail:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$500(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1$1;-><init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

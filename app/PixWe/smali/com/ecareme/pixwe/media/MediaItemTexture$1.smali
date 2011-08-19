.class Lcom/ecareme/pixwe/media/MediaItemTexture$1;
.super Ljava/lang/Thread;
.source "MediaItemTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/MediaItemTexture;->load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/MediaItemTexture;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/MediaItemTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaItemTexture$1;->this$0:Lcom/ecareme/pixwe/media/MediaItemTexture;

    .line 154
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture$1;->this$0:Lcom/ecareme/pixwe/media/MediaItemTexture;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/MediaItemTexture;->access$0(Lcom/ecareme/pixwe/media/MediaItemTexture;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItemTexture$1;->this$0:Lcom/ecareme/pixwe/media/MediaItemTexture;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/MediaItemTexture;->access$1(Lcom/ecareme/pixwe/media/MediaItemTexture;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v1

    iget-wide v1, v1, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_1
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    goto :goto_1
.end method

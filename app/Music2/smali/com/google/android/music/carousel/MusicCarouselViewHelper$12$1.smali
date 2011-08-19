.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$12$1;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->notifyAlbumArtChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;

    iput-wide p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12$1;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12$1;->val$albumId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1402(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)J

    .line 728
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    .line 730
    :cond_0
    return-void
.end method

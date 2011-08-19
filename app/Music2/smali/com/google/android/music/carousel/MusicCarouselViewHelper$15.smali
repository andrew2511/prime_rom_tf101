.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$15;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$15;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$15;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$2100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$15;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/activitymanagement/AppState;->setBackgroundAlbum(JZ)V

    .line 1082
    return-void
.end method

.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForPlaylist(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$id:J

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-wide p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->val$id:J

    iput-object p4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->val$id:J

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->val$name:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;)V

    .line 618
    return-void
.end method

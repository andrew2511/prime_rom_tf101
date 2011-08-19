.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-wide p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->val$albumId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V

    .line 611
    return-void
.end method

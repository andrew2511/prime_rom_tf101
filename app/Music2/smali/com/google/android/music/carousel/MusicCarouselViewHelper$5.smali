.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->recycleBitmaps()V
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
    .line 477
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 481
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$702(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 483
    :cond_0
    return-void
.end method

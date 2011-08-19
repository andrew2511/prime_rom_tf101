.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/activitymanagement/AppState;)V
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
    .line 359
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "type"
    .parameter "bitmap"

    .prologue
    .line 361
    packed-switch p1, :pswitch_data_0

    .line 387
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 389
    :goto_0
    :pswitch_0
    return-void

    .line 366
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

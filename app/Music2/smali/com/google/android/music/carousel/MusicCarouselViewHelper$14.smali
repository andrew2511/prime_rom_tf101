.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$comeFrom:[I


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;->val$comeFrom:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    const-string v1, "telling carouselView: new shuffle: "

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;->val$comeFrom:[I

    invoke-static {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;[I)V

    .line 993
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$2000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;->val$comeFrom:[I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->shuffle([I)V

    .line 994
    return-void
.end method

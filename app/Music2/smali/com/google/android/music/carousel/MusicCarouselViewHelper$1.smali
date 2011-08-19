.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;
.super Lcom/google/android/music/Worker;
.source "MusicCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0, p2}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$002(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)I

    .line 129
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    .line 133
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

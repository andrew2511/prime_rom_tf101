.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onInvalidateDetailTexture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 679
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;->val$id:I

    invoke-static {v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 680
    .local v0, info:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v0, :cond_0

    .line 681
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mActiveDetailTexture:Z

    .line 683
    :cond_0
    return-void
.end method

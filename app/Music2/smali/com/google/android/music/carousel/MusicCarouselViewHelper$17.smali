.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$17;
.super Landroid/database/ContentObserver;
.source "MusicCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursor()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$17;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$17;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$2300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$17;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    .line 1178
    return-void
.end method

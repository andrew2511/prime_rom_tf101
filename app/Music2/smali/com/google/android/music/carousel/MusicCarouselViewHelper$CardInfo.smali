.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardInfo"
.end annotation


# instance fields
.field mActiveDetailTexture:Z

.field mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

.field mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V
    .locals 0
    .parameter "record"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 231
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 235
    instance-of v2, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    if-eqz v2, :cond_0

    .line 236
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-object v1, v0

    .line 237
    .local v1, otherCardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-virtual {v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 239
    .end local v1           #otherCardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

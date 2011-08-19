.class public Lcom/google/android/youtube/app/widget/Teaser;
.super Ljava/lang/Object;
.source "Teaser.java"


# instance fields
.field public final sourceId:I

.field public final thumbnail:Landroid/graphics/Bitmap;

.field public final video:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "video"
    .parameter "thumbnail"
    .parameter "sourceId"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/app/widget/Teaser;->video:Lcom/google/android/youtube/core/model/Video;

    .line 22
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/youtube/app/widget/Teaser;->thumbnail:Landroid/graphics/Bitmap;

    .line 23
    iput p3, p0, Lcom/google/android/youtube/app/widget/Teaser;->sourceId:I

    .line 24
    return-void
.end method

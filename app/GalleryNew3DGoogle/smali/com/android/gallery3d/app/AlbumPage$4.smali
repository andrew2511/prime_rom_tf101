.class Lcom/android/gallery3d/app/AlbumPage$4;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->startTransition(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field final synthetic val$center:[I

.field final synthetic val$random:Ljava/util/Random;

.field final synthetic val$repository:Lcom/android/gallery3d/ui/PositionRepository;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PositionRepository;[ILjava/util/Random;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$repository:Lcom/android/gallery3d/ui/PositionRepository;

    iput-object p3, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$center:[I

    iput-object p4, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$random:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    return-void
.end method


# virtual methods
.method public getPosition(JLcom/android/gallery3d/ui/PositionRepository$Position;)Lcom/android/gallery3d/ui/PositionRepository$Position;
    .locals 7
    .parameter "identity"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$repository:Lcom/android/gallery3d/ui/PositionRepository;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/android/gallery3d/ui/PositionRepository$Position;

    move-result-object v6

    .line 304
    .local v6, p:Lcom/android/gallery3d/ui/PositionRepository$Position;
    if-eqz v6, :cond_0

    move-object v0, v6

    .line 313
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$center:[I

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$random:Ljava/util/Random;

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$center:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$center:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$random:Ljava/util/Random;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/16 v5, 0x1e

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionRepository$Position;->set(FFFFF)V

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/ui/PositionRepository$Position;->set(Lcom/android/gallery3d/ui/PositionRepository$Position;)V

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    const/high16 v1, 0x4300

    iput v1, v0, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    goto :goto_1
.end method

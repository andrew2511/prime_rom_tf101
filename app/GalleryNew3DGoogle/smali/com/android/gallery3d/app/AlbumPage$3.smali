.class Lcom/android/gallery3d/app/AlbumPage$3;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->startTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field final synthetic val$repository:Lcom/android/gallery3d/ui/PositionRepository;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PositionRepository;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$repository:Lcom/android/gallery3d/ui/PositionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$3;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    return-void
.end method


# virtual methods
.method public getPosition(JLcom/android/gallery3d/ui/PositionRepository$Position;)Lcom/android/gallery3d/ui/PositionRepository$Position;
    .locals 3
    .parameter "identity"
    .parameter "target"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$repository:Lcom/android/gallery3d/ui/PositionRepository;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/android/gallery3d/ui/PositionRepository$Position;

    move-result-object v0

    .line 285
    .local v0, p:Lcom/android/gallery3d/ui/PositionRepository$Position;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 288
    :goto_0
    return-object v1

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-virtual {v1, p3}, Lcom/android/gallery3d/ui/PositionRepository$Position;->set(Lcom/android/gallery3d/ui/PositionRepository$Position;)V

    .line 287
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    const/high16 v2, 0x4300

    iput v2, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    .line 288
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    goto :goto_0
.end method

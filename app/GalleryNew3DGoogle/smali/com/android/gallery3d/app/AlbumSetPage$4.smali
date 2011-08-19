.class Lcom/android/gallery3d/app/AlbumSetPage$4;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->startTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;

.field final synthetic val$repository:Lcom/android/gallery3d/ui/PositionRepository;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/PositionRepository;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->val$repository:Lcom/android/gallery3d/ui/PositionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    return-void
.end method


# virtual methods
.method public getPosition(JLcom/android/gallery3d/ui/PositionRepository$Position;)Lcom/android/gallery3d/ui/PositionRepository$Position;
    .locals 6
    .parameter "identity"
    .parameter "target"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->val$repository:Lcom/android/gallery3d/ui/PositionRepository;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/android/gallery3d/ui/PositionRepository$Position;

    move-result-object v0

    .line 417
    .local v0, p:Lcom/android/gallery3d/ui/PositionRepository$Position;
    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    .line 419
    iget v1, p3, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v2, p3, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    const/high16 v3, 0x4300

    iget v4, p3, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    const/high16 v5, 0x3f80

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionRepository$Position;->set(FFFFF)V

    .line 421
    :cond_0
    return-object v0
.end method

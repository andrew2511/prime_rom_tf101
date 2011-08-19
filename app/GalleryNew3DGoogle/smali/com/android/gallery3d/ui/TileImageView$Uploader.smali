.class Lcom/android/gallery3d/ui/TileImageView$Uploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Uploader"
.end annotation


# instance fields
.field protected mActive:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/TileImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$Uploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TileImageView$Uploader;-><init>(Lcom/android/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/android/gallery3d/ui/GLRoot;Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 4
    .parameter "root"
    .parameter "canvas"

    .prologue
    .line 403
    const/4 v1, 0x1

    .line 405
    .local v1, quota:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Uploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/TileImageView;->access$100(Lcom/android/gallery3d/ui/TileImageView;)Ljava/util/Iterator;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 415
    :goto_0
    return v3

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Uploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/TileImageView;->access$100(Lcom/android/gallery3d/ui/TileImageView;)Ljava/util/Iterator;

    move-result-object v0

    .line 407
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/ui/TileImageView$Tile;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez v1, :cond_2

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 409
    .local v2, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v2, p2}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 410
    invoke-virtual {v2, p2}, Lcom/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 411
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 414
    .end local v2           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/gallery3d/ui/TileImageView$Uploader;->mActive:Z

    .line 415
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/TileImageView$Uploader;->mActive:Z

    goto :goto_0
.end method

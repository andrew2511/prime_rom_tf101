.class Lcom/android/gallery3d/ui/TileImageView$Tile;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field mNextFree:Lcom/android/gallery3d/ui/TileImageView$Tile;

.field mTileLevel:I

.field mX:I

.field mY:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/TileImageView;III)V
    .locals 0
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    .line 490
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 491
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 492
    iput p4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 493
    return-void
.end method


# virtual methods
.method public getParentTile()Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 5

    .prologue
    .line 519
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v4, v4, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 523
    :goto_0
    return-object v3

    .line 520
    :cond_0
    const/16 v3, 0xfe

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    .line 521
    .local v0, size:I
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    .line 522
    .local v1, x:I
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    .line 523
    .local v2, y:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lcom/android/gallery3d/ui/TileImageView;->access$300(Lcom/android/gallery3d/ui/TileImageView;III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 498
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 504
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 505
    .local v1, level:I
    const/16 v2, 0x100

    .line 506
    .local v2, tileLength:I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 507
    .local v0, borderLength:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/TileImageView;->access$200(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$Model;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v5, v0

    invoke-interface {v3, v1, v4, v5, v2}, Lcom/android/gallery3d/ui/TileImageView$Model;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public update(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 512
    iput p1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 513
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 514
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 515
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView$Tile;->invalidateContent()V

    .line 516
    return-void
.end method

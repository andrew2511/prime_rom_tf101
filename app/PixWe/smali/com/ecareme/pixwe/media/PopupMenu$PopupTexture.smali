.class final Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;
.super Lcom/ecareme/pixwe/media/CanvasTexture;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PopupTexture"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/NinePatch;

.field private final mBackgroundRect:Landroid/graphics/Rect;

.field private final mHighlightSelected:Landroid/graphics/NinePatch;

.field private final mTriangleBottom:Landroid/graphics/Bitmap;

.field private mTriangleX:I

.field final synthetic this$0:Lcom/ecareme/pixwe/media/PopupMenu;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/media/PopupMenu;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 305
    iput-object p1, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->this$0:Lcom/ecareme/pixwe/media/PopupMenu;

    .line 298
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v3}, Lcom/ecareme/pixwe/media/CanvasTexture;-><init>(Landroid/graphics/Bitmap$Config;)V

    .line 294
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mBackgroundRect:Landroid/graphics/Rect;

    .line 295
    const/4 v3, 0x0

    iput v3, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mTriangleX:I

    .line 299
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 300
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f020078

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, background:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mBackground:Landroid/graphics/NinePatch;

    .line 302
    const v3, 0x7f020079

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 303
    .local v1, highlightSelected:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mHighlightSelected:Landroid/graphics/NinePatch;

    .line 304
    const v3, 0x7f02007a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mTriangleBottom:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mTriangleBottom:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    iput p1, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mTriangleX:I

    return-void
.end method


# virtual methods
.method protected onSizeChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 309
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->getHeight()I

    move-result v2

    const/high16 v3, 0x4160

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 310
    return-void
.end method

.method protected renderCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
    .locals 9
    .parameter "canvas"
    .parameter "backing"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 315
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 316
    iget-object v6, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mBackground:Landroid/graphics/NinePatch;

    iget-object v7, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/ecareme/pixwe/media/PopupMenu;->access$0()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v8}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 320
    iget-object v5, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mTriangleBottom:Landroid/graphics/Bitmap;

    .line 321
    .local v5, triangle:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mTriangleX:I

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, p4, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {}, Lcom/ecareme/pixwe/media/PopupMenu;->access$0()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 324
    iget-object v6, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->this$0:Lcom/ecareme/pixwe/media/PopupMenu;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/PopupMenu;->access$1(Lcom/ecareme/pixwe/media/PopupMenu;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-result-object v3

    .line 325
    .local v3, options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->this$0:Lcom/ecareme/pixwe/media/PopupMenu;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/PopupMenu;->access$2(Lcom/ecareme/pixwe/media/PopupMenu;)I

    move-result v4

    .line 326
    .local v4, selectedItem:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 327
    aget-object v2, v3, v4

    .line 328
    .local v2, option:Lcom/ecareme/pixwe/media/PopupMenu$Option;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->mHighlightSelected:Landroid/graphics/NinePatch;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$0(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/IconTitleDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/IconTitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 332
    .end local v2           #option:Lcom/ecareme/pixwe/media/PopupMenu$Option;
    :cond_0
    array-length v1, v3

    .line 333
    .local v1, numOptions:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ne v0, v1, :cond_1

    .line 336
    return-void

    .line 334
    :cond_1
    aget-object v6, v3, v0

    invoke-static {v6}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$0(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/IconTitleDrawable;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/ecareme/pixwe/media/IconTitleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

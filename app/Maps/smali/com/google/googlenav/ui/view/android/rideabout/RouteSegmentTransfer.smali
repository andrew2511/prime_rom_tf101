.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;
.super Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;


# instance fields
.field private final j:I

.field private final k:I

.field private final l:Landroid/graphics/Bitmap;

.field private final m:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;LB/l;LB/l;Lcom/google/googlenav/ui/view/android/rideabout/j;Lcom/google/googlenav/ui/view/android/rideabout/j;II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;LB/l;)V

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->e:Lcom/google/googlenav/ui/view/android/rideabout/j;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->d:Lcom/google/googlenav/ui/view/android/rideabout/j;

    iput p6, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->j:I

    iput p7, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203ae

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020377

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->m:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    return v0
.end method

.method public a(IIF)I
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    add-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->j:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->f:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->j:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a(Landroid/graphics/Canvas;II)V

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->f:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a(Landroid/graphics/Canvas;III)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

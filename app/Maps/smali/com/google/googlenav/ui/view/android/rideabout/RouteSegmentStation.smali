.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;
.super Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;


# instance fields
.field private final j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;LB/l;Lcom/google/googlenav/ui/view/android/rideabout/j;Lcom/google/googlenav/ui/view/android/rideabout/j;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;LB/l;)V

    iput p5, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->d:Lcom/google/googlenav/ui/view/android/rideabout/j;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->e:Lcom/google/googlenav/ui/view/android/rideabout/j;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020378

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->j:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    if-ne p4, v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->b:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->d:Lcom/google/googlenav/ui/view/android/rideabout/j;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;II)V

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;III)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

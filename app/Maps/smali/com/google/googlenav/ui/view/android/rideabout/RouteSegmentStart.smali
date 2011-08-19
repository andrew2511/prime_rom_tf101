.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;
.super Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;


# instance fields
.field private final j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;LB/l;Lcom/google/googlenav/ui/view/android/rideabout/j;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;LB/l;)V

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->e:Lcom/google/googlenav/ui/view/android/rideabout/j;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ee

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->g:I

    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->a:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->f:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->a(Landroid/graphics/Canvas;III)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

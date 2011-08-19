.class Lcom/amazon/android/system/drawing/AndroidPolygon;
.super Ljava/lang/Object;
.source "AndroidPolygon.java"

# interfaces
.implements Lcom/amazon/system/drawing/Polygon;


# instance fields
.field final inner:Landroid/graphics/Path;

.field private started:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "numVerts"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidPolygon;->inner:Landroid/graphics/Path;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/android/system/drawing/AndroidPolygon;->started:Z

    .line 14
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidPolygon;->inner:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->incReserve(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public addPoint(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/amazon/android/system/drawing/AndroidPolygon;->started:Z

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/android/system/drawing/AndroidPolygon;->started:Z

    .line 23
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidPolygon;->inner:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidPolygon;->inner:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.class public Lcom/amazon/topaz/internal/drawing/VectorImage;
.super Ljava/lang/Object;
.source "VectorImage.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/IImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/drawing/VectorImage$1;,
        Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;
    }
.end annotation


# static fields
.field private static renderer:Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bounds_:Lcom/amazon/system/drawing/Rectangle;

.field private final contourEnds:[I

.field private final contourOffset:I

.field private final coordOffset:I

.field private destRect_:Lcom/amazon/system/drawing/Rectangle;

.field private final freeTypeRaster:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

.field private id:I

.field private final numContours:I

.field private final numCoords:I

.field private path:Lcom/amazon/system/drawing/GeneralPath;

.field private final xCoords:[I

.field private final yCoords:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;-><init>(Lcom/amazon/topaz/internal/drawing/VectorImage$1;)V

    sput-object v0, Lcom/amazon/topaz/internal/drawing/VectorImage;->renderer:Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;

    return-void
.end method

.method public constructor <init>(ILcom/amazon/topaz/internal/drawing/FreeType$TRaster;[I[III[IIIZII)V
    .locals 11
    .parameter "id"
    .parameter "freeTypeRaster"
    .parameter "xCoords"
    .parameter "yCoords"
    .parameter "coordOffset"
    .parameter "numCoords"
    .parameter "contourEnds"
    .parameter "contourOffset"
    .parameter "numContours"
    .parameter "copyData"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/InvalidContourException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gez p1, :cond_0

    .line 48
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "ID must not be zero."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 51
    :cond_0
    iput p1, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->id:I

    .line 53
    if-lez p9, :cond_1

    .line 55
    add-int v9, p8, p9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget v9, p7, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p6

    move v1, v9

    if-eq v0, v1, :cond_1

    .line 57
    new-instance v9, Lcom/amazon/topaz/exception/InvalidContourException;

    const-string v10, "Number of points doesn\'t match contour lengths"

    invoke-direct {v9, v10}, Lcom/amazon/topaz/exception/InvalidContourException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 61
    :cond_1
    const/4 v5, 0x0

    .line 62
    .local v5, first:I
    move/from16 v6, p8

    .local v6, i:I
    :goto_0
    add-int v9, p8, p9

    if-ge v6, v9, :cond_3

    .line 64
    aget v7, p7, v6

    .line 65
    .local v7, last:I
    sub-int v9, v7, v5

    add-int/lit8 v8, v9, 0x1

    .line 66
    .local v8, length:I
    rem-int/lit8 v9, v8, 0x3

    if-eqz v9, :cond_2

    .line 68
    new-instance v9, Lcom/amazon/topaz/exception/InvalidContourException;

    const-string v10, "Expected all-bezier segments"

    invoke-direct {v9, v10}, Lcom/amazon/topaz/exception/InvalidContourException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 70
    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    .end local v7           #last:I
    .end local v8           #length:I
    :cond_3
    iput-object p2, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->freeTypeRaster:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

    .line 75
    if-eqz p10, :cond_4

    .line 77
    move/from16 v0, p6

    new-array v0, v0, [I

    move-object v9, v0

    iput-object v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->xCoords:[I

    .line 78
    move/from16 v0, p6

    new-array v0, v0, [I

    move-object v9, v0

    iput-object v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->yCoords:[I

    .line 79
    iget-object v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->xCoords:[I

    const/4 v10, 0x0

    move-object v0, p3

    move/from16 v1, p5

    move-object v2, v9

    move v3, v10

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->yCoords:[I

    const/4 v10, 0x0

    move-object v0, p4

    move/from16 v1, p5

    move-object v2, v9

    move v3, v10

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    const/4 v9, 0x0

    iput v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->coordOffset:I

    .line 83
    move/from16 v0, p9

    new-array v0, v0, [I

    move-object v9, v0

    iput-object v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourEnds:[I

    .line 84
    iget-object v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourEnds:[I

    const/4 v10, 0x0

    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object v2, v9

    move v3, v10

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    const/4 v9, 0x0

    iput v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourOffset:I

    .line 96
    :goto_1
    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/VectorImage;->numCoords:I

    .line 97
    move/from16 v0, p9

    move-object v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/VectorImage;->numContours:I

    .line 98
    new-instance v9, Lcom/amazon/system/drawing/Rectangle;

    move-object v0, v9

    move/from16 v1, p11

    move/from16 v2, p12

    invoke-direct {v0, v1, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(II)V

    iput-object v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    .line 99
    new-instance v9, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v9}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    iput-object v9, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    .line 100
    return-void

    .line 89
    :cond_4
    iput-object p3, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->xCoords:[I

    .line 90
    iput-object p4, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->yCoords:[I

    .line 91
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/VectorImage;->coordOffset:I

    .line 92
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourEnds:[I

    .line 93
    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourOffset:I

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/amazon/topaz/internal/drawing/WritableImage;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;Lcom/amazon/system/drawing/Color;)Lcom/amazon/system/drawing/Rectangle;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget v0, p2, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->width:I

    if-lez v0, :cond_2

    iget v0, p2, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->height:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourEnds:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v11

    .line 105
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v0

    invoke-interface {v11, v0}, Lcom/amazon/system/drawing/GraphicsExtended;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledX()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 107
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledY()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 108
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledWidth()D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 109
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledHeight()D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 111
    invoke-interface {v11}, Lcom/amazon/system/drawing/GraphicsExtended;->canRenderGlyphs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->path:Lcom/amazon/system/drawing/GeneralPath;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/amazon/topaz/Viewer;->getImageFactory()Lcom/amazon/system/drawing/ImageFactoryExtended;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->xCoords:[I

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->yCoords:[I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->coordOffset:I

    iget v4, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->numCoords:I

    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourEnds:[I

    iget v6, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourOffset:I

    iget v7, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->numContours:I

    invoke-interface/range {v0 .. v7}, Lcom/amazon/system/drawing/ImageFactoryExtended;->createGeneralPath([I[III[III)Lcom/amazon/system/drawing/GeneralPath;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->path:Lcom/amazon/system/drawing/GeneralPath;

    .line 117
    :cond_0
    invoke-interface {v11}, Lcom/amazon/system/drawing/GraphicsExtended;->getTransform()Lcom/amazon/system/drawing/AffineTransform;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledX()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledY()D

    move-result-wide v3

    invoke-interface {v11, v1, v2, v3, v4}, Lcom/amazon/system/drawing/GraphicsExtended;->translate(DD)V

    .line 119
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledWidth()D

    move-result-wide v1

    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledHeight()D

    move-result-wide v3

    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    iget v5, v5, Lcom/amazon/system/drawing/Rectangle;->height:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-interface {v11, v1, v2, v3, v4}, Lcom/amazon/system/drawing/GraphicsExtended;->scale(DD)V

    .line 121
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->path:Lcom/amazon/system/drawing/GeneralPath;

    invoke-interface {v11, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->fill(Lcom/amazon/system/drawing/GeneralPath;)V

    .line 122
    invoke-interface {v11, v0}, Lcom/amazon/system/drawing/GraphicsExtended;->setTransform(Lcom/amazon/system/drawing/AffineTransform;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    .line 157
    :goto_1
    return-object v0

    .line 126
    :cond_1
    iget-object v12, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->freeTypeRaster:Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;

    .line 127
    invoke-virtual {v12}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->reset()V

    .line 130
    invoke-virtual {v12}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->getOutline()Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->xCoords:[I

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->yCoords:[I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->coordOffset:I

    iget v4, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->numCoords:I

    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourEnds:[I

    iget v6, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->contourOffset:I

    iget v7, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->numContours:I

    iget-object v8, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    const/4 v10, 0x2

    move-object v9, p2

    invoke-virtual/range {v0 .. v10}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->setOutline([I[III[IIILcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;I)V

    .line 142
    invoke-virtual {v12}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->getBlankParams()Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;

    move-result-object v1

    .line 143
    iput-object v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->source:Ljava/lang/Object;

    .line 144
    const/16 v0, 0xb

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->flags:I

    .line 145
    sget-object v0, Lcom/amazon/topaz/internal/drawing/VectorImage;->renderer:Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;

    invoke-virtual {v0, v11}, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;->setGraphics(Lcom/amazon/system/drawing/GraphicsExtended;)V

    .line 146
    sget-object v0, Lcom/amazon/topaz/internal/drawing/VectorImage;->renderer:Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;

    iput-object v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->renderer:Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;

    .line 147
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->id:I

    iput v0, v1, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;->cacheID:I

    .line 149
    invoke-virtual {v12, v1}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->render(Lcom/amazon/topaz/internal/drawing/FreeType$TRaster$Params;)I

    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    goto :goto_1
.end method

.method public getAllocSize()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getDestinationRect()Lcom/amazon/system/drawing/Rectangle;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/VectorImage;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    return v0
.end method

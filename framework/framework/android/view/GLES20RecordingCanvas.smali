.class Landroid/view/GLES20RecordingCanvas;
.super Landroid/view/GLES20Canvas;
.source "GLES20RecordingCanvas.java"


# instance fields
.field private final mBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .registers 3
    .parameter "translucent"

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/GLES20Canvas;-><init>(ZZ)V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    .line 44
    return-void
.end method

.method private recordShaderBitmap(Landroid/graphics/Paint;)V
    .registers 5
    .parameter "paint"

    .prologue
    .line 47
    if-eqz p1, :cond_13

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    .line 49
    .local v0, shader:Landroid/graphics/Shader;
    instance-of v1, v0, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_13

    .line 50
    iget-object v1, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    check-cast v0, Landroid/graphics/BitmapShader;

    .end local v0           #shader:Landroid/graphics/Shader;
    iget-object v2, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_13
    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 6
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "paint"

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 5
    .parameter "bitmap"
    .parameter "matrix"
    .parameter "paint"

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 6
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 84
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 6
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 10
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 98
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 100
    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 10
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 105
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 10
    .parameter "bitmap"
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "paint"

    .prologue
    .line 112
    invoke-super/range {p0 .. p8}, Landroid/view/GLES20Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 5
    .parameter "cx"
    .parameter "cy"
    .parameter "radius"
    .parameter "paint"

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 6
    .parameter "startX"
    .parameter "startY"
    .parameter "stopX"
    .parameter "stopY"
    .parameter "paint"

    .prologue
    .line 126
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "offset"
    .parameter "count"
    .parameter "paint"

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 133
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 134
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .registers 3
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 139
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 140
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 3
    .parameter "oval"
    .parameter "paint"

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 145
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 146
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .registers 2
    .parameter "paint"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/view/GLES20Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 151
    invoke-direct {p0, p1}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 6
    .parameter "bitmap"
    .parameter "chunks"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 63
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 3
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 157
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 158
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 163
    invoke-direct {p0, p3}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "offset"
    .parameter "count"
    .parameter "paint"

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 169
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 170
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .registers 3
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 175
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 176
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 4
    .parameter "text"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 187
    invoke-direct {p0, p3}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 188
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 6
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 180
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 181
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 192
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 193
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 194
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 3
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 199
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 200
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 3
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 205
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 206
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 5
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "paint"

    .prologue
    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 211
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 212
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 7
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 222
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 223
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 224
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 5
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 235
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 236
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 7
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 228
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 229
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 230
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 7
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 216
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 217
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 218
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 6
    .parameter "text"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 247
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 248
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 249
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 241
    invoke-super/range {p0 .. p7}, Landroid/view/GLES20Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 242
    invoke-direct {p0, p7}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 243
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .registers 10
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 261
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    .line 262
    invoke-direct {p0, p9}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 263
    return-void
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .registers 10
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 254
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 255
    invoke-direct {p0, p9}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 256
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 13
    .parameter "mode"
    .parameter "vertexCount"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "texs"
    .parameter "texOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "indices"
    .parameter "indexOffset"
    .parameter "indexCount"
    .parameter "paint"

    .prologue
    .line 269
    invoke-super/range {p0 .. p12}, Landroid/view/GLES20Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 271
    invoke-direct {p0, p12}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 272
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/GLES20RecordingCanvas;->setupRenderer(Z)V

    .line 58
    return-void
.end method

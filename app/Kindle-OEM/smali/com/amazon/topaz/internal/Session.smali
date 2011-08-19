.class public final Lcom/amazon/topaz/internal/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/Session$Builder;
    }
.end annotation


# static fields
.field private static final MENU_ICON_WIDTH:I = 0x4

.field private static menu_icon:Lcom/amazon/topaz/internal/book/IImage;


# instance fields
.field public final allowJustify:Z

.field public final backgroundColor:Lcom/amazon/system/drawing/Color;

.field public final height:I

.field public final lineSpacing:I

.field public final showHidden:Z

.field public final showMarkers:Z

.field public final textColor:Lcom/amazon/system/drawing/Color;

.field public final underlineLinks:Z

.field public final width:I


# direct methods
.method constructor <init>(IIZZZZILcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "allowJustify"
    .parameter "showMarkers"
    .parameter "showHidden"
    .parameter "underlineLinks"
    .parameter "lineSpacing"
    .parameter "textColor"
    .parameter "backgroundColor"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/amazon/topaz/internal/Session;->width:I

    .line 140
    iput p2, p0, Lcom/amazon/topaz/internal/Session;->height:I

    .line 141
    iput-boolean p3, p0, Lcom/amazon/topaz/internal/Session;->allowJustify:Z

    .line 142
    iput-boolean p4, p0, Lcom/amazon/topaz/internal/Session;->showMarkers:Z

    .line 143
    iput-boolean p5, p0, Lcom/amazon/topaz/internal/Session;->showHidden:Z

    .line 144
    iput-boolean p6, p0, Lcom/amazon/topaz/internal/Session;->underlineLinks:Z

    .line 145
    iput p7, p0, Lcom/amazon/topaz/internal/Session;->lineSpacing:I

    .line 146
    iput-object p8, p0, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    .line 147
    iput-object p9, p0, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    .line 148
    return-void
.end method

.method public static getIconWidth(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 156
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->ICONNAME_MENU:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x4

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 237
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 272
    :goto_0
    return v2

    .line 239
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 240
    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 242
    goto :goto_0

    .line 243
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/Session;

    move-object v1, v0

    .line 244
    .local v1, other:Lcom/amazon/topaz/internal/Session;
    iget-boolean v2, p0, Lcom/amazon/topaz/internal/Session;->allowJustify:Z

    iget-boolean v3, v1, Lcom/amazon/topaz/internal/Session;->allowJustify:Z

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 245
    goto :goto_0

    .line 246
    :cond_3
    iget-object v2, p0, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    if-nez v2, :cond_4

    .line 248
    iget-object v2, v1, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    if-eqz v2, :cond_5

    move v2, v4

    .line 249
    goto :goto_0

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    iget-object v3, v1, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v2, v3}, Lcom/amazon/system/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 252
    goto :goto_0

    .line 253
    :cond_5
    iget v2, p0, Lcom/amazon/topaz/internal/Session;->height:I

    iget v3, v1, Lcom/amazon/topaz/internal/Session;->height:I

    if-eq v2, v3, :cond_6

    move v2, v4

    .line 254
    goto :goto_0

    .line 255
    :cond_6
    iget-boolean v2, p0, Lcom/amazon/topaz/internal/Session;->showHidden:Z

    iget-boolean v3, v1, Lcom/amazon/topaz/internal/Session;->showHidden:Z

    if-eq v2, v3, :cond_7

    move v2, v4

    .line 256
    goto :goto_0

    .line 257
    :cond_7
    iget-boolean v2, p0, Lcom/amazon/topaz/internal/Session;->showMarkers:Z

    iget-boolean v3, v1, Lcom/amazon/topaz/internal/Session;->showMarkers:Z

    if-eq v2, v3, :cond_8

    move v2, v4

    .line 258
    goto :goto_0

    .line 259
    :cond_8
    iget v2, p0, Lcom/amazon/topaz/internal/Session;->lineSpacing:I

    iget v3, v1, Lcom/amazon/topaz/internal/Session;->lineSpacing:I

    if-eq v2, v3, :cond_9

    move v2, v4

    .line 260
    goto :goto_0

    .line 261
    :cond_9
    iget-object v2, p0, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    if-nez v2, :cond_a

    .line 263
    iget-object v2, v1, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    if-eqz v2, :cond_b

    move v2, v4

    .line 264
    goto :goto_0

    .line 266
    :cond_a
    iget-object v2, p0, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    iget-object v3, v1, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v2, v3}, Lcom/amazon/system/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    .line 267
    goto :goto_0

    .line 268
    :cond_b
    iget-boolean v2, p0, Lcom/amazon/topaz/internal/Session;->underlineLinks:Z

    iget-boolean v3, v1, Lcom/amazon/topaz/internal/Session;->underlineLinks:Z

    if-eq v2, v3, :cond_c

    move v2, v4

    .line 269
    goto :goto_0

    .line 270
    :cond_c
    iget v2, p0, Lcom/amazon/topaz/internal/Session;->width:I

    iget v3, v1, Lcom/amazon/topaz/internal/Session;->width:I

    if-eq v2, v3, :cond_d

    move v2, v4

    .line 271
    goto :goto_0

    :cond_d
    move v2, v5

    .line 272
    goto :goto_0
.end method

.method public getIcon(Ljava/lang/String;III)Lcom/amazon/topaz/internal/book/Drawable;
    .locals 18
    .parameter "name"
    .parameter "canvasWidth"
    .parameter "pageNum"
    .parameter "id"

    .prologue
    .line 167
    sget-object v13, Lcom/amazon/topaz/internal/TopazStrings;->ICONNAME_MENU:Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 168
    sget-object v13, Lcom/amazon/topaz/internal/Session;->menu_icon:Lcom/amazon/topaz/internal/book/IImage;

    if-nez v13, :cond_0

    .line 171
    invoke-static {}, Lcom/amazon/topaz/Viewer;->getImageFactory()Lcom/amazon/system/drawing/ImageFactoryExtended;

    move-result-object v13

    const/4 v14, 0x4

    const/4 v15, 0x7

    const/16 v16, 0xc

    invoke-interface/range {v13 .. v16}, Lcom/amazon/system/drawing/ImageFactoryExtended;->getBufferedImage(III)Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v5

    .line 173
    .local v5, bi:Lcom/amazon/system/drawing/BufferedImageExtended;
    invoke-interface {v5}, Lcom/amazon/system/drawing/BufferedImageExtended;->createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v12

    .line 174
    .local v12, tpzGraphics:Lcom/amazon/system/drawing/GraphicsExtended;
    invoke-static {}, Lcom/amazon/topaz/Viewer;->getImageFactory()Lcom/amazon/system/drawing/ImageFactoryExtended;

    move-result-object v13

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Lcom/amazon/system/drawing/ImageFactoryExtended;->createPolygon(I)Lcom/amazon/system/drawing/Polygon;

    move-result-object v10

    .line 175
    .local v10, poly:Lcom/amazon/system/drawing/Polygon;
    invoke-interface {v5}, Lcom/amazon/system/drawing/BufferedImageExtended;->getHeight()I

    move-result v13

    const/4 v14, 0x1

    sub-int v6, v13, v14

    .line 176
    .local v6, bottom:I
    div-int/lit8 v7, v6, 0x2

    .line 177
    .local v7, halfBottom:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v10, v13, v14}, Lcom/amazon/system/drawing/Polygon;->addPoint(II)V

    .line 178
    const/4 v13, 0x3

    invoke-interface {v10, v13, v7}, Lcom/amazon/system/drawing/Polygon;->addPoint(II)V

    .line 179
    const/4 v13, 0x0

    invoke-interface {v10, v13, v6}, Lcom/amazon/system/drawing/Polygon;->addPoint(II)V

    .line 180
    sget-object v13, Lcom/amazon/system/drawing/Color;->white:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v13}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 181
    new-instance v13, Lcom/amazon/system/drawing/Rectangle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v5}, Lcom/amazon/system/drawing/BufferedImageExtended;->getWidth()I

    move-result v16

    invoke-interface {v5}, Lcom/amazon/system/drawing/BufferedImageExtended;->getHeight()I

    move-result v17

    invoke-direct/range {v13 .. v17}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    invoke-interface {v12, v13}, Lcom/amazon/system/drawing/GraphicsExtended;->fill(Lcom/amazon/system/drawing/Rectangle;)V

    .line 182
    sget-object v13, Lcom/amazon/system/drawing/Color;->black:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v13}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 183
    invoke-interface {v12, v10}, Lcom/amazon/system/drawing/GraphicsExtended;->fill(Lcom/amazon/system/drawing/Polygon;)V

    .line 184
    new-instance v13, Lcom/amazon/topaz/internal/drawing/RasterImage;

    invoke-direct {v13, v5}, Lcom/amazon/topaz/internal/drawing/RasterImage;-><init>(Lcom/amazon/system/drawing/BufferedImageExtended;)V

    sput-object v13, Lcom/amazon/topaz/internal/Session;->menu_icon:Lcom/amazon/topaz/internal/book/IImage;

    .line 187
    .end local v5           #bi:Lcom/amazon/system/drawing/BufferedImageExtended;
    .end local v6           #bottom:I
    .end local v7           #halfBottom:I
    .end local v10           #poly:Lcom/amazon/system/drawing/Polygon;
    .end local v12           #tpzGraphics:Lcom/amazon/system/drawing/GraphicsExtended;
    :cond_0
    sget-object v8, Lcom/amazon/topaz/internal/Session;->menu_icon:Lcom/amazon/topaz/internal/book/IImage;

    .line 188
    .local v8, image:Lcom/amazon/topaz/internal/book/IImage;
    new-instance v11, Lcom/amazon/system/drawing/Rectangle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v8}, Lcom/amazon/topaz/internal/book/IImage;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/Session;->pixelsToTwips(II)I

    move-result v15

    invoke-interface {v8}, Lcom/amazon/topaz/internal/book/IImage;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/Session;->pixelsToTwips(II)I

    move-result v16

    move-object v0, v11

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 193
    .local v11, size:Lcom/amazon/system/drawing/Rectangle;
    new-instance v9, Lcom/amazon/topaz/internal/Session$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/Session$1;-><init>(Lcom/amazon/topaz/internal/Session;Lcom/amazon/topaz/internal/book/IImage;)V

    .line 201
    .local v9, loader:Lcom/amazon/topaz/internal/book/Image$ImageLoader;
    new-instance v13, Lcom/amazon/topaz/internal/book/Image;

    move-object v0, v13

    move/from16 v1, p3

    move/from16 v2, p4

    move-object v3, v11

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/topaz/internal/book/Image;-><init>(IILcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/book/Image$ImageLoader;)V

    .line 204
    .end local v8           #image:Lcom/amazon/topaz/internal/book/IImage;
    .end local v9           #loader:Lcom/amazon/topaz/internal/book/Image$ImageLoader;
    .end local v11           #size:Lcom/amazon/system/drawing/Rectangle;
    :goto_0
    return-object v13

    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public getMarkerIcon(I)Lcom/amazon/topaz/internal/book/Drawable;
    .locals 2
    .parameter "canvasReflowWidth"

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/Session;->showMarkers:Z

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->ICONNAME_MENU:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/amazon/topaz/internal/Session;->getIcon(Ljava/lang/String;III)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 221
    const/4 v0, 0x1

    .line 223
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v0, p0, Lcom/amazon/topaz/internal/Session;->allowJustify:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 224
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    if-nez v1, :cond_1

    move v1, v4

    :goto_1
    add-int/2addr v0, v1

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/topaz/internal/Session;->height:I

    add-int/2addr v0, v1

    .line 226
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/topaz/internal/Session;->showHidden:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    .line 227
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/topaz/internal/Session;->showMarkers:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    .line 228
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/topaz/internal/Session;->lineSpacing:I

    add-int/2addr v0, v1

    .line 229
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    if-nez v1, :cond_4

    move v1, v4

    :goto_4
    add-int/2addr v0, v1

    .line 230
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/topaz/internal/Session;->underlineLinks:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    .line 231
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/topaz/internal/Session;->width:I

    add-int/2addr v0, v1

    .line 232
    return v0

    :cond_0
    move v0, v3

    .line 223
    goto :goto_0

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v1}, Lcom/amazon/system/drawing/Color;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 226
    goto :goto_2

    :cond_3
    move v1, v3

    .line 227
    goto :goto_3

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v1}, Lcom/amazon/system/drawing/Color;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v3

    .line 230
    goto :goto_5
.end method

.method public pixelsToTwips(II)I
    .locals 2
    .parameter "pixels"
    .parameter "canvasWidth"

    .prologue
    .line 151
    mul-int v0, p1, p2

    iget v1, p0, Lcom/amazon/topaz/internal/Session;->width:I

    div-int/2addr v0, v1

    return v0
.end method

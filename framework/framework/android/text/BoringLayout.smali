.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# static fields
.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final sTemp:Landroid/text/TextPaint;


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 386
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .registers 19
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 124
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 126
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 130
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 23
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 149
    if-eqz p9, :cond_c

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_2a

    .line 150
    :cond_c
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 152
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 153
    const/4 v11, 0x1

    .line 165
    .local v11, trust:Z
    :goto_15
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 167
    return-void

    .line 155
    .end local v11           #trust:Z
    :cond_2a
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 161
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 162
    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_15
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .registers 3
    .parameter "text"
    .parameter "paint"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 13
    .parameter "text"
    .parameter "paint"
    .parameter "metrics"

    .prologue
    .line 239
    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v7

    .line 240
    .local v7, temp:[C
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 241
    .local v5, len:I
    const/4 v2, 0x1

    .line 244
    .local v2, boring:Z
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    :goto_d
    if-ge v4, v5, :cond_7e

    .line 245
    add-int/lit16 v1, v4, 0x1f4

    .line 247
    .local v1, j:I
    if-le v1, v5, :cond_14

    .line 248
    move v1, v5

    .line 250
    :cond_14
    const/4 v3, 0x0

    invoke-static {p0, v4, v1, v7, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 252
    sub-int v6, v1, v4

    .line 254
    .local v6, n:I
    const/4 v1, 0x0

    .local v1, a:I
    :goto_1b
    if-ge v1, v6, :cond_78

    .line 255
    aget-char v3, v7, v1

    .line 257
    .local v3, c:C
    const/16 v8, 0xa

    if-eq v3, v8, :cond_2b

    const/16 v8, 0x9

    if-eq v3, v8, :cond_2b

    const/16 v8, 0x590

    if-lt v3, v8, :cond_75

    .line 258
    :cond_2b
    const/4 v1, 0x0

    .line 264
    .end local v2           #boring:Z
    .end local v3           #c:C
    .end local v6           #n:I
    .local v1, boring:Z
    :goto_2c
    invoke-static {v7}, Landroid/text/TextUtils;->recycle([C)V

    .line 266
    if-eqz v1, :cond_48

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_48

    .line 267
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v2, v0

    .line 268
    .local v2, sp:Landroid/text/Spanned;
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .end local v4           #i:I
    const-class v5, Landroid/text/style/ParagraphStyle;

    .end local v5           #len:I
    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 269
    .local v2, styles:[Ljava/lang/Object;
    array-length v2, v2

    .end local v2           #styles:[Ljava/lang/Object;
    if-lez v2, :cond_48

    .line 270
    const/4 v1, 0x0

    .line 274
    :cond_48
    if-eqz v1, :cond_7c

    .line 275
    move-object p2, p2

    .line 276
    .local p2, fm:Landroid/text/BoringLayout$Metrics;
    if-nez p2, :cond_52

    .line 277
    new-instance p2, Landroid/text/BoringLayout$Metrics;

    .end local p2           #fm:Landroid/text/BoringLayout$Metrics;
    invoke-direct {p2}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 280
    .restart local p2       #fm:Landroid/text/BoringLayout$Metrics;
    :cond_52
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 281
    .local v1, line:Landroid/text/TextLine;
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .end local v7           #temp:[C
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 283
    invoke-virtual {v1, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0
    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    iput p0, p2, Landroid/text/BoringLayout$Metrics;->width:I

    .line 284
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-object p0, p2

    .line 288
    .end local v1           #line:Landroid/text/TextLine;
    .end local p2           #fm:Landroid/text/BoringLayout$Metrics;
    :goto_74
    return-object p0

    .line 254
    .local v1, a:I
    .local v2, boring:Z
    .restart local v3       #c:C
    .restart local v4       #i:I
    .restart local v5       #len:I
    .restart local v6       #n:I
    .restart local v7       #temp:[C
    .restart local p0
    .local p2, metrics:Landroid/text/BoringLayout$Metrics;
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 244
    .end local v3           #c:C
    :cond_78
    add-int/lit16 v1, v4, 0x1f4

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    goto :goto_d

    .line 288
    .end local v2           #boring:Z
    .end local v4           #i:I
    .end local v5           #len:I
    .end local v6           #n:I
    .local v1, boring:Z
    :cond_7c
    const/4 p0, 0x0

    goto :goto_74

    .end local v1           #boring:Z
    .restart local v2       #boring:Z
    .restart local v4       #i:I
    .restart local v5       #len:I
    :cond_7e
    move v1, v2

    .end local v2           #boring:Z
    .restart local v1       #boring:Z
    goto :goto_2c
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .registers 17
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 44
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .registers 21
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 55
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 9
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffset"

    .prologue
    .line 361
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_15

    if-nez p2, :cond_15

    .line 362
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 366
    :goto_14
    return-void

    .line 364
    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_14
.end method

.method public ellipsized(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 372
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 373
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 374
    return-void
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 339
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 344
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 349
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 3
    .parameter "line"

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 308
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .parameter "line"

    .prologue
    .line 331
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineMax(I)F
    .registers 3
    .parameter "line"

    .prologue
    .line 327
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineStart(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 312
    if-nez p1, :cond_4

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_3
.end method

.method public getLineTop(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 301
    if-nez p1, :cond_4

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_3
    return v0

    :cond_4
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    goto :goto_3
.end method

.method public getParagraphDirection(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 335
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .registers 21
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "trustWidth"

    .prologue
    .line 177
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_65

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p4, v2, :cond_65

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 183
    :goto_e
    iput-object p2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 185
    if-eqz p8, :cond_69

    .line 186
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move v2, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->top:I

    move v3, v0

    sub-int v10, v2, v3

    .line 191
    .local v10, spacing:I
    :goto_1e
    const/high16 v2, 0x3f80

    cmpl-float v2, p5, v2

    if-nez v2, :cond_29

    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-eqz v2, :cond_32

    .line 192
    :cond_29
    int-to-float v2, v10

    mul-float v2, v2, p5

    add-float v2, v2, p6

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v10, v2

    .line 195
    :cond_32
    iput v10, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 197
    if-eqz p8, :cond_76

    .line 198
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->top:I

    move v2, v0

    add-int/2addr v2, v10

    iput v2, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 203
    :goto_3e
    if-eqz p9, :cond_7f

    .line 204
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    int-to-float v2, v2

    iput v2, p0, Landroid/text/BoringLayout;->mMax:F

    .line 218
    :goto_48
    if-eqz p8, :cond_64

    .line 219
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->top:I

    move v2, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    move v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 220
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move v2, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    move v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 222
    :cond_64
    return-void

    .line 180
    .end local v10           #spacing:I
    :cond_65
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_e

    .line 188
    :cond_69
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    move v2, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    move v3, v0

    sub-int v10, v2, v3

    .restart local v10       #spacing:I
    goto :goto_1e

    .line 200
    :cond_76
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    move v2, v0

    add-int/2addr v2, v10

    iput v2, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_3e

    .line 211
    :cond_7f
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 212
    .local v1, line:Landroid/text/TextLine;
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/text/BoringLayout;->mMax:F

    .line 215
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_48
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .registers 19
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 73
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 77
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 79
    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .registers 23
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 96
    if-eqz p9, :cond_9

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_2a

    .line 97
    :cond_9
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 100
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 102
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 103
    const/4 v11, 0x1

    .line 114
    .local v11, trust:Z
    :goto_15
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 116
    return-object p0

    .line 105
    .end local v11           #trust:Z
    :cond_2a
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 110
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 111
    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_15
.end method

.class public Lcom/mobipocket/common/library/reader/Decoration;
.super Ljava/lang/Object;
.source "Decoration.java"


# static fields
.field public static final DECORATION_VISUAL_HIGHLIGHT:I = 0x2

.field public static final DECORATION_VISUAL_ICON:I = 0x1

.field public static final DRAW_ABOVE_TEXT:I = 0x2

.field public static final DRAW_BELOW_TEXT:I = 0x1

.field public static final DRAW_WITH_TEXT:I = 0x3

.field private static final NOTE_ICON_MIN_SIZE:I = 0xb


# instance fields
.field private final beginPos:I

.field private final endPos:I

.field private final highlightColor:I

.field private final iconColor:I

.field private final iconSelectedColor:I

.field private final noteFont:Lcom/amazon/system/drawing/Font;

.field private number:I

.field private final pageObjects:Ljava/util/Vector;

.field private final visualEffect:I


# direct methods
.method public constructor <init>(IILjava/util/Vector;IIIILcom/amazon/system/drawing/Font;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->number:I

    .line 83
    iput p1, p0, Lcom/mobipocket/common/library/reader/Decoration;->beginPos:I

    .line 84
    iput p2, p0, Lcom/mobipocket/common/library/reader/Decoration;->endPos:I

    .line 85
    iput-object p3, p0, Lcom/mobipocket/common/library/reader/Decoration;->pageObjects:Ljava/util/Vector;

    .line 86
    iput p4, p0, Lcom/mobipocket/common/library/reader/Decoration;->visualEffect:I

    .line 87
    iput p5, p0, Lcom/mobipocket/common/library/reader/Decoration;->highlightColor:I

    .line 88
    iput p6, p0, Lcom/mobipocket/common/library/reader/Decoration;->iconColor:I

    .line 89
    iput p7, p0, Lcom/mobipocket/common/library/reader/Decoration;->iconSelectedColor:I

    .line 90
    iput-object p8, p0, Lcom/mobipocket/common/library/reader/Decoration;->noteFont:Lcom/amazon/system/drawing/Font;

    .line 92
    return-void
.end method

.method private drawNoteIcon(Lcom/amazon/system/drawing/Graphics;Lcom/amazon/system/drawing/Rectangle;ZI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-interface {p1}, Lcom/amazon/system/drawing/Graphics;->getColor()I

    move-result v7

    .line 195
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->noteFont:Lcom/amazon/system/drawing/Font;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/Decoration;->noteFont:Lcom/amazon/system/drawing/Font;

    const/16 v3, 0xb

    invoke-interface {v1, v3}, Lcom/amazon/system/drawing/Font;->derive(I)Lcom/amazon/system/drawing/Font;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v3, v2, v4}, Lcom/amazon/system/drawing/Font;->charsWidth([CII)I

    move-result v4

    .line 203
    invoke-interface {p1, v1}, Lcom/amazon/system/drawing/Graphics;->setFont(Lcom/amazon/system/drawing/Font;)V

    .line 205
    invoke-direct {p0, p2, p4}, Lcom/mobipocket/common/library/reader/Decoration;->getNoteIconRectangle(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v6

    .line 208
    if-eqz p3, :cond_1

    iget v1, p0, Lcom/mobipocket/common/library/reader/Decoration;->iconSelectedColor:I

    :goto_1
    invoke-interface {p1, v1}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 209
    iget v1, v6, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, v6, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, v6, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v8, v6, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {p1, v1, v3, v5, v8}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    .line 212
    if-eqz p3, :cond_2

    const v1, 0xffffff

    :goto_2
    invoke-interface {p1, v1}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v0, v6, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, v6, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iget v5, v6, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v6, v6, Lcom/amazon/system/drawing/Rectangle;->width:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/amazon/system/drawing/Graphics;->drawText([CIIIII)V

    .line 219
    invoke-interface {p1, v7}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    goto :goto_0

    .line 208
    :cond_1
    iget v1, p0, Lcom/mobipocket/common/library/reader/Decoration;->iconColor:I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 212
    goto :goto_2
.end method

.method private getNoteIconRectangle(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;
    .locals 10
    .parameter "textRectangle"
    .parameter "displayNumber"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    .line 279
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v1, v8, v8, v8, v8}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 280
    .local v1, iconRectangle:Lcom/amazon/system/drawing/Rectangle;
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/Decoration;->noteFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {v6, v9}, Lcom/amazon/system/drawing/Font;->derive(I)Lcom/amazon/system/drawing/Font;

    move-result-object v3

    .line 281
    .local v3, newFont:Lcom/amazon/system/drawing/Font;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, num:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-interface {v3, v6, v8, v7}, Lcom/amazon/system/drawing/Font;->charsWidth([CII)I

    move-result v5

    .line 283
    .local v5, numWidth:I
    add-int/lit8 v2, v5, 0x1

    .line 284
    .local v2, iconWidth:I
    if-ge v2, v9, :cond_0

    .line 286
    const/16 v2, 0xb

    .line 289
    :cond_0
    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v0

    .line 290
    .local v0, iconHeight:I
    if-ge v0, v9, :cond_1

    .line 292
    const/16 v0, 0xb

    .line 295
    :cond_1
    iget v6, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v7, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 296
    iget v6, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v6, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 297
    iput v2, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 298
    iput v0, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 299
    return-object v1
.end method


# virtual methods
.method public draw(Lcom/amazon/system/drawing/Graphics;IIZI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 109
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->pageObjects:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->pageObjects:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/Decoration;->beginPos:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/Decoration;->endPos:I

    invoke-static {v0, v1, v2, p2, p3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getCorrespondingRectangles(Ljava/util/Vector;IIII)Ljava/util/Vector;

    move-result-object v6

    .line 117
    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    goto :goto_0

    .line 124
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->visualEffect:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v9, :cond_4

    .line 127
    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    .line 133
    if-eq p5, v3, :cond_3

    if-ne p5, v8, :cond_4

    .line 135
    :cond_3
    iget v1, p0, Lcom/mobipocket/common/library/reader/Decoration;->number:I

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/mobipocket/common/library/reader/Decoration;->drawNoteIcon(Lcom/amazon/system/drawing/Graphics;Lcom/amazon/system/drawing/Rectangle;ZI)V

    .line 140
    :cond_4
    iget v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->visualEffect:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_0

    .line 143
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 148
    if-eq p5, v9, :cond_5

    if-ne p5, v8, :cond_6

    .line 150
    :cond_5
    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    .line 151
    if-nez p4, :cond_7

    .line 154
    invoke-interface {p1}, Lcom/amazon/system/drawing/Graphics;->getColor()I

    move-result v1

    .line 155
    iget v2, p0, Lcom/mobipocket/common/library/reader/Decoration;->highlightColor:I

    invoke-interface {p1, v2}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 156
    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {p1, v2, v3, v4, v0}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    .line 157
    invoke-interface {p1, v1}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 161
    if-ne p5, v8, :cond_6

    .line 163
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->pageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/Decoration;->beginPos:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/Decoration;->endPos:I

    add-int/lit8 v5, v1, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawText(Ljava/util/Vector;Lcom/amazon/system/drawing/Graphics;IIII)V

    .line 143
    :cond_6
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 173
    :cond_7
    iget v1, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/amazon/system/drawing/Graphics;->invert(IIII)V

    goto :goto_2
.end method

.method public getDecorationRectangles(II)Ljava/util/Vector;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 235
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 238
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->pageObjects:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/Decoration;->beginPos:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/Decoration;->endPos:I

    invoke-static {v0, v2, v3, p1, p2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getCorrespondingRectangles(Ljava/util/Vector;IIII)Ljava/util/Vector;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-object v0, v1

    .line 268
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->visualEffect:I

    and-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 250
    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    .line 251
    iget v3, p0, Lcom/mobipocket/common/library/reader/Decoration;->number:I

    invoke-direct {p0, v0, v3}, Lcom/mobipocket/common/library/reader/Decoration;->getNoteIconRectangle(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 252
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    iget v4, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v6, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 260
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/Decoration;->visualEffect:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 262
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 264
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 268
    goto :goto_0
.end method

.method public setDisplayableNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 185
    iput p1, p0, Lcom/mobipocket/common/library/reader/Decoration;->number:I

    .line 186
    return-void
.end method

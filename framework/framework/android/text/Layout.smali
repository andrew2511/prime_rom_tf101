.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 45
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 48
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 53
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_46

    .line 54
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 55
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 1748
    :goto_26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 1774
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_4c

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1776
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_54

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 57
    :cond_46
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 58
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_26

    .line 1774
    nop

    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x3t
    .end array-data

    .line 1776
    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x7t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1745
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 116
    if-gez p3, :cond_29

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_29
    if-eqz p2, :cond_2f

    .line 124
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 125
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 128
    :cond_2f
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 129
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 130
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 131
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 132
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 133
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 134
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 135
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .registers 25
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 1219
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    .line 1220
    .local v15, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 1221
    .local v14, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 1223
    .local v10, dirs:Landroid/text/Layout$Directions;
    if-le v14, v15, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v4, v0

    const/4 v5, 0x1

    sub-int v5, v14, v5

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_20

    .line 1224
    add-int/lit8 v14, v14, -0x1

    .line 1226
    :cond_20
    const/4 v13, 0x0

    .local v13, i:I
    :goto_21
    iget-object v4, v10, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v4, v4

    if-ge v13, v4, :cond_87

    .line 1227
    iget-object v4, v10, Landroid/text/Layout$Directions;->mDirections:[I

    aget v4, v4, v13

    add-int v12, v15, v4

    .line 1228
    .local v12, here:I
    iget-object v4, v10, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v13, 0x1

    aget v4, v4, v5

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    add-int v17, v12, v4

    .line 1230
    .local v17, there:I
    move/from16 v0, v17

    move v1, v14

    if-le v0, v1, :cond_3f

    .line 1231
    move/from16 v17, v14

    .line 1233
    :cond_3f
    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_84

    move/from16 v0, p3

    move v1, v12

    if-lt v0, v1, :cond_84

    .line 1234
    move/from16 v0, p2

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1235
    .local v16, st:I
    move/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1237
    .local v11, en:I
    move/from16 v0, v16

    move v1, v11

    if-eq v0, v1, :cond_84

    .line 1238
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v4

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v5

    .line 1239
    .local v5, h1:F
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v4

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v7

    .line 1241
    .local v7, h2:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1226
    .end local v5           #h1:F
    .end local v7           #h2:F
    .end local v11           #en:I
    .end local v16           #st:I
    :cond_84
    add-int/lit8 v13, v13, 0x2

    goto :goto_21

    .line 1245
    .end local v12           #here:I
    .end local v17           #there:I
    :cond_87
    return-void
.end method

.method private ellipsize(III[CI)V
    .registers 13
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 1580
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1582
    .local v2, ellipsisCount:I
    if-nez v2, :cond_7

    .line 1604
    :cond_6
    return-void

    .line 1586
    :cond_7
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1587
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1589
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_10
    add-int v6, v3, v2

    if-ge v4, v6, :cond_6

    .line 1592
    if-ne v4, v3, :cond_26

    .line 1593
    const/16 v1, 0x2026

    .line 1598
    .local v1, c:C
    :goto_18
    add-int v0, v4, v5

    .line 1600
    .local v0, a:I
    if-lt v0, p1, :cond_23

    if-ge v0, p2, :cond_23

    .line 1601
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1589
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1595
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_26
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_18
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, need:F
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 82
    .local v4, workPaint:Landroid/text/TextPaint;
    move v0, p1

    .local v0, i:I
    :goto_7
    if-gt v0, p2, :cond_1f

    .line 83
    const/16 v5, 0xa

    invoke-static {p0, v5, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 85
    .local v2, next:I
    if-gez v2, :cond_12

    .line 86
    move v2, p2

    .line 89
    :cond_12
    invoke-static {p3, v4, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 91
    .local v3, w:F
    cmpl-float v5, v3, v1

    if-lez v5, :cond_1b

    .line 92
    move v1, v3

    .line 94
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 82
    move v0, v2

    goto :goto_7

    .line 97
    .end local v2           #next:I
    .end local v3           #w:F
    :cond_1f
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZ)F
    .registers 5
    .parameter "offset"
    .parameter "trailing"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 702
    .local v0, line:I
    invoke-direct {p0, p1, p2, v0}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZI)F
    .registers 21
    .parameter "offset"
    .parameter "trailing"
    .parameter "line"

    .prologue
    .line 706
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 707
    .local v7, start:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 708
    .local v8, end:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    .line 709
    .local v9, dir:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v11

    .line 710
    .local v11, hasTabOrEmoji:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 712
    .local v10, directions:Landroid/text/Layout$Directions;
    const/4 v12, 0x0

    .line 713
    .local v12, tabStops:Landroid/text/Layout$TabStops;
    if-eqz v11, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    instance-of v5, v5, Landroid/text/Spanned;

    if-eqz v5, :cond_4d

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v7, v8, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/TabStopSpan;

    .line 717
    .local v15, tabs:[Landroid/text/style/TabStopSpan;
    array-length v5, v15

    if-lez v5, :cond_4d

    .line 718
    new-instance v12, Landroid/text/Layout$TabStops;

    .end local v12           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    invoke-direct {v12, v5, v15}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 722
    .end local v15           #tabs:[Landroid/text/style/TabStopSpan;
    .restart local v12       #tabStops:Landroid/text/Layout$TabStops;
    :cond_4d
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v4

    .line 723
    .local v4, tl:Landroid/text/TextLine;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 724
    sub-int v5, p1, v7

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move/from16 v2, p2

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v16

    .line 725
    .local v16, wid:F
    invoke-static {v4}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 727
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v13

    .line 728
    .local v13, left:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v14

    .line 730
    .local v14, right:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v5

    int-to-float v5, v5

    add-float v5, v5, v16

    return v5
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .registers 14
    .parameter "line"
    .parameter "tabStops"
    .parameter "full"

    .prologue
    .line 847
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 848
    .local v3, start:I
    if-eqz p3, :cond_2c

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    move v4, v1

    .line 849
    .local v4, end:I
    :goto_b
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 850
    .local v7, hasTabsOrEmoji:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 851
    .local v6, directions:Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 853
    .local v5, dir:I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 854
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 855
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 856
    .local v9, width:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 857
    return v9

    .line 848
    .end local v0           #tl:Landroid/text/TextLine;
    .end local v4           #end:I
    .end local v5           #dir:I
    .end local v6           #directions:Landroid/text/Layout$Directions;
    .end local v7           #hasTabsOrEmoji:Z
    .end local v9           #width:F
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    move v4, v1

    goto :goto_b
.end method

.method private getLineExtent(IZ)F
    .registers 14
    .parameter "line"
    .parameter "full"

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 816
    .local v3, start:I
    if-eqz p2, :cond_4a

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    move v4, v1

    .line 818
    .local v4, end:I
    :goto_b
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 819
    .local v7, hasTabsOrEmoji:Z
    const/4 v8, 0x0

    .line 820
    .local v8, tabStops:Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_2e

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_2e

    .line 823
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 824
    .local v9, tabs:[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_2e

    .line 825
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 828
    .end local v9           #tabs:[Landroid/text/style/TabStopSpan;
    .restart local v8       #tabStops:Landroid/text/Layout$TabStops;
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 829
    .local v6, directions:Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 831
    .local v5, dir:I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 832
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 833
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 834
    .local v10, width:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 835
    return v10

    .line 816
    .end local v0           #tl:Landroid/text/TextLine;
    .end local v4           #end:I
    .end local v5           #dir:I
    .end local v6           #directions:Landroid/text/Layout$Directions;
    .end local v7           #hasTabsOrEmoji:Z
    .end local v8           #tabStops:Landroid/text/Layout$TabStops;
    .end local v10           #width:F
    :cond_4a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    move v4, v1

    goto :goto_b
.end method

.method private getLineStartPos(III)I
    .registers 16
    .parameter "line"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v11, 0x1

    .line 410
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 411
    .local v0, align:Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 414
    .local v1, dir:I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_13

    .line 415
    if-ne v1, v11, :cond_11

    .line 416
    move v8, p2

    .line 444
    .local v8, x:I
    :goto_10
    return v8

    .line 418
    .end local v8           #x:I
    :cond_11
    move v8, p3

    .restart local v8       #x:I
    goto :goto_10

    .line 421
    .end local v8           #x:I
    :cond_13
    const/4 v7, 0x0

    .line 422
    .local v7, tabStops:Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_42

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 423
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 424
    .local v4, spanned:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 425
    .local v5, start:I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 427
    .local v3, spanEnd:I
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 428
    .local v6, tabSpans:[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_42

    .line 429
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 432
    .end local v3           #spanEnd:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #start:I
    .end local v6           #tabSpans:[Landroid/text/style/TabStopSpan;
    .restart local v7       #tabStops:Landroid/text/Layout$TabStops;
    :cond_42
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 433
    .local v2, max:I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_54

    .line 434
    if-ne v1, v11, :cond_51

    .line 435
    sub-int v8, p3, v2

    .restart local v8       #x:I
    goto :goto_10

    .line 437
    .end local v8           #x:I
    :cond_51
    sub-int v8, p2, v2

    .restart local v8       #x:I
    goto :goto_10

    .line 440
    .end local v8           #x:I
    :cond_54
    and-int/lit8 v2, v2, -0x2

    .line 441
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    shr-int/lit8 v8, v9, 0x1

    .restart local v8       #x:I
    goto :goto_10
.end method

.method private getLineVisibleEnd(III)I
    .registers 8
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 999
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1001
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_e

    move v2, p3

    .line 1018
    :goto_b
    return v2

    .line 1005
    .local v0, ch:C
    :cond_c
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_e
    if-le p3, p2, :cond_25

    .line 1006
    sub-int v2, p3, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1008
    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1d

    .line 1009
    sub-int v2, p3, v3

    goto :goto_b

    .line 1012
    :cond_1d
    const/16 v2, 0x20

    if-eq v0, v2, :cond_c

    const/16 v2, 0x9

    if-eq v0, v2, :cond_c

    .end local v0           #ch:C
    :cond_25
    move v2, p3

    .line 1018
    goto :goto_b
.end method

.method private getOffsetAtStartOf(I)I
    .registers 12
    .parameter "offset"

    .prologue
    .line 1108
    if-nez p1, :cond_4

    .line 1109
    const/4 v8, 0x0

    .line 1134
    :goto_3
    return v8

    .line 1111
    :cond_4
    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1112
    .local v7, text:Ljava/lang/CharSequence;
    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1114
    .local v1, c:C
    const v8, 0xdc00

    if-lt v1, v8, :cond_27

    const v8, 0xdfff

    if-gt v1, v8, :cond_27

    .line 1115
    const/4 v8, 0x1

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1117
    .local v2, c1:C
    const v8, 0xd800

    if-lt v2, v8, :cond_27

    const v8, 0xdbff

    if-gt v2, v8, :cond_27

    .line 1118
    add-int/lit8 p1, p1, -0x1

    .line 1121
    .end local v2           #c1:C
    :cond_27
    iget-boolean v8, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v8, :cond_57

    .line 1122
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 1125
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_38
    array-length v8, v5

    if-ge v4, v8, :cond_57

    .line 1126
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1127
    .local v6, start:I
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1129
    .local v3, end:I
    if-ge v6, p1, :cond_54

    if-le v3, p1, :cond_54

    .line 1130
    move p1, v6

    .line 1125
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    :cond_57
    move v8, p1

    .line 1134
    goto :goto_3
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .registers 20
    .parameter "caret"
    .parameter "toLeft"

    .prologue
    .line 1054
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v14

    .line 1055
    .local v14, line:I
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 1056
    .local v6, lineStart:I
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 1057
    .local v7, lineEnd:I
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .line 1059
    .local v8, lineDir:I
    const/4 v15, 0x0

    .line 1060
    .local v15, lineChanged:Z
    const/4 v4, -0x1

    if-ne v8, v4, :cond_87

    const/4 v4, 0x1

    :goto_1e
    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_89

    const/4 v4, 0x1

    move v12, v4

    .line 1062
    .local v12, advance:Z
    :goto_25
    if-eqz v12, :cond_8f

    .line 1063
    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_37

    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v14, v4, :cond_8c

    .line 1065
    const/4 v15, 0x1

    .line 1066
    add-int/lit8 v14, v14, 0x1

    .line 1082
    :cond_37
    :goto_37
    if-eqz v15, :cond_5a

    .line 1083
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 1084
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 1085
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v16

    .line 1086
    .local v16, newDir:I
    move/from16 v0, v16

    move v1, v8

    if-eq v0, v1, :cond_5a

    .line 1090
    if-nez p2, :cond_9d

    const/4 v4, 0x1

    move/from16 p2, v4

    .line 1091
    :goto_58
    move/from16 v8, v16

    .line 1095
    .end local v16           #newDir:I
    :cond_5a
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1097
    .local v9, directions:Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v3

    .line 1099
    .local v3, tl:Landroid/text/TextLine;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1100
    sub-int v4, p1, v6

    move-object v0, v3

    move v1, v4

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int p1, v6, v4

    .line 1101
    invoke-static {v3}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v3

    move/from16 v13, p1

    .line 1102
    .end local v3           #tl:Landroid/text/TextLine;
    .end local v9           #directions:Landroid/text/Layout$Directions;
    .end local p1
    .local v13, caret:I
    :goto_86
    return v13

    .line 1060
    .end local v12           #advance:Z
    .end local v13           #caret:I
    .restart local p1
    :cond_87
    const/4 v4, 0x0

    goto :goto_1e

    :cond_89
    const/4 v4, 0x0

    move v12, v4

    goto :goto_25

    .restart local v12       #advance:Z
    :cond_8c
    move/from16 v13, p1

    .line 1068
    .end local p1
    .restart local v13       #caret:I
    goto :goto_86

    .line 1072
    .end local v13           #caret:I
    .restart local p1
    :cond_8f
    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_37

    .line 1073
    if-lez v14, :cond_9a

    .line 1074
    const/4 v15, 0x1

    .line 1075
    add-int/lit8 v14, v14, -0x1

    goto :goto_37

    :cond_9a
    move/from16 v13, p1

    .line 1077
    .end local p1
    .restart local v13       #caret:I
    goto :goto_86

    .line 1090
    .end local v13           #caret:I
    .restart local v16       #newDir:I
    .restart local p1
    :cond_9d
    const/4 v4, 0x0

    move/from16 p2, v4

    goto :goto_58
.end method

.method private getParagraphLeadingMargin(I)I
    .registers 19
    .parameter "line"

    .prologue
    .line 1358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v15, v0

    if-nez v15, :cond_9

    .line 1359
    const/4 v15, 0x0

    .line 1390
    :goto_8
    return v15

    .line 1361
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    check-cast v12, Landroid/text/Spanned;

    .line 1363
    .local v12, spanned:Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 1364
    .local v6, lineStart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1365
    .local v5, lineEnd:I
    const-class v15, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v12, v6, v5, v15}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v10

    .line 1367
    .local v10, spanEnd:I
    const-class v15, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v12, v6, v10, v15}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/LeadingMarginSpan;

    .line 1369
    .local v13, spans:[Landroid/text/style/LeadingMarginSpan;
    array-length v15, v13

    if-nez v15, :cond_2b

    .line 1370
    const/4 v15, 0x0

    goto :goto_8

    .line 1373
    :cond_2b
    const/4 v7, 0x0

    .line 1375
    .local v7, margin:I
    if-eqz v6, :cond_3c

    const/4 v15, 0x1

    sub-int v15, v6, v15

    invoke-interface {v12, v15}, Landroid/text/Spanned;->charAt(I)C

    move-result v15

    const/16 v16, 0xa

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6d

    :cond_3c
    const/4 v15, 0x1

    move v4, v15

    .line 1378
    .local v4, isFirstParaLine:Z
    :goto_3e
    const/4 v3, 0x0

    .end local v10           #spanEnd:I
    .local v3, i:I
    :goto_3f
    array-length v15, v13

    if-ge v3, v15, :cond_73

    .line 1379
    aget-object v9, v13, v3

    .line 1380
    .local v9, span:Landroid/text/style/LeadingMarginSpan;
    move v14, v4

    .line 1381
    .local v14, useFirstLineMargin:Z
    instance-of v15, v9, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v15, :cond_65

    .line 1382
    invoke-interface {v12, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1383
    .local v8, spStart:I
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 1384
    .local v11, spanLine:I
    move-object v0, v9

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object v10, v0

    invoke-interface {v10}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v2

    .line 1385
    .local v2, count:I
    add-int v15, v11, v2

    move/from16 v0, p1

    move v1, v15

    if-ge v0, v1, :cond_70

    const/4 v15, 0x1

    move v14, v15

    .line 1387
    .end local v2           #count:I
    .end local v8           #spStart:I
    .end local v11           #spanLine:I
    :cond_65
    :goto_65
    invoke-interface {v9, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v15

    add-int/2addr v7, v15

    .line 1378
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 1375
    .end local v3           #i:I
    .end local v4           #isFirstParaLine:Z
    .end local v9           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v14           #useFirstLineMargin:Z
    .restart local v10       #spanEnd:I
    :cond_6d
    const/4 v15, 0x0

    move v4, v15

    goto :goto_3e

    .line 1385
    .end local v10           #spanEnd:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #isFirstParaLine:Z
    .restart local v8       #spStart:I
    .restart local v9       #span:Landroid/text/style/LeadingMarginSpan;
    .restart local v11       #spanLine:I
    .restart local v14       #useFirstLineMargin:Z
    :cond_70
    const/4 v15, 0x0

    move v14, v15

    goto :goto_65

    .end local v2           #count:I
    .end local v8           #spStart:I
    .end local v9           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v11           #spanLine:I
    .end local v14           #useFirstLineMargin:Z
    :cond_73
    move v15, v7

    .line 1390
    goto :goto_8
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1571
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_c

    if-lez p1, :cond_c

    .line 1572
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    .line 1575
    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method static measurePara(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .registers 21
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1397
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v14

    .line 1398
    .local v14, mt:Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    .line 1400
    .local v15, tl:Landroid/text/TextLine;
    const/16 p1, 0x1

    :try_start_a
    move-object v0, v14

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;III)V

    .line 1403
    .end local p1
    move-object v0, v14

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 p1, v0

    if-eqz p1, :cond_85

    .line 1404
    sget-object v11, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1405
    .local v11, directions:Landroid/text/Layout$Directions;
    const/4 v10, 0x1

    .line 1411
    .local v10, dir:I
    :goto_20
    move-object v0, v14

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 p1, v0

    .line 1412
    .local p1, chars:[C
    iget v6, v14, Landroid/text/MeasuredText;->mLen:I

    .line 1413
    .local v6, len:I
    const/4 v12, 0x0

    .line 1414
    .local v12, hasTabs:Z
    const/4 v13, 0x0

    .line 1415
    .local v13, tabStops:Landroid/text/Layout$TabStops;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v6, :cond_6c

    .line 1416
    aget-char v7, p1, v5

    const/16 v8, 0x9

    if-ne v7, v8, :cond_96

    .line 1417
    const/4 v12, 0x1

    .line 1418
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 p1, v0

    .end local p1           #chars:[C
    if-eqz p1, :cond_6c

    .line 1419
    move-object/from16 v0, p2

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 1420
    .local v5, spanned:Landroid/text/Spanned;
    const-class p1, Landroid/text/style/TabStopSpan;

    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    .line 1422
    .local p1, spanEnd:I
    const-class v6, Landroid/text/style/TabStopSpan;

    .end local v6           #len:I
    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p1

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1           #spanEnd:I
    check-cast p1, [Landroid/text/style/TabStopSpan;

    .line 1424
    .local p1, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    .end local v5           #spanned:Landroid/text/Spanned;
    if-lez v5, :cond_6c

    .line 1425
    new-instance v13, Landroid/text/Layout$TabStops;

    .end local v13           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object v0, v13

    move v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local p1           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v13       #tabStops:Landroid/text/Layout$TabStops;
    :cond_6c
    move-object v5, v15

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 1431
    invoke-virtual/range {v5 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1432
    const/16 p0, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_7d
    .catchall {:try_start_a .. :try_end_7d} :catchall_99

    .end local p0
    move-result p0

    .line 1434
    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1435
    invoke-static {v14}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return p0

    .line 1407
    .end local v10           #dir:I
    .end local v11           #directions:Landroid/text/Layout$Directions;
    .end local v12           #hasTabs:Z
    .end local v13           #tabStops:Landroid/text/Layout$TabStops;
    .restart local p0
    :cond_85
    :try_start_85
    iget v5, v14, Landroid/text/MeasuredText;->mDir:I

    iget-object v6, v14, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v7, 0x0

    iget-object v8, v14, Landroid/text/MeasuredText;->mChars:[C

    const/4 v9, 0x0

    iget v10, v14, Landroid/text/MeasuredText;->mLen:I

    invoke-static/range {v5 .. v10}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v11

    .line 1409
    .restart local v11       #directions:Landroid/text/Layout$Directions;
    iget v10, v14, Landroid/text/MeasuredText;->mDir:I
    :try_end_95
    .catchall {:try_start_85 .. :try_end_95} :catchall_99

    .restart local v10       #dir:I
    goto :goto_20

    .line 1415
    .local v5, i:I
    .restart local v6       #len:I
    .restart local v12       #hasTabs:Z
    .restart local v13       #tabStops:Landroid/text/Layout$TabStops;
    .local p1, chars:[C
    :cond_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 1434
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v10           #dir:I
    .end local v11           #directions:Landroid/text/Layout$Directions;
    .end local v12           #hasTabs:Z
    .end local v13           #tabStops:Landroid/text/Layout$TabStops;
    .end local p0
    .end local p1           #chars:[C
    :catchall_99
    move-exception p0

    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1435
    invoke-static {v14}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw p0
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 11
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    .line 1514
    const v2, 0x7f7fffff

    .line 1515
    .local v2, nh:F
    const/4 v0, 0x0

    .line 1517
    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_41

    .line 1518
    if-nez p4, :cond_15

    .line 1519
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1520
    const/4 v0, 0x1

    .line 1523
    :cond_15
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v4, p4

    if-ge v1, v4, :cond_38

    .line 1524
    if-nez v0, :cond_24

    .line 1525
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_24

    .line 1523
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1529
    :cond_24
    aget-object p0, p4, v1

    check-cast p0, Landroid/text/style/TabStopSpan;

    invoke-interface {p0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1531
    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_21

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_21

    .line 1532
    int-to-float v2, v3

    goto :goto_21

    .line 1535
    .end local v3           #where:I
    :cond_38
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_41

    move v4, v2

    .line 1539
    .end local v1           #i:I
    :goto_40
    return v4

    :cond_41
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_40
.end method

.method private primaryIsTrailingPrevious(I)Z
    .registers 15
    .parameter "offset"

    .prologue
    const v12, 0x3ffffff

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 631
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 632
    .local v4, line:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 633
    .local v6, lineStart:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 634
    .local v5, lineEnd:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    iget-object v7, v9, Landroid/text/Layout$Directions;->mDirections:[I

    .line 636
    .local v7, runs:[I
    const/4 v1, -0x1

    .line 637
    .local v1, levelAt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    array-length v9, v7

    if-ge v0, v9, :cond_3a

    .line 638
    aget v9, v7, v0

    add-int v8, v6, v9

    .line 639
    .local v8, start:I
    add-int/lit8 v9, v0, 0x1

    aget v9, v7, v9

    and-int/2addr v9, v12

    add-int v3, v8, v9

    .line 640
    .local v3, limit:I
    if-le v3, v5, :cond_2a

    .line 641
    move v3, v5

    .line 643
    :cond_2a
    if-lt p1, v8, :cond_52

    if-ge p1, v3, :cond_52

    .line 644
    if-le p1, v8, :cond_32

    move v9, v11

    .line 676
    .end local v3           #limit:I
    .end local v8           #start:I
    :goto_31
    return v9

    .line 648
    .restart local v3       #limit:I
    .restart local v8       #start:I
    :cond_32
    add-int/lit8 v9, v0, 0x1

    aget v9, v7, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v1, v9, 0x3f

    .line 652
    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_3a
    const/4 v9, -0x1

    if-ne v1, v9, :cond_44

    .line 654
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v9, v10, :cond_55

    move v1, v11

    .line 658
    :cond_44
    :goto_44
    const/4 v2, -0x1

    .line 659
    .local v2, levelBefore:I
    if-ne p1, v6, :cond_59

    .line 660
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v9, v10, :cond_57

    move v2, v11

    .line 676
    :cond_4e
    :goto_4e
    if-ge v2, v1, :cond_7d

    move v9, v10

    goto :goto_31

    .line 637
    .end local v2           #levelBefore:I
    .restart local v3       #limit:I
    .restart local v8       #start:I
    :cond_52
    add-int/lit8 v0, v0, 0x2

    goto :goto_19

    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_55
    move v1, v10

    .line 654
    goto :goto_44

    .restart local v2       #levelBefore:I
    :cond_57
    move v2, v10

    .line 660
    goto :goto_4e

    .line 662
    :cond_59
    add-int/lit8 p1, p1, -0x1

    .line 663
    const/4 v0, 0x0

    :goto_5c
    array-length v9, v7

    if-ge v0, v9, :cond_4e

    .line 664
    aget v9, v7, v0

    add-int v8, v6, v9

    .line 665
    .restart local v8       #start:I
    add-int/lit8 v9, v0, 0x1

    aget v9, v7, v9

    and-int/2addr v9, v12

    add-int v3, v8, v9

    .line 666
    .restart local v3       #limit:I
    if-le v3, v5, :cond_6d

    .line 667
    move v3, v5

    .line 669
    :cond_6d
    if-lt p1, v8, :cond_7a

    if-ge p1, v3, :cond_7a

    .line 670
    add-int/lit8 v9, v0, 0x1

    aget v9, v7, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v2, v9, 0x3f

    .line 671
    goto :goto_4e

    .line 663
    :cond_7a
    add-int/lit8 v0, v0, 0x2

    goto :goto_5c

    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_7d
    move v9, v11

    .line 676
    goto :goto_31
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 162
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 70
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 178
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 179
    :try_start_3
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 180
    monitor-exit v5

    .line 396
    .end local p2
    :goto_f
    return-void

    .line 183
    .restart local p2
    :cond_10
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    .line 184
    .local v45, dtop:I
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v44, v0

    .line 185
    .local v44, dbottom:I
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_e2

    .line 187
    const/16 v62, 0x0

    .line 188
    .local v62, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v42

    .line 190
    .local v42, bottom:I
    move/from16 v0, v45

    move/from16 v1, v62

    if-le v0, v1, :cond_34

    .line 191
    move/from16 v62, v45

    .line 193
    :cond_34
    move/from16 v0, v44

    move/from16 v1, v42

    if-ge v0, v1, :cond_3c

    .line 194
    move/from16 v42, v44

    .line 197
    :cond_3c
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v46

    .line 198
    .local v46, first:I
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v47

    .line 200
    .local v47, last:I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v51

    .line 201
    .local v51, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v52

    .line 203
    .local v52, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v6, v0

    .line 204
    .local v6, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    .line 205
    .local v12, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    .line 206
    .local v8, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v55, v0

    .line 208
    .local v55, spannedText:Z
    sget-object v56, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 209
    .local v56, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v54, 0x0

    .line 210
    .local v54, spanEnd:I
    const/16 v60, 0x0

    .line 216
    .local v60, textLength:I
    if-eqz v55, :cond_fc

    .line 217
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v53, v0

    .line 218
    .local v53, sp:Landroid/text/Spanned;
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v60

    .line 219
    move/from16 v15, v46

    .local v15, i:I
    :goto_84
    move v0, v15

    move/from16 v1, v47

    if-gt v0, v1, :cond_e8

    .line 220
    move/from16 v13, v52

    .line 221
    .local v13, start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 222
    .local v14, end:I
    move/from16 v52, v14

    .line 224
    move/from16 v9, v51

    .line 225
    .local v9, ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 226
    .local v11, lbottom:I
    move/from16 v51, v11

    .line 227
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 229
    .local v10, lbaseline:I
    move v0, v13

    move/from16 v1, v54

    if-lt v0, v1, :cond_ca

    .line 232
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v53

    move v1, v13

    move/from16 v2, v60

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v54

    .line 236
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v53

    move v1, v13

    move v2, v14

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v56

    .end local v56           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v56, [Landroid/text/style/ParagraphStyle;

    .line 239
    .restart local v56       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_ca
    const/16 v50, 0x0

    .local v50, n:I
    :goto_cc
    move-object/from16 v0, v56

    array-length v0, v0

    move v5, v0

    move/from16 v0, v50

    move v1, v5

    if-ge v0, v1, :cond_e5

    .line 240
    aget-object v4, v56, v50

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    .line 242
    .local v4, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v15}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 239
    add-int/lit8 v50, v50, 0x1

    goto :goto_cc

    .line 185
    .end local v4           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v6           #paint:Landroid/text/TextPaint;
    .end local v8           #width:I
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v12           #buf:Ljava/lang/CharSequence;
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v15           #i:I
    .end local v42           #bottom:I
    .end local v44           #dbottom:I
    .end local v45           #dtop:I
    .end local v46           #first:I
    .end local v47           #last:I
    .end local v50           #n:I
    .end local v51           #previousLineBottom:I
    .end local v52           #previousLineEnd:I
    .end local v53           #sp:Landroid/text/Spanned;
    .end local v54           #spanEnd:I
    .end local v55           #spannedText:Z
    .end local v56           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v60           #textLength:I
    .end local v62           #top:I
    :catchall_e2
    move-exception v6

    :try_start_e3
    monitor-exit v5
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v6

    .line 219
    .restart local v6       #paint:Landroid/text/TextPaint;
    .restart local v8       #width:I
    .restart local v9       #ltop:I
    .restart local v10       #lbaseline:I
    .restart local v11       #lbottom:I
    .restart local v12       #buf:Ljava/lang/CharSequence;
    .restart local v13       #start:I
    .restart local v14       #end:I
    .restart local v15       #i:I
    .restart local v42       #bottom:I
    .restart local v44       #dbottom:I
    .restart local v45       #dtop:I
    .restart local v46       #first:I
    .restart local v47       #last:I
    .restart local v50       #n:I
    .restart local v51       #previousLineBottom:I
    .restart local v52       #previousLineEnd:I
    .restart local v53       #sp:Landroid/text/Spanned;
    .restart local v54       #spanEnd:I
    .restart local v55       #spannedText:Z
    .restart local v56       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v60       #textLength:I
    .restart local v62       #top:I
    :cond_e5
    add-int/lit8 v15, v15, 0x1

    goto :goto_84

    .line 249
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v50           #n:I
    :cond_e8
    const/16 v54, 0x0

    .line 250
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v51

    .line 251
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v52

    .line 252
    sget-object v56, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 257
    .end local v15           #i:I
    .end local v53           #sp:Landroid/text/Spanned;
    :cond_fc
    if-eqz p2, :cond_11e

    .line 258
    if-eqz p4, :cond_10c

    .line 259
    const/4 v5, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    :cond_10c
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 264
    if-eqz p4, :cond_11e

    .line 265
    const/4 v5, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v41, v0

    .line 270
    .local v41, align:Landroid/text/Layout$Alignment;
    const/16 v40, 0x0

    .line 271
    .local v40, tabStops:Landroid/text/Layout$TabStops;
    const/16 v59, 0x0

    .line 273
    .local v59, tabStopsIsInitialized:Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v61

    .line 278
    .local v61, tl:Landroid/text/TextLine;
    move/from16 v15, v46

    .restart local v15       #i:I
    move-object/from16 v58, v40

    .end local v40           #tabStops:Landroid/text/Layout$TabStops;
    .end local p2
    .local v58, tabStops:Landroid/text/Layout$TabStops;
    :goto_130
    move v0, v15

    move/from16 v1, v47

    if-gt v0, v1, :cond_31b

    .line 279
    move/from16 v13, v52

    .line 281
    .restart local v13       #start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v52

    .line 282
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v14

    .line 284
    .restart local v14       #end:I
    move/from16 v9, v51

    .line 285
    .restart local v9       #ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 286
    .restart local v11       #lbottom:I
    move/from16 v51, v11

    .line 287
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 289
    .restart local v10       #lbaseline:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v20

    .line 290
    .local v20, dir:I
    const/16 v31, 0x0

    .line 291
    .local v31, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v19, v0

    .line 293
    .local v19, right:I
    if-eqz v55, :cond_266

    .line 294
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v53, v0

    .line 295
    .restart local v53       #sp:Landroid/text/Spanned;
    if-eqz v13, :cond_183

    const/4 v5, 0x1

    sub-int v5, v13, v5

    invoke-interface {v12, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_233

    :cond_183
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 308
    .local v27, isFirstParaLine:Z
    :goto_186
    move v0, v13

    move/from16 v1, v54

    if-lt v0, v1, :cond_1cb

    move v0, v15

    move/from16 v1, v46

    if-eq v0, v1, :cond_192

    if-eqz v27, :cond_1cb

    .line 309
    :cond_192
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v53

    move v1, v13

    move/from16 v2, v60

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v54

    .line 311
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v53

    move v1, v13

    move/from16 v2, v54

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v56

    .end local v56           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v56, [Landroid/text/style/ParagraphStyle;

    .line 313
    .restart local v56       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v41, v0

    .line 314
    move-object/from16 v0, v56

    array-length v0, v0

    move v5, v0

    const/4 v7, 0x1

    sub-int v50, v5, v7

    .restart local v50       #n:I
    :goto_1b9
    if-ltz v50, :cond_1c9

    .line 315
    aget-object v5, v56, v50

    instance-of v5, v5, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_238

    .line 316
    aget-object p2, v56, v50

    check-cast p2, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {p2 .. p2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v41

    .line 321
    :cond_1c9
    const/16 v59, 0x0

    .line 326
    .end local v50           #n:I
    :cond_1cb
    move-object/from16 v0, v56

    array-length v0, v0

    move/from16 v48, v0

    .line 327
    .local v48, length:I
    const/16 v50, 0x0

    .restart local v50       #n:I
    :goto_1d2
    move/from16 v0, v50

    move/from16 v1, v48

    if-ge v0, v1, :cond_266

    .line 328
    aget-object v5, v56, v50

    instance-of v5, v5, Landroid/text/style/LeadingMarginSpan;

    if-eqz v5, :cond_230

    .line 329
    aget-object v16, v56, v50

    check-cast v16, Landroid/text/style/LeadingMarginSpan;

    .line 330
    .local v16, margin:Landroid/text/style/LeadingMarginSpan;
    move/from16 v63, v27

    .line 331
    .local v63, useFirstLineMargin:Z
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_20b

    .line 332
    move-object/from16 v0, v16

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v43

    .line 333
    .local v43, count:I
    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v57

    .line 334
    .local v57, startLine:I
    add-int v5, v57, v43

    if-ge v15, v5, :cond_23c

    const/4 v5, 0x1

    move/from16 v63, v5

    .line 337
    .end local v43           #count:I
    .end local v57           #startLine:I
    :cond_20b
    :goto_20b
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_240

    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, p0

    .line 338
    invoke-interface/range {v16 .. v28}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 341
    move-object/from16 v0, v16

    move/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v19, v19, v5

    .line 327
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v63           #useFirstLineMargin:Z
    :cond_230
    :goto_230
    add-int/lit8 v50, v50, 0x1

    goto :goto_1d2

    .line 295
    .end local v27           #isFirstParaLine:Z
    .end local v48           #length:I
    .end local v50           #n:I
    :cond_233
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_186

    .line 314
    .restart local v27       #isFirstParaLine:Z
    .restart local v50       #n:I
    :cond_238
    add-int/lit8 v50, v50, -0x1

    goto/16 :goto_1b9

    .line 334
    .restart local v16       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v43       #count:I
    .restart local v48       #length:I
    .restart local v57       #startLine:I
    .restart local v63       #useFirstLineMargin:Z
    :cond_23c
    const/4 v5, 0x0

    move/from16 v63, v5

    goto :goto_20b

    .end local v43           #count:I
    .end local v57           #startLine:I
    :cond_240
    move-object/from16 v28, v16

    move-object/from16 v29, p1

    move-object/from16 v30, v6

    move/from16 v32, v20

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v27

    move-object/from16 v40, p0

    .line 343
    invoke-interface/range {v28 .. v40}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 346
    move-object/from16 v0, v16

    move/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    add-int v31, v31, v5

    goto :goto_230

    .line 352
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v27           #isFirstParaLine:Z
    .end local v48           #length:I
    .end local v50           #n:I
    .end local v53           #sp:Landroid/text/Spanned;
    .end local v63           #useFirstLineMargin:Z
    :cond_266
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v39

    .line 354
    .local v39, hasTabOrEmoji:Z
    if-eqz v39, :cond_320

    if-nez v59, :cond_320

    .line 355
    if-nez v58, :cond_2be

    .line 356
    new-instance v40, Landroid/text/Layout$TabStops;

    const/16 v5, 0x14

    move-object/from16 v0, v40

    move v1, v5

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 360
    .end local v58           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v40       #tabStops:Landroid/text/Layout$TabStops;
    :goto_27f
    const/16 v59, 0x1

    .line 364
    :goto_281
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v41

    move-object v1, v5

    if-ne v0, v1, :cond_2ce

    .line 365
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_2cb

    .line 366
    move/from16 v64, v31

    .line 384
    .local v64, x:I
    :goto_290
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v38

    .line 385
    .local v38, directions:Landroid/text/Layout$Directions;
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_2f9

    if-nez v55, :cond_2f9

    if-nez v39, :cond_2f9

    .line 388
    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v36, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v32, p1

    move-object/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v38, v6

    invoke-virtual/range {v32 .. v38}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 278
    .end local v38           #directions:Landroid/text/Layout$Directions;
    :goto_2b8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v58, v40

    .end local v40           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v58       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_130

    .line 358
    .end local v64           #x:I
    :cond_2be
    const/16 v5, 0x14

    move-object/from16 v0, v58

    move v1, v5

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v40, v58

    .end local v58           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v40       #tabStops:Landroid/text/Layout$TabStops;
    goto :goto_27f

    .line 368
    :cond_2cb
    move/from16 v64, v19

    .restart local v64       #x:I
    goto :goto_290

    .line 371
    .end local v64           #x:I
    :cond_2ce
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v40

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v49, v0

    .line 372
    .local v49, max:I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v41

    move-object v1, v5

    if-ne v0, v1, :cond_2f0

    .line 373
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_2ed

    .line 374
    sub-int v64, v19, v49

    .restart local v64       #x:I
    goto :goto_290

    .line 376
    .end local v64           #x:I
    :cond_2ed
    sub-int v64, v31, v49

    .restart local v64       #x:I
    goto :goto_290

    .line 379
    .end local v64           #x:I
    :cond_2f0
    and-int/lit8 v49, v49, -0x2

    .line 380
    add-int v5, v19, v31

    sub-int v5, v5, v49

    shr-int/lit8 v64, v5, 0x1

    .restart local v64       #x:I
    goto :goto_290

    .end local v49           #max:I
    .restart local v38       #directions:Landroid/text/Layout$Directions;
    :cond_2f9
    move-object/from16 v32, v61

    move-object/from16 v33, v6

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v20

    .line 390
    invoke-virtual/range {v32 .. v40}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 391
    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v21, v61

    move-object/from16 v22, p1

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    invoke-virtual/range {v21 .. v26}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto :goto_2b8

    .line 395
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v19           #right:I
    .end local v20           #dir:I
    .end local v31           #left:I
    .end local v38           #directions:Landroid/text/Layout$Directions;
    .end local v39           #hasTabOrEmoji:Z
    .end local v40           #tabStops:Landroid/text/Layout$TabStops;
    .end local v64           #x:I
    .restart local v58       #tabStops:Landroid/text/Layout$TabStops;
    :cond_31b
    invoke-static/range {v61 .. v61}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto/16 :goto_f

    .restart local v9       #ltop:I
    .restart local v10       #lbaseline:I
    .restart local v11       #lbottom:I
    .restart local v13       #start:I
    .restart local v14       #end:I
    .restart local v19       #right:I
    .restart local v20       #dir:I
    .restart local v31       #left:I
    .restart local v39       #hasTabOrEmoji:Z
    :cond_320
    move-object/from16 v40, v58

    .end local v58           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v40       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_281
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 15
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1145
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1147
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1148
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1149
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1151
    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 1152
    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float/2addr v8, v9

    move v5, v8

    .line 1154
    .local v5, h2:F
    :goto_27
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/16 v9, 0x800

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .line 1156
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1157
    .local v3, fn:I
    const/4 v2, 0x0

    .line 1159
    .local v2, dist:I
    if-nez v1, :cond_3e

    if-eqz v3, :cond_48

    .line 1160
    :cond_3e
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 1162
    if-eqz v3, :cond_45

    .line 1163
    add-int/2addr v7, v2

    .line 1164
    :cond_45
    if-eqz v1, :cond_48

    .line 1165
    sub-int/2addr v0, v2

    .line 1168
    :cond_48
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_50

    .line 1169
    const/high16 v4, 0x3f00

    .line 1170
    :cond_50
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_58

    .line 1171
    const/high16 v5, 0x3f00

    .line 1173
    :cond_58
    cmpl-float v8, v4, v5

    if-nez v8, :cond_9f

    .line 1174
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1175
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1184
    :goto_64
    const/4 v8, 0x2

    if-ne v1, v8, :cond_b8

    .line 1185
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1186
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1187
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1188
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1200
    :cond_80
    :goto_80
    const/4 v8, 0x2

    if-ne v3, v8, :cond_ec

    .line 1201
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1202
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1203
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1204
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1215
    :cond_9c
    :goto_9c
    return-void

    .end local v1           #caps:I
    .end local v2           #dist:I
    .end local v3           #fn:I
    .end local v5           #h2:F
    :cond_9d
    move v5, v4

    .line 1152
    goto :goto_27

    .line 1177
    .restart local v1       #caps:I
    .restart local v2       #dist:I
    .restart local v3       #fn:I
    .restart local v5       #h2:F
    :cond_9f
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1178
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1180
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1181
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_64

    .line 1189
    :cond_b8
    const/4 v8, 0x1

    if-ne v1, v8, :cond_80

    .line 1190
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1191
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1193
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1194
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1196
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1197
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_80

    .line 1205
    :cond_ec
    const/4 v8, 0x1

    if-ne v3, v8, :cond_9c

    .line 1206
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1207
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1209
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1210
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1212
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1213
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9c
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 475
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 1042
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1033
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 1025
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 533
    if-eqz p2, :cond_17

    .line 534
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 535
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 536
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 537
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 539
    :cond_17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 987
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .registers 7
    .parameter "offset"

    .prologue
    .line 890
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 892
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 893
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 895
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 896
    move v1, v0

    goto :goto_5

    .line 898
    :cond_16
    move v2, v0

    goto :goto_5

    .line 901
    .end local v0           #guess:I
    :cond_18
    if-gez v2, :cond_1c

    .line 902
    const/4 v3, 0x0

    .line 904
    :goto_1b
    return v3

    :cond_1c
    move v3, v2

    goto :goto_1b
.end method

.method public getLineForVertical(I)I
    .registers 7
    .parameter "vertical"

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 869
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 870
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 872
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 873
    move v1, v0

    goto :goto_5

    .line 875
    :cond_16
    move v2, v0

    goto :goto_5

    .line 878
    .end local v0           #guess:I
    :cond_18
    if-gez v2, :cond_1c

    .line 879
    const/4 v3, 0x0

    .line 881
    :goto_1b
    return v3

    :cond_1c
    move v3, v2

    goto :goto_1b
.end method

.method public getLineLeft(I)F
    .registers 10
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 738
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 739
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 741
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1d

    .line 742
    if-ne v1, v7, :cond_1b

    .line 743
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 756
    :goto_1a
    return v5

    :cond_1b
    move v5, v6

    .line 745
    goto :goto_1a

    .line 746
    :cond_1d
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2e

    .line 747
    if-ne v1, v7, :cond_25

    move v5, v6

    .line 748
    goto :goto_1a

    .line 750
    :cond_25
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_1a

    .line 752
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 753
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 754
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 756
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_1a
.end method

.method public getLineMax(I)F
    .registers 6
    .parameter "line"

    .prologue
    .line 792
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 793
    .local v0, margin:F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 794
    .local v1, signedExtent:F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13

    move v2, v1

    :goto_12
    return v2

    :cond_13
    neg-float v2, v1

    goto :goto_12
.end method

.method public getLineRight(I)F
    .registers 9
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 765
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 766
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 768
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1e

    .line 769
    if-ne v1, v6, :cond_13

    .line 770
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    .line 783
    :goto_12
    return v5

    .line 772
    :cond_13
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_12

    .line 773
    :cond_1e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2d

    .line 774
    if-ne v1, v6, :cond_29

    .line 775
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_12

    .line 777
    :cond_29
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_12

    .line 779
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 780
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 781
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 783
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_12
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 995
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .registers 6
    .parameter "line"

    .prologue
    .line 802
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 803
    .local v0, margin:F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 804
    .local v1, signedExtent:F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13

    move v2, v1

    :goto_12
    return v2

    :cond_13
    neg-float v2, v1

    goto :goto_12
.end method

.method public getOffsetForHorizontal(IF)I
    .registers 23
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 912
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 913
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 914
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 916
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 917
    add-int/lit8 v13, v13, 0x1

    .line 919
    :cond_20
    move v4, v14

    .line 920
    .local v4, best:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 922
    .local v5, bestdist:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2f
    move-object v0, v6

    iget-object v0, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_118

    .line 923
    move-object v0, v6

    iget-object v0, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 924
    .local v9, here:I
    move-object v0, v6

    iget-object v0, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 925
    .local v17, there:I
    move-object v0, v6

    iget-object v0, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x400

    and-int v18, v18, v19

    if-eqz v18, :cond_ad

    const/16 v18, -0x1

    move/from16 v16, v18

    .line 927
    .local v16, swap:I
    :goto_6a
    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_71

    .line 928
    move/from16 v17, v13

    .line 929
    :cond_71
    const/16 v18, 0x1

    sub-int v18, v17, v18

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    const/16 v19, 0x1

    sub-int v12, v18, v19

    .line 931
    .local v12, low:I
    :goto_7d
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b4

    .line 932
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 933
    .local v8, guess:I
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 935
    .local v2, adguess:I
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_b2

    .line 936
    move v10, v8

    goto :goto_7d

    .line 925
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_ad
    const/16 v18, 0x1

    move/from16 v16, v18

    goto :goto_6a

    .line 938
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_b2
    move v12, v8

    goto :goto_7d

    .line 941
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_b4
    add-int/lit8 v18, v9, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_bd

    .line 942
    add-int/lit8 v12, v9, 0x1

    .line 944
    :cond_bd
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_101

    .line 945
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 947
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 949
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 950
    .local v3, aft:I
    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_fb

    .line 951
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 953
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_fb

    .line 954
    move v7, v15

    .line 955
    move v12, v3

    .line 959
    .end local v15           #other:F
    :cond_fb
    cmpg-float v18, v7, v5

    if-gez v18, :cond_101

    .line 960
    move v5, v7

    .line 961
    move v4, v12

    .line 965
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_101
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 967
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_114

    .line 968
    move v5, v7

    .line 969
    move v4, v9

    .line 922
    :cond_114
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_2f

    .line 973
    .end local v7           #dist:F
    .end local v9           #here:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_118
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 975
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_12b

    .line 976
    move v5, v7

    .line 977
    move v4, v13

    .line 980
    :cond_12b
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 1046
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 1050
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 9
    .parameter "line"

    .prologue
    .line 1310
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1312
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_26

    .line 1313
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1314
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1318
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1319
    .local v2, spanLength:I
    if-lez v2, :cond_26

    .line 1320
    const/4 v4, 0x1

    sub-int v4, v2, v4

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1324
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_26
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 1331
    const/4 v1, 0x0

    .line 1332
    .local v1, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1333
    .local v0, dir:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_e

    :cond_c
    move v2, v1

    .line 1336
    :goto_d
    return v2

    :cond_e
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    goto :goto_d
.end method

.method public final getParagraphRight(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 1343
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1344
    .local v1, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1345
    .local v0, dir:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_f

    :cond_d
    move v2, v1

    .line 1348
    :goto_e
    return v2

    :cond_f
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v1, v2

    goto :goto_e
.end method

.method public getPrimaryHorizontal(I)F
    .registers 4
    .parameter "offset"

    .prologue
    .line 685
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 686
    .local v0, trailing:Z
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .registers 4
    .parameter "offset"

    .prologue
    .line 695
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 696
    .local v0, trailing:Z
    if-nez v0, :cond_c

    const/4 v1, 0x1

    :goto_7
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .registers 23
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1254
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1256
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 1303
    :goto_9
    return-void

    .line 1259
    :cond_a
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_16

    .line 1260
    move/from16 v17, p2

    .line 1261
    .local v17, temp:I
    move/from16 p2, p1

    .line 1262
    move/from16 p1, v17

    .line 1265
    .end local v17           #temp:I
    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1266
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1268
    .local v15, endline:I
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1269
    .local v6, top:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1271
    .local v7, bottom:I
    if-ne v3, v15, :cond_3e

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1272
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_9

    .line 1274
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v2, v0

    move v0, v2

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1276
    .local v18, width:F
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1279
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a8

    .line 1280
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1286
    :goto_82
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_84
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_c2

    .line 1287
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1288
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1289
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1286
    add-int/lit8 v16, v16, 0x1

    goto :goto_84

    .line 1283
    .end local v16           #i:I
    :cond_a8
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_82

    .line 1292
    .restart local v16       #i:I
    :cond_c2
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1293
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1295
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1298
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_101

    .line 1299
    .end local v3           #startline:I
    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9

    .line 1301
    :cond_101
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9
.end method

.method public final getSpacingAdd()F
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .registers 2

    .prologue
    .line 509
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 467
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .registers 4
    .parameter "wid"

    .prologue
    .line 484
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_c

    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_c
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 489
    return-void
.end method

.method public isLevelBoundary(I)Z
    .registers 14
    .parameter "offset"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 606
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 607
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 608
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v8, :cond_12

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v8, :cond_14

    :cond_12
    move v8, v10

    .line 627
    :goto_13
    return v8

    .line 612
    :cond_14
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 613
    .local v7, runs:[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 614
    .local v4, lineStart:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 615
    .local v3, lineEnd:I
    if-eq p1, v4, :cond_22

    if-ne p1, v3, :cond_41

    .line 616
    :cond_22
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v8, v11, :cond_38

    move v5, v10

    .line 617
    .local v5, paraLevel:I
    :goto_29
    if-ne p1, v4, :cond_3a

    move v6, v10

    .line 618
    .local v6, runIndex:I
    :goto_2c
    add-int/lit8 v8, v6, 0x1

    aget v8, v7, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    if-eq v8, v5, :cond_3f

    move v8, v11

    goto :goto_13

    .end local v5           #paraLevel:I
    .end local v6           #runIndex:I
    :cond_38
    move v5, v11

    .line 616
    goto :goto_29

    .line 617
    .restart local v5       #paraLevel:I
    :cond_3a
    array-length v8, v7

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    move v6, v8

    goto :goto_2c

    .restart local v6       #runIndex:I
    :cond_3f
    move v8, v10

    .line 618
    goto :goto_13

    .line 621
    .end local v5           #paraLevel:I
    .end local v6           #runIndex:I
    :cond_41
    sub-int/2addr p1, v4

    .line 622
    const/4 v1, 0x0

    .local v1, i:I
    :goto_43
    array-length v8, v7

    if-ge v1, v8, :cond_4f

    .line 623
    aget v8, v7, v1

    if-ne p1, v8, :cond_4c

    move v8, v11

    .line 624
    goto :goto_13

    .line 622
    :cond_4c
    add-int/lit8 v1, v1, 0x2

    goto :goto_43

    :cond_4f
    move v8, v10

    .line 627
    goto :goto_13
.end method

.method protected final isSpanned()Z
    .registers 2

    .prologue
    .line 1543
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 144
    if-gez p3, :cond_21

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_21
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 149
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 150
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 151
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 152
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 153
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 154
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 155
    return-void
.end method

.method public setMaximumVisibleLineCount(I)V
    .registers 2
    .parameter "lineCount"

    .prologue
    .line 1739
    return-void
.end method

.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final TAB_INCREMENT:I = 0x14

.field private static cached:[Landroid/text/TextLine;


# instance fields
.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private mPaint:Landroid/text/TextPaint;

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIIZFIIIZ)F
    .registers 27
    .parameter "c"
    .parameter "runIndex"
    .parameter "start"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "needWidth"

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mDir:I

    move v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    const/4 v2, 0x1

    :goto_9
    move v0, v2

    move/from16 v1, p5

    if-ne v0, v1, :cond_3f

    .line 373
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->measureRun(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    neg-float v15, v2

    .line 374
    .local v15, w:F
    add-float v9, p6, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p1

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v2 .. v14}, Landroid/text/TextLine;->handleRun(IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move v2, v15

    .line 379
    .end local v15           #w:F
    :goto_3c
    return v2

    .line 372
    :cond_3d
    const/4 v2, 0x0

    goto :goto_9

    .line 379
    :cond_3f
    const/4 v13, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p1

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v14, p10

    invoke-direct/range {v2 .. v14}, Landroid/text/TextLine;->handleRun(IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    goto :goto_3c
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .registers 31
    .parameter "c"
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 902
    if-eqz p7, :cond_26

    const/4 v1, 0x1

    move v9, v1

    .line 903
    .local v9, flags:I
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mCharsValid:Z

    move v1, v0

    if-eqz v1, :cond_29

    .line 904
    sub-int v4, p4, p3

    .line 905
    .local v4, count:I
    sub-int v6, p6, p5

    .line 906
    .local v6, contextCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object v2, v0

    move/from16 v0, p9

    int-to-float v0, v0

    move v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 913
    .end local v4           #count:I
    .end local v6           #contextCount:I
    :goto_25
    return-void

    .line 902
    .end local v9           #flags:I
    :cond_26
    const/4 v1, 0x0

    move v9, v1

    goto :goto_4

    .line 909
    .restart local v9       #flags:I
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v20, v0

    .line 910
    .local v20, delta:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object v11, v0

    add-int v12, v20, p3

    add-int v13, v20, p4

    add-int v14, v20, p5

    add-int v15, v20, p6

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v10, p1

    move/from16 v16, p8

    move/from16 v18, v9

    move-object/from16 v19, p2

    invoke-virtual/range {v10 .. v19}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    goto :goto_25
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .registers 8
    .parameter "fmi"
    .parameter "wp"

    .prologue
    .line 666
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 667
    .local v4, previousTop:I
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 668
    .local v0, previousAscent:I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 669
    .local v2, previousDescent:I
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 670
    .local v1, previousBottom:I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 672
    .local v3, previousLeading:I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 674
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 675
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 676
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 677
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 678
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 679
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .registers 32
    .parameter "runIndex"
    .parameter "runStart"
    .parameter "runLimit"
    .parameter "runIsRtl"
    .parameter "offset"
    .parameter "after"

    .prologue
    .line 600
    if-ltz p1, :cond_e

    if-eqz p6, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v5, v0

    :goto_9
    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_40

    .line 604
    :cond_e
    if-eqz p6, :cond_29

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v6, v0

    add-int v6, v6, p5

    invoke-static {v5, v6}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v6, v0

    sub-int/2addr v5, v6

    .line 657
    :goto_26
    return v5

    .line 600
    :cond_27
    const/4 v5, 0x0

    goto :goto_9

    .line 607
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v6, v0

    add-int v6, v6, p5

    invoke-static {v5, v6}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v6, v0

    sub-int/2addr v5, v6

    goto :goto_26

    .line 610
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object v4, v0

    .line 611
    .local v4, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 613
    move/from16 v6, p2

    .line 615
    .local v6, spanStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v5, v0

    if-nez v5, :cond_75

    .line 616
    move/from16 v22, p3

    .line 651
    .local v22, spanLimit:I
    :cond_58
    if-eqz p4, :cond_fc

    const/4 v5, 0x1

    move v8, v5

    .line 652
    .local v8, flags:I
    :goto_5c
    if-eqz p6, :cond_100

    const/4 v5, 0x0

    move v10, v5

    .line 653
    .local v10, cursorOpt:I
    :goto_60
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mCharsValid:Z

    move v5, v0

    if-eqz v5, :cond_104

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object v5, v0

    sub-int v7, v22, v6

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v5

    goto :goto_26

    .line 618
    .end local v8           #flags:I
    .end local v10           #cursorOpt:I
    .end local v22           #spanLimit:I
    :cond_75
    if-eqz p6, :cond_e4

    add-int/lit8 v5, p5, 0x1

    move/from16 v24, v5

    .line 619
    .local v24, target:I
    :goto_7b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v5, v0

    add-int v19, v5, p3

    .line 621
    .local v19, limit:I
    :goto_82
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v7, v0

    add-int/2addr v7, v6

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v5

    move v1, v7

    move/from16 v2, v19

    move-object v3, v8

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v7, v0

    sub-int v22, v5, v7

    .line 623
    .restart local v22       #spanLimit:I
    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_e7

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v7, v0

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v8, v0

    add-int v8, v8, v22

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/style/MetricAffectingSpan;

    .line 632
    .local v23, spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_58

    .line 633
    const/16 v20, 0x0

    .line 634
    .local v20, replacement:Landroid/text/style/ReplacementSpan;
    const/16 v18, 0x0

    .local v18, j:I
    :goto_c9
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_f1

    .line 635
    aget-object v21, v23, v18

    .line 636
    .local v21, span:Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/text/style/ReplacementSpan;

    move v5, v0

    if-eqz v5, :cond_ea

    .line 637
    move-object/from16 v0, v21

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object/from16 v20, v0

    .line 634
    :goto_e1
    add-int/lit8 v18, v18, 0x1

    goto :goto_c9

    .end local v18           #j:I
    .end local v19           #limit:I
    .end local v20           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v21           #span:Landroid/text/style/MetricAffectingSpan;
    .end local v22           #spanLimit:I
    .end local v23           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v24           #target:I
    :cond_e4
    move/from16 v24, p5

    .line 618
    goto :goto_7b

    .line 626
    .restart local v19       #limit:I
    .restart local v22       #spanLimit:I
    .restart local v24       #target:I
    :cond_e7
    move/from16 v6, v22

    goto :goto_82

    .line 639
    .restart local v18       #j:I
    .restart local v20       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v21       #span:Landroid/text/style/MetricAffectingSpan;
    .restart local v23       #spans:[Landroid/text/style/MetricAffectingSpan;
    :cond_ea
    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_e1

    .line 643
    .end local v21           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_f1
    if-eqz v20, :cond_58

    .line 646
    if-eqz p6, :cond_f9

    move/from16 v5, v22

    goto/16 :goto_26

    :cond_f9
    move v5, v6

    goto/16 :goto_26

    .line 651
    .end local v18           #j:I
    .end local v19           #limit:I
    .end local v20           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v23           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v24           #target:I
    :cond_fc
    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_5c

    .line 652
    .restart local v8       #flags:I
    :cond_100
    const/4 v5, 0x2

    move v10, v5

    goto/16 :goto_60

    .line 657
    .restart local v10       #cursorOpt:I
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v5, v0

    add-int v13, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v5, v0

    add-int v14, v5, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v5, v0

    add-int v16, v5, p5

    move-object v11, v4

    move v15, v8

    move/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v6, v0

    .end local v6           #spanStart:I
    sub-int/2addr v5, v6

    goto/16 :goto_26
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 25
    .parameter "replacement"
    .parameter "wp"
    .parameter "runIndex"
    .parameter "start"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 773
    const/4 v10, 0x0

    .line 775
    .local v10, ret:F
    iget v0, p0, Landroid/text/TextLine;->mStart:I

    add-int v3, v0, p4

    .line 776
    .local v3, textStart:I
    iget v0, p0, Landroid/text/TextLine;->mStart:I

    add-int v4, v0, p5

    .line 778
    .local v4, textLimit:I
    if-nez p13, :cond_f

    if-eqz p7, :cond_1a

    if-eqz p6, :cond_1a

    .line 779
    :cond_f
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v5, p12

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v10, v0

    .line 782
    :cond_1a
    if-eqz p7, :cond_31

    .line 783
    if-eqz p6, :cond_20

    .line 784
    sub-float p8, p8, v10

    .line 786
    :cond_20
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object v0, p1

    move-object/from16 v1, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 790
    :cond_31
    if-eqz p6, :cond_35

    neg-float v0, v10

    :goto_34
    return v0

    :cond_35
    move v0, v10

    goto :goto_34
.end method

.method private handleRun(IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 40
    .parameter "runIndex"
    .parameter "start"
    .parameter "measureLimit"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 821
    move/from16 v24, p7

    .line 822
    .local v24, ox:F
    move/from16 v6, p2

    .local v6, i:I
    :goto_4
    move v0, v6

    move/from16 v1, p3

    if-ge v0, v1, :cond_168

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object v4, v0

    .line 824
    .local v4, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object v2, v0

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v2, v0

    if-nez v2, :cond_50

    .line 828
    move/from16 v13, p4

    .line 829
    .local v13, inext:I
    move/from16 v7, p3

    .line 860
    .local v7, mlimit:I
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v2, v0

    if-eqz v2, :cond_2a

    if-nez p6, :cond_e8

    .line 861
    :cond_2a
    if-nez p12, :cond_31

    move v0, v7

    move/from16 v1, p3

    if-ge v0, v1, :cond_e3

    :cond_31
    const/4 v2, 0x1

    move/from16 v21, v2

    :goto_34
    move-object/from16 v8, p0

    move-object v9, v4

    move v10, v6

    move v11, v7

    move v12, v6

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    move-object/from16 v20, p11

    invoke-direct/range {v8 .. v21}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p7, p7, v2

    .line 822
    :cond_4e
    :goto_4e
    move v6, v13

    goto :goto_4

    .line 831
    .end local v7           #mlimit:I
    .end local v13           #inext:I
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v3, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v5, v0

    add-int v5, v5, p4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v3, v5, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v3, v0

    sub-int v22, v2, v3

    .line 834
    .local v22, inext:I
    move/from16 v0, v22

    move/from16 v1, p3

    if-ge v0, v1, :cond_af

    move/from16 v7, v22

    .line 835
    .restart local v7       #mlimit:I
    :goto_77
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v3, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v5, v0

    add-int/2addr v5, v7

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v3, v5, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/text/style/MetricAffectingSpan;

    .line 838
    .local v26, spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v26

    array-length v0, v0

    move v2, v0

    if-lez v2, :cond_16b

    .line 839
    const/4 v3, 0x0

    .line 840
    .local v3, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_98
    move-object/from16 v0, v26

    array-length v0, v0

    move v2, v0

    if-ge v10, v2, :cond_b9

    .line 841
    aget-object v25, v26, v10

    .line 842
    .local v25, span:Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/text/style/ReplacementSpan;

    move v2, v0

    if-eqz v2, :cond_b2

    .line 843
    move-object/from16 v0, v25

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v3, v0

    .line 840
    :goto_ac
    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    .end local v3           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v7           #mlimit:I
    .end local v10           #j:I
    .end local v25           #span:Landroid/text/style/MetricAffectingSpan;
    .end local v26           #spans:[Landroid/text/style/MetricAffectingSpan;
    :cond_af
    move/from16 v7, p3

    .line 834
    goto :goto_77

    .line 847
    .restart local v3       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v7       #mlimit:I
    .restart local v10       #j:I
    .restart local v25       #span:Landroid/text/style/MetricAffectingSpan;
    .restart local v26       #spans:[Landroid/text/style/MetricAffectingSpan;
    :cond_b2
    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_ac

    .line 851
    .end local v25           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_b9
    if-eqz v3, :cond_16b

    .line 852
    if-nez p12, :cond_c2

    move v0, v7

    move/from16 v1, p3

    if-ge v0, v1, :cond_e0

    :cond_c2
    const/4 v2, 0x1

    move v15, v2

    :goto_c4
    move-object/from16 v2, p0

    move/from16 v5, p1

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v2 .. v15}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .end local v10           #j:I
    move-result v2

    add-float p7, p7, v2

    move/from16 v13, v22

    .line 855
    .end local v22           #inext:I
    .restart local v13       #inext:I
    goto/16 :goto_4e

    .line 852
    .end local v13           #inext:I
    .restart local v10       #j:I
    .restart local v22       #inext:I
    :cond_e0
    const/4 v2, 0x0

    move v15, v2

    goto :goto_c4

    .line 861
    .end local v3           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v10           #j:I
    .end local v22           #inext:I
    .end local v26           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v13       #inext:I
    :cond_e3
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_34

    .line 864
    :cond_e8
    move v10, v6

    .restart local v10       #j:I
    :goto_e9
    if-ge v10, v7, :cond_4e

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v3, v0

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v5, v0

    add-int/2addr v5, v7

    const-class v8, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v3, v5, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v3, v0

    sub-int v11, v2, v3

    .line 868
    .local v11, jnext:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v3, v0

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move v5, v0

    add-int/2addr v5, v11

    const-class v8, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v3, v5, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/text/style/CharacterStyle;

    .line 871
    .local v26, spans:[Landroid/text/style/CharacterStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object v2, v0

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 872
    const/16 v23, 0x0

    .local v23, k:I
    :goto_12c
    move-object/from16 v0, v26

    array-length v0, v0

    move v2, v0

    move/from16 v0, v23

    move v1, v2

    if-ge v0, v1, :cond_140

    .line 873
    aget-object v25, v26, v23

    .line 874
    .local v25, span:Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 872
    add-int/lit8 v23, v23, 0x1

    goto :goto_12c

    .line 877
    .end local v25           #span:Landroid/text/style/CharacterStyle;
    :cond_140
    if-nez p12, :cond_147

    move v0, v11

    move/from16 v1, p3

    if-ge v0, v1, :cond_164

    :cond_147
    const/4 v2, 0x1

    move/from16 v21, v2

    :goto_14a
    move-object/from16 v8, p0

    move-object v9, v4

    move v12, v6

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    move-object/from16 v20, p11

    invoke-direct/range {v8 .. v21}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p7, p7, v2

    .line 864
    move v10, v11

    goto :goto_e9

    .line 877
    :cond_164
    const/4 v2, 0x0

    move/from16 v21, v2

    goto :goto_14a

    .line 883
    .end local v4           #wp:Landroid/text/TextPaint;
    .end local v7           #mlimit:I
    .end local v10           #j:I
    .end local v11           #jnext:I
    .end local v13           #inext:I
    .end local v23           #k:I
    .end local v26           #spans:[Landroid/text/style/CharacterStyle;
    :cond_168
    sub-float v2, p7, v24

    return v2

    .restart local v4       #wp:Landroid/text/TextPaint;
    .restart local v7       #mlimit:I
    .restart local v22       #inext:I
    .local v26, spans:[Landroid/text/style/MetricAffectingSpan;
    :cond_16b
    move/from16 v13, v22

    .end local v22           #inext:I
    .restart local v13       #inext:I
    goto/16 :goto_21
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 37
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 704
    const/16 v21, 0x0

    .line 706
    .local v21, ret:F
    sub-int v5, p3, p2

    .line 707
    .local v5, runLen:I
    sub-int v7, p5, p4

    .line 708
    .local v7, contextLen:I
    if-nez p13, :cond_13

    if-eqz p7, :cond_2f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move v2, v0

    if-nez v2, :cond_13

    if-eqz p6, :cond_2f

    .line 709
    :cond_13
    if-eqz p6, :cond_a4

    const/4 v2, 0x1

    move v8, v2

    .line 710
    .local v8, flags:I
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mCharsValid:Z

    move v2, v0

    if-eqz v2, :cond_a8

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object v3, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v21

    .line 721
    .end local v8           #flags:I
    :cond_2f
    :goto_2f
    if-eqz p12, :cond_38

    .line 722
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 725
    :cond_38
    if-eqz p7, :cond_9d

    .line 726
    if-eqz p6, :cond_3e

    .line 727
    sub-float p8, p8, v21

    .line 730
    :cond_3e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move v2, v0

    if-eqz v2, :cond_81

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v19

    .line 732
    .local v19, color:I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v22

    .line 733
    .local v22, s:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move v2, v0

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 734
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 736
    move/from16 v0, p9

    int-to-float v0, v0

    move v11, v0

    add-float v12, p8, v21

    move/from16 v0, p11

    int-to-float v0, v0

    move v13, v0

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 738
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 739
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 742
    .end local v19           #color:I
    .end local v22           #s:Landroid/graphics/Paint$Style;
    :cond_81
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v2, v0

    add-int v18, p10, v2

    move-object/from16 v9, p0

    move-object/from16 v10, p7

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p8

    invoke-direct/range {v9 .. v18}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 746
    :cond_9d
    if-eqz p6, :cond_c8

    move/from16 v0, v21

    neg-float v0, v0

    move v2, v0

    :goto_a3
    return v2

    .line 709
    :cond_a4
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_17

    .line 714
    .restart local v8       #flags:I
    :cond_a8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v20, v0

    .line 715
    .local v20, delta:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object v10, v0

    add-int v11, v20, p2

    add-int v12, v20, p3

    add-int v13, v20, p4

    add-int v14, v20, p5

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p1

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F

    move-result v21

    goto/16 :goto_2f

    .end local v8           #flags:I
    .end local v20           #delta:I
    :cond_c8
    move/from16 v2, v21

    .line 746
    goto :goto_a3
.end method

.method private measureRun(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 20
    .parameter "runIndex"
    .parameter "start"
    .parameter "offset"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "fmi"

    .prologue
    .line 398
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleRun(IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .registers 5

    .prologue
    .line 68
    sget-object v2, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 69
    :try_start_3
    sget-object v3, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    array-length v0, v3

    .local v0, i:I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 70
    sget-object v3, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    .line 71
    sget-object v3, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    aget-object v1, v3, v0

    .line 72
    .local v1, tl:Landroid/text/TextLine;
    sget-object v3, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 73
    monitor-exit v2

    .line 78
    :goto_1a
    return-object v1

    .line 76
    .end local v1           #tl:Landroid/text/TextLine;
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 77
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    .line 78
    .restart local v1       #tl:Landroid/text/TextLine;
    goto :goto_1a

    .line 76
    .end local v0           #i:I
    .end local v1           #tl:Landroid/text/TextLine;
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v3
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .registers 5
    .parameter "tl"

    .prologue
    const/4 v3, 0x0

    .line 89
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 90
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 91
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 92
    sget-object v1, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    monitor-enter v1

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    :try_start_b
    sget-object v2, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    .line 94
    sget-object v2, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-nez v2, :cond_1c

    .line 95
    sget-object v2, Landroid/text/TextLine;->cached:[Landroid/text/TextLine;

    aput-object p0, v2, v0

    .line 99
    :cond_1a
    monitor-exit v1

    .line 100
    return-object v3

    .line 93
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 99
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw v2
.end method


# virtual methods
.method ascent(I)F
    .registers 11
    .parameter "pos"

    .prologue
    .line 923
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v6, :cond_b

    .line 924
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    .line 939
    :goto_a
    return v6

    .line 927
    :cond_b
    iget v6, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v6

    .line 928
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int/lit8 v7, p1, 0x1

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, p1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 930
    .local v4, spans:[Landroid/text/style/MetricAffectingSpan;
    array-length v6, v4

    if-nez v6, :cond_24

    .line 931
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_a

    .line 934
    :cond_24
    iget-object v5, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 935
    .local v5, wp:Landroid/text/TextPaint;
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 936
    move-object v0, v4

    .local v0, arr$:[Landroid/text/style/MetricAffectingSpan;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2e
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    .line 937
    .local v3, span:Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v3, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 939
    .end local v3           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_38
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_a
.end method

.method draw(Landroid/graphics/Canvas;FIII)V
    .registers 35
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mHasTabs:Z

    move v5, v0

    if-nez v5, :cond_4b

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move-object v5, v0

    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v5, v6, :cond_29

    .line 176
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v5 .. v15}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIIZFIIIZ)F

    .line 242
    :cond_28
    :goto_28
    return-void

    .line 179
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move-object v5, v0

    sget-object v6, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v5, v6, :cond_4b

    .line 180
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v9, v0

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v5 .. v15}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIIZFIIIZ)F

    goto :goto_28

    .line 185
    :cond_4b
    const/16 v22, 0x0

    .line 186
    .local v22, h:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v26, v0

    .line 187
    .local v26, runs:[I
    const/16 v21, 0x0

    .line 189
    .local v21, emojiRect:Landroid/graphics/RectF;
    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x2

    sub-int v23, v5, v6

    .line 190
    .local v23, lastRunIndex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_61
    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    if-ge v7, v5, :cond_28

    .line 191
    aget v25, v26, v7

    .line 192
    .local v25, runStart:I
    add-int/lit8 v5, v7, 0x1

    aget v5, v26, v5

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    add-int v24, v25, v5

    .line 193
    .local v24, runLimit:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v5, v0

    move/from16 v0, v24

    move v1, v5

    if-le v0, v1, :cond_83

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v24, v0

    .line 196
    :cond_83
    add-int/lit8 v5, v7, 0x1

    aget v5, v26, v5

    const/high16 v6, 0x400

    and-int/2addr v5, v6

    if-eqz v5, :cond_144

    const/4 v5, 0x1

    move v10, v5

    .line 198
    .local v10, runIsRtl:Z
    :goto_8e
    move/from16 v8, v25

    .line 199
    .local v8, segstart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v19, v0

    .line 200
    .local v19, chars:[C
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mHasTabs:Z

    move v5, v0

    if-eqz v5, :cond_148

    move/from16 v9, v25

    .local v9, j:I
    :goto_9f
    move v0, v9

    move/from16 v1, v24

    if-gt v0, v1, :cond_1ae

    .line 201
    const/16 v20, 0x0

    .line 202
    .local v20, codept:I
    const/16 v17, 0x0

    .line 204
    .local v17, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mHasTabs:Z

    move v5, v0

    if-eqz v5, :cond_f2

    move v0, v9

    move/from16 v1, v24

    if-ge v0, v1, :cond_f2

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object v5, v0

    aget-char v20, v5, v9

    .line 206
    const v5, 0xd800

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_f2

    const v5, 0xdc00

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_f2

    add-int/lit8 v5, v9, 0x1

    move v0, v5

    move/from16 v1, v24

    if-ge v0, v1, :cond_f2

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object v5, v0

    invoke-static {v5, v9}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v20

    .line 208
    sget v5, Landroid/text/Layout;->MIN_EMOJI:I

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_14c

    sget v5, Landroid/text/Layout;->MAX_EMOJI:I

    move/from16 v0, v20

    move v1, v5

    if-gt v0, v1, :cond_14c

    .line 209
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 217
    :cond_f2
    move v0, v9

    move/from16 v1, v24

    if-eq v0, v1, :cond_100

    const/16 v5, 0x9

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_100

    if-eqz v17, :cond_140

    .line 218
    :cond_100
    add-float v11, p2, v22

    move v0, v7

    move/from16 v1, v23

    if-ne v0, v1, :cond_10e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v5, v0

    if-eq v9, v5, :cond_157

    :cond_10e
    const/4 v5, 0x1

    move v15, v5

    :goto_110
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v5 .. v15}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIIZFIIIZ)F

    move-result v5

    add-float v22, v22, v5

    .line 221
    const/16 v5, 0x9

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_15a

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mDir:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mDir:I

    move v6, v0

    int-to-float v6, v6

    mul-float v6, v6, v22

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v6

    mul-float v22, v5, v6

    .line 238
    .end local v8           #segstart:I
    :cond_13e
    :goto_13e
    add-int/lit8 v8, v9, 0x1

    .line 200
    .restart local v8       #segstart:I
    :cond_140
    :goto_140
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9f

    .line 196
    .end local v8           #segstart:I
    .end local v9           #j:I
    .end local v10           #runIsRtl:Z
    .end local v17           #bm:Landroid/graphics/Bitmap;
    .end local v19           #chars:[C
    .end local v20           #codept:I
    :cond_144
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_8e

    .restart local v8       #segstart:I
    .restart local v10       #runIsRtl:Z
    .restart local v19       #chars:[C
    :cond_148
    move/from16 v9, v24

    .line 200
    goto/16 :goto_9f

    .line 210
    .restart local v9       #j:I
    .restart local v17       #bm:Landroid/graphics/Bitmap;
    .restart local v20       #codept:I
    :cond_14c
    const v5, 0xffff

    move/from16 v0, v20

    move v1, v5

    if-le v0, v1, :cond_f2

    .line 211
    add-int/lit8 v9, v9, 0x1

    .line 212
    goto :goto_140

    .line 218
    :cond_157
    const/4 v5, 0x0

    move v15, v5

    goto :goto_110

    .line 223
    :cond_15a
    if-eqz v17, :cond_13e

    .line 224
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->ascent(I)F

    move-result v18

    .line 225
    .local v18, bmAscent:F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v16, v0

    .line 226
    .local v16, bitmapHeight:F
    move/from16 v0, v18

    neg-float v0, v0

    move v5, v0

    div-float v27, v5, v16

    .line 227
    .local v27, scale:F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v28, v5, v27

    .line 229
    .local v28, width:F
    if-nez v21, :cond_17f

    .line 230
    new-instance v21, Landroid/graphics/RectF;

    .end local v21           #emojiRect:Landroid/graphics/RectF;
    invoke-direct/range {v21 .. v21}, Landroid/graphics/RectF;-><init>()V

    .line 232
    .restart local v21       #emojiRect:Landroid/graphics/RectF;
    :cond_17f
    add-float v5, p2, v22

    move/from16 v0, p4

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v18

    add-float v8, p2, v22

    add-float v8, v8, v28

    move/from16 v0, p4

    int-to-float v0, v0

    move v11, v0

    move-object/from16 v0, v21

    move v1, v5

    move v2, v6

    move v3, v8

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    .end local v8           #segstart:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v5

    move-object/from16 v3, v21

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 235
    add-float v22, v22, v28

    .line 236
    add-int/lit8 v9, v9, 0x1

    goto :goto_13e

    .line 190
    .end local v16           #bitmapHeight:F
    .end local v17           #bm:Landroid/graphics/Bitmap;
    .end local v18           #bmAscent:F
    .end local v20           #codept:I
    .end local v27           #scale:F
    .end local v28           #width:F
    .restart local v8       #segstart:I
    :cond_1ae
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_61
.end method

.method getOffsetToLeftRightOf(IZ)I
    .registers 33
    .parameter "cursor"
    .parameter "toLeft"

    .prologue
    .line 432
    const/16 v17, 0x0

    .line 433
    .local v17, lineStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 434
    .local v16, lineEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mDir:I

    move v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_89

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 435
    .local v21, paraIsRtl:Z
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move-object v2, v0

    move-object v0, v2

    iget-object v0, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v28, v0

    .line 437
    .local v28, runs:[I
    const/16 v27, 0x0

    .local v27, runLevel:I
    move/from16 v4, v17

    .local v4, runStart:I
    move/from16 v5, v16

    .local v5, runLimit:I
    const/16 v18, -0x1

    .line 438
    .local v18, newCaret:I
    const/16 v29, 0x0

    .line 440
    .local v29, trailing:Z
    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8d

    .line 441
    const/4 v3, -0x2

    .line 519
    .local v3, runIndex:I
    :cond_2e
    :goto_2e
    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_157

    const/4 v2, 0x1

    move v8, v2

    .line 520
    .local v8, advance:Z
    :goto_36
    if-eqz v8, :cond_15b

    const/4 v2, 0x2

    :goto_39
    add-int v10, v3, v2

    .line 521
    .local v10, otherRunIndex:I
    if-ltz v10, :cond_17c

    move-object/from16 v0, v28

    array-length v0, v0

    move v2, v0

    if-ge v10, v2, :cond_17c

    .line 522
    aget v2, v28, v10

    add-int v11, v17, v2

    .line 523
    .local v11, otherRunStart:I
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    const v6, 0x3ffffff

    and-int/2addr v2, v6

    add-int v12, v11, v2

    .line 525
    .local v12, otherRunLimit:I
    move v0, v12

    move/from16 v1, v16

    if-le v0, v1, :cond_58

    .line 526
    move/from16 v12, v16

    .line 528
    :cond_58
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v20, v2, 0x3f

    .line 530
    .local v20, otherRunLevel:I
    and-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_15e

    const/4 v2, 0x1

    move v13, v2

    .line 532
    .local v13, otherRunIsRtl:Z
    :goto_66
    move/from16 v0, p2

    move v1, v13

    if-ne v0, v1, :cond_162

    const/4 v2, 0x1

    move v8, v2

    .line 533
    :goto_6d
    const/4 v2, -0x1

    move/from16 v0, v18

    move v1, v2

    if-ne v0, v1, :cond_16c

    .line 534
    if-eqz v8, :cond_166

    move v14, v11

    :goto_76
    move-object/from16 v9, p0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 537
    if-eqz v8, :cond_169

    move v2, v12

    :goto_80
    move/from16 v0, v18

    move v1, v2

    if-ne v0, v1, :cond_176

    .line 540
    move v3, v10

    .line 541
    move/from16 v27, v20

    .line 542
    goto :goto_2e

    .line 434
    .end local v3           #runIndex:I
    .end local v4           #runStart:I
    .end local v5           #runLimit:I
    .end local v8           #advance:Z
    .end local v10           #otherRunIndex:I
    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v18           #newCaret:I
    .end local v20           #otherRunLevel:I
    .end local v21           #paraIsRtl:Z
    .end local v27           #runLevel:I
    .end local v28           #runs:[I
    .end local v29           #trailing:Z
    :cond_89
    const/4 v2, 0x0

    move/from16 v21, v2

    goto :goto_13

    .line 442
    .restart local v4       #runStart:I
    .restart local v5       #runLimit:I
    .restart local v18       #newCaret:I
    .restart local v21       #paraIsRtl:Z
    .restart local v27       #runLevel:I
    .restart local v28       #runs:[I
    .restart local v29       #trailing:Z
    :cond_8d
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_98

    .line 443
    move-object/from16 v0, v28

    array-length v0, v0

    move v3, v0

    .restart local v3       #runIndex:I
    goto :goto_2e

    .line 447
    .end local v3           #runIndex:I
    :cond_98
    const/4 v3, 0x0

    .restart local v3       #runIndex:I
    :goto_99
    move-object/from16 v0, v28

    array-length v0, v0

    move v2, v0

    if-ge v3, v2, :cond_113

    .line 448
    aget v2, v28, v3

    add-int v4, v17, v2

    .line 449
    move/from16 v0, p1

    move v1, v4

    if-lt v0, v1, :cond_149

    .line 450
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    const v5, 0x3ffffff

    and-int/2addr v2, v5

    add-int v5, v4, v2

    .line 451
    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_b9

    .line 452
    move/from16 v5, v16

    .line 454
    :cond_b9
    move/from16 v0, p1

    move v1, v5

    if-ge v0, v1, :cond_149

    .line 455
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v27, v2, 0x3f

    .line 457
    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_113

    .line 462
    const/4 v2, 0x1

    sub-int v22, p1, v2

    .line 463
    .local v22, pos:I
    const/16 v23, 0x0

    .local v23, prevRunIndex:I
    :goto_d0
    move-object/from16 v0, v28

    array-length v0, v0

    move v2, v0

    move/from16 v0, v23

    move v1, v2

    if-ge v0, v1, :cond_113

    .line 464
    aget v2, v28, v23

    add-int v26, v17, v2

    .line 465
    .local v26, prevRunStart:I
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_146

    .line 466
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    const v6, 0x3ffffff

    and-int/2addr v2, v6

    add-int v25, v26, v2

    .line 468
    .local v25, prevRunLimit:I
    move/from16 v0, v25

    move/from16 v1, v16

    if-le v0, v1, :cond_f5

    .line 469
    move/from16 v25, v16

    .line 471
    :cond_f5
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_146

    .line 472
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v24, v2, 0x3f

    .line 474
    .local v24, prevRunLevel:I
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_146

    .line 476
    move/from16 v3, v23

    .line 477
    move/from16 v27, v24

    .line 478
    move/from16 v4, v26

    .line 479
    move/from16 v5, v25

    .line 480
    const/16 v29, 0x1

    .line 497
    .end local v22           #pos:I
    .end local v23           #prevRunIndex:I
    .end local v24           #prevRunLevel:I
    .end local v25           #prevRunLimit:I
    .end local v26           #prevRunStart:I
    :cond_113
    move-object/from16 v0, v28

    array-length v0, v0

    move v2, v0

    if-eq v3, v2, :cond_2e

    .line 498
    and-int/lit8 v2, v27, 0x1

    if-eqz v2, :cond_14d

    const/4 v2, 0x1

    move v6, v2

    .line 499
    .local v6, runIsRtl:Z
    :goto_11f
    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_150

    const/4 v2, 0x1

    move v8, v2

    .line 500
    .restart local v8       #advance:Z
    :goto_126
    if-eqz v8, :cond_153

    move v2, v5

    :goto_129
    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_133

    move v0, v8

    move/from16 v1, v29

    if-eq v0, v1, :cond_2e

    :cond_133
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 502
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 506
    if-eqz v8, :cond_155

    move v2, v5

    :goto_13e
    move/from16 v0, v18

    move v1, v2

    if-eq v0, v1, :cond_2e

    move/from16 v19, v18

    .line 577
    .end local v6           #runIsRtl:Z
    .end local v18           #newCaret:I
    .local v19, newCaret:I
    :goto_145
    return v19

    .line 463
    .end local v8           #advance:Z
    .end local v19           #newCaret:I
    .restart local v18       #newCaret:I
    .restart local v22       #pos:I
    .restart local v23       #prevRunIndex:I
    .restart local v26       #prevRunStart:I
    :cond_146
    add-int/lit8 v23, v23, 0x2

    goto :goto_d0

    .line 447
    .end local v22           #pos:I
    .end local v23           #prevRunIndex:I
    .end local v26           #prevRunStart:I
    :cond_149
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_99

    .line 498
    :cond_14d
    const/4 v2, 0x0

    move v6, v2

    goto :goto_11f

    .line 499
    .restart local v6       #runIsRtl:Z
    :cond_150
    const/4 v2, 0x0

    move v8, v2

    goto :goto_126

    .restart local v8       #advance:Z
    :cond_153
    move v2, v4

    .line 500
    goto :goto_129

    :cond_155
    move v2, v4

    .line 506
    goto :goto_13e

    .line 519
    .end local v6           #runIsRtl:Z
    .end local v8           #advance:Z
    :cond_157
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_36

    .line 520
    .restart local v8       #advance:Z
    :cond_15b
    const/4 v2, -0x2

    goto/16 :goto_39

    .line 530
    .restart local v10       #otherRunIndex:I
    .restart local v11       #otherRunStart:I
    .restart local v12       #otherRunLimit:I
    .restart local v20       #otherRunLevel:I
    :cond_15e
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_66

    .line 532
    .restart local v13       #otherRunIsRtl:Z
    :cond_162
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_6d

    :cond_166
    move v14, v12

    .line 534
    goto/16 :goto_76

    :cond_169
    move v2, v11

    .line 537
    goto/16 :goto_80

    .line 548
    :cond_16c
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_176

    .line 550
    if-eqz v8, :cond_179

    move/from16 v18, v11

    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v20           #otherRunLevel:I
    :cond_176
    :goto_176
    move/from16 v19, v18

    .line 577
    .end local v18           #newCaret:I
    .restart local v19       #newCaret:I
    goto :goto_145

    .end local v19           #newCaret:I
    .restart local v11       #otherRunStart:I
    .restart local v12       #otherRunLimit:I
    .restart local v13       #otherRunIsRtl:Z
    .restart local v18       #newCaret:I
    .restart local v20       #otherRunLevel:I
    :cond_179
    move/from16 v18, v12

    .line 550
    goto :goto_176

    .line 555
    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v20           #otherRunLevel:I
    :cond_17c
    const/4 v2, -0x1

    move/from16 v0, v18

    move v1, v2

    if-ne v0, v1, :cond_192

    .line 559
    if-eqz v8, :cond_18e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move/from16 v18, v2

    .line 560
    :goto_18d
    goto :goto_176

    .line 559
    :cond_18e
    const/4 v2, -0x1

    move/from16 v18, v2

    goto :goto_18d

    .line 571
    :cond_192
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_176

    .line 572
    if-eqz v8, :cond_19d

    move/from16 v18, v16

    :goto_19c
    goto :goto_176

    :cond_19d
    move/from16 v18, v17

    goto :goto_19c
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 26
    .parameter "offset"
    .parameter "trailing"
    .parameter "fmi"

    .prologue
    .line 268
    if-eqz p2, :cond_b

    const/4 v2, 0x1

    sub-int v2, p1, v2

    move/from16 v19, v2

    .line 269
    .local v19, target:I
    :goto_7
    if-gez v19, :cond_e

    .line 270
    const/4 v2, 0x0

    .line 349
    :goto_a
    return v2

    .end local v19           #target:I
    :cond_b
    move/from16 v19, p1

    .line 268
    goto :goto_7

    .line 273
    .restart local v19       #target:I
    :cond_e
    const/4 v14, 0x0

    .line 275
    .local v14, h:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mHasTabs:Z

    move v2, v0

    if-nez v2, :cond_4e

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move-object v2, v0

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_32

    .line 277
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v6, v0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->measureRun(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    goto :goto_a

    .line 279
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move-object v2, v0

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_4e

    .line 280
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v6, v0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->measureRun(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    goto :goto_a

    .line 284
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object v12, v0

    .line 285
    .local v12, chars:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move-object v2, v0

    move-object v0, v2

    iget-object v0, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    .line 286
    .local v18, runs:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5e
    move-object/from16 v0, v18

    array-length v0, v0

    move v2, v0

    if-ge v3, v2, :cond_191

    .line 287
    aget v17, v18, v3

    .line 288
    .local v17, runStart:I
    add-int/lit8 v2, v3, 0x1

    aget v2, v18, v2

    const v4, 0x3ffffff

    and-int/2addr v2, v4

    add-int v16, v17, v2

    .line 289
    .local v16, runLimit:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-le v0, v1, :cond_80

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 292
    :cond_80
    add-int/lit8 v2, v3, 0x1

    aget v2, v18, v2

    const/high16 v4, 0x400

    and-int/2addr v2, v4

    if-eqz v2, :cond_104

    const/4 v2, 0x1

    move v7, v2

    .line 294
    .local v7, runIsRtl:Z
    :goto_8b
    move/from16 v4, v17

    .line 295
    .local v4, segstart:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mHasTabs:Z

    move v2, v0

    if-eqz v2, :cond_107

    move/from16 v6, v17

    .local v6, j:I
    :goto_96
    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_18d

    .line 296
    const/4 v13, 0x0

    .line 297
    .local v13, codept:I
    const/4 v10, 0x0

    .line 299
    .local v10, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/TextLine;->mHasTabs:Z

    move v2, v0

    if-eqz v2, :cond_ce

    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_ce

    .line 300
    aget-char v13, v12, v6

    .line 301
    const v2, 0xd800

    if-lt v13, v2, :cond_ce

    const v2, 0xdc00

    if-ge v13, v2, :cond_ce

    add-int/lit8 v2, v6, 0x1

    move v0, v2

    move/from16 v1, v16

    if-ge v0, v1, :cond_ce

    .line 302
    invoke-static {v12, v6}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v13

    .line 303
    sget v2, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v13, v2, :cond_10a

    sget v2, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v13, v2, :cond_10a

    .line 304
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v2, v13}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 312
    :cond_ce
    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_d9

    const/16 v2, 0x9

    if-eq v13, v2, :cond_d9

    if-eqz v10, :cond_111

    .line 313
    :cond_d9
    move/from16 v0, v19

    move v1, v4

    if-lt v0, v1, :cond_114

    move/from16 v0, v19

    move v1, v6

    if-ge v0, v1, :cond_114

    const/4 v2, 0x1

    move v15, v2

    .line 315
    .local v15, inSegment:Z
    :goto_e5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mDir:I

    move v2, v0

    const/4 v5, -0x1

    if-ne v2, v5, :cond_117

    const/4 v2, 0x1

    :goto_ee
    if-ne v2, v7, :cond_119

    const/4 v2, 0x1

    move v9, v2

    .line 316
    .local v9, advance:Z
    :goto_f2
    if-eqz v15, :cond_11c

    if-eqz v9, :cond_11c

    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v8, p3

    .line 317
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->measureRun(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    add-float/2addr v14, v2

    move v2, v14

    goto/16 :goto_a

    .line 292
    .end local v4           #segstart:I
    .end local v6           #j:I
    .end local v7           #runIsRtl:Z
    .end local v9           #advance:Z
    .end local v10           #bm:Landroid/graphics/Bitmap;
    .end local v13           #codept:I
    .end local v15           #inSegment:Z
    :cond_104
    const/4 v2, 0x0

    move v7, v2

    goto :goto_8b

    .restart local v4       #segstart:I
    .restart local v7       #runIsRtl:Z
    :cond_107
    move/from16 v6, v16

    .line 295
    goto :goto_96

    .line 305
    .restart local v6       #j:I
    .restart local v10       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #codept:I
    :cond_10a
    const v2, 0xffff

    if-le v13, v2, :cond_ce

    .line 306
    add-int/lit8 v6, v6, 0x1

    .line 295
    :cond_111
    :goto_111
    add-int/lit8 v6, v6, 0x1

    goto :goto_96

    .line 313
    :cond_114
    const/4 v2, 0x0

    move v15, v2

    goto :goto_e5

    .line 315
    .restart local v15       #inSegment:Z
    :cond_117
    const/4 v2, 0x0

    goto :goto_ee

    :cond_119
    const/4 v2, 0x0

    move v9, v2

    goto :goto_f2

    .restart local v9       #advance:Z
    :cond_11c
    move-object/from16 v2, p0

    move v5, v6

    move-object/from16 v8, p3

    .line 320
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->measureRun(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v20

    .line 321
    .local v20, w:F
    if-eqz v9, :cond_139

    move/from16 v2, v20

    :goto_129
    add-float/2addr v14, v2

    .line 323
    if-eqz v15, :cond_13e

    .line 324
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->measureRun(IIIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    add-float/2addr v14, v2

    move v2, v14

    goto/16 :goto_a

    .line 321
    :cond_139
    move/from16 v0, v20

    neg-float v0, v0

    move v2, v0

    goto :goto_129

    .line 327
    :cond_13e
    const/16 v2, 0x9

    if-ne v13, v2, :cond_168

    .line 328
    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_14a

    move v2, v14

    .line 329
    goto/16 :goto_a

    .line 331
    :cond_14a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mDir:I

    move v2, v0

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mDir:I

    move v4, v0

    .end local v4           #segstart:I
    int-to-float v4, v4

    mul-float/2addr v4, v14

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v4

    mul-float v14, v2, v4

    .line 332
    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_168

    move v2, v14

    .line 333
    goto/16 :goto_a

    .line 337
    :cond_168
    if-eqz v10, :cond_18a

    .line 338
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->ascent(I)F

    move-result v11

    .line 339
    .local v11, bmAscent:F
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    neg-float v4, v11

    mul-float/2addr v2, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v21, v2, v4

    .line 340
    .local v21, wid:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mDir:I

    move v2, v0

    int-to-float v2, v2

    mul-float v2, v2, v21

    add-float/2addr v14, v2

    .line 341
    add-int/lit8 v6, v6, 0x1

    .line 344
    .end local v11           #bmAscent:F
    .end local v21           #wid:F
    :cond_18a
    add-int/lit8 v4, v6, 0x1

    .restart local v4       #segstart:I
    goto :goto_111

    .line 286
    .end local v9           #advance:Z
    .end local v10           #bm:Landroid/graphics/Bitmap;
    .end local v13           #codept:I
    .end local v15           #inSegment:Z
    .end local v20           #w:F
    :cond_18d
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_5e

    .end local v4           #segstart:I
    .end local v6           #j:I
    .end local v7           #runIsRtl:Z
    .end local v16           #runLimit:I
    .end local v17           #runStart:I
    :cond_191
    move v2, v14

    .line 349
    goto/16 :goto_a
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .registers 4
    .parameter "fmi"

    .prologue
    .line 251
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .registers 3
    .parameter "h"

    .prologue
    .line 949
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_b

    .line 950
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    .line 952
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    goto :goto_a
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .registers 19
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "limit"
    .parameter "dir"
    .parameter "directions"
    .parameter "hasTabs"
    .parameter "tabStops"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 118
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 119
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 120
    sub-int v8, p4, p3

    iput v8, p0, Landroid/text/TextLine;->mLen:I

    .line 121
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 122
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 123
    move/from16 v0, p7

    move-object v1, p0

    iput-boolean v0, v1, Landroid/text/TextLine;->mHasTabs:Z

    .line 124
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 126
    const/4 v4, 0x0

    .line 127
    .local v4, hasReplacement:Z
    instance-of v8, p2, Landroid/text/Spanned;

    if-eqz v8, :cond_33

    .line 128
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    move-object p5, v0

    .end local p5
    iput-object p5, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 129
    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p3, p4, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Landroid/text/style/ReplacementSpan;

    array-length v8, p1

    if-lez v8, :cond_93

    const/4 v8, 0x1

    move v4, v8

    .line 133
    :cond_33
    :goto_33
    if-nez v4, :cond_3e

    if-nez p7, :cond_3e

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, p6

    move-object v1, v8

    if-eq v0, v1, :cond_96

    :cond_3e
    const/4 v8, 0x1

    :goto_3f
    iput-boolean v8, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 136
    iget-boolean v8, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v8, :cond_9a

    .line 137
    iget-object v8, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v8, :cond_50

    iget-object v8, p0, Landroid/text/TextLine;->mChars:[C

    array-length v8, v8

    iget v9, p0, Landroid/text/TextLine;->mLen:I

    if-ge v8, v9, :cond_5a

    .line 138
    :cond_50
    iget v8, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v8

    new-array v8, v8, [C

    iput-object v8, p0, Landroid/text/TextLine;->mChars:[C

    .line 140
    :cond_5a
    iget-object v8, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v9, 0x0

    invoke-static {p2, p3, p4, v8, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 141
    if-eqz v4, :cond_9a

    .line 147
    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    .line 148
    .local v2, chars:[C
    move v5, p3

    .local v5, i:I
    :goto_65
    if-ge v5, p4, :cond_9a

    .line 149
    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, v5, p4, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 151
    .local v6, inext:I
    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, v5, v6, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ReplacementSpan;

    array-length v8, p1

    if-lez v8, :cond_98

    .line 153
    sub-int v8, v5, p3

    const v9, 0xfffc

    aput-char v9, v2, v8

    .line 154
    sub-int v8, v5, p3

    add-int/lit8 v7, v8, 0x1

    .local v7, j:I
    sub-int v3, v6, p3

    .local v3, e:I
    :goto_89
    if-ge v7, v3, :cond_98

    .line 155
    const v8, 0xfeff

    aput-char v8, v2, v7

    .line 154
    add-int/lit8 v7, v7, 0x1

    goto :goto_89

    .line 129
    .end local v2           #chars:[C
    .end local v3           #e:I
    .end local v5           #i:I
    .end local v6           #inext:I
    .end local v7           #j:I
    :cond_93
    const/4 v8, 0x0

    move v4, v8

    goto :goto_33

    .line 133
    :cond_96
    const/4 v8, 0x0

    goto :goto_3f

    .line 148
    .restart local v2       #chars:[C
    .restart local v5       #i:I
    .restart local v6       #inext:I
    :cond_98
    move v5, v6

    goto :goto_65

    .line 161
    .end local v2           #chars:[C
    .end local v5           #i:I
    .end local v6           #inext:I
    :cond_9a
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 162
    return-void
.end method

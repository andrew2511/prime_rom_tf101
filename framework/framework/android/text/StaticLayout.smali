.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HORIZONTAL_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 54
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 28
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 64
    if-nez p10, :cond_a7

    move-object/from16 v3, p1

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 905
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 935
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 79
    if-eqz p10, :cond_c4

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Layout$Ellipsizer;

    .line 82
    .local v15, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object v1, v15

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 83
    move/from16 v0, p11

    move-object v1, v15

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 84
    move-object/from16 v0, p10

    move-object v1, v15

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 85
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 87
    const/4 v2, 0x5

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 93
    .end local v15           #e:Landroid/text/Layout$Ellipsizer;
    :goto_46
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [Landroid/text/Layout$Directions;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 97
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 99
    move/from16 v0, p11

    int-to-float v0, v0

    move v13, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v2 .. v14}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 104
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 105
    return-void

    .line 64
    :cond_a7
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v2, v0

    if-eqz v2, :cond_b9

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_4

    :cond_b9
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_4

    .line 89
    :cond_c4
    const/4 v2, 0x3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 90
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto/16 :goto_46
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 45
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 47
    return-void
.end method

.method constructor <init>(Z)V
    .registers 9
    .parameter "ellipsize"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 108
    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 905
    iput v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 935
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 110
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 111
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 112
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 114
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 115
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V
    .registers 28
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"

    .prologue
    .line 700
    cmpg-float v15, p8, p5

    if-gtz v15, :cond_2b

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p7

    add-int/lit8 v16, v16, 0x3

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p7

    add-int/lit8 v16, v16, 0x4

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 775
    :goto_2a
    return-void

    .line 707
    :cond_2b
    const-string/jumbo v15, "\u2026"

    move-object/from16 v0, p9

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 709
    .local v4, ellipsisWidth:F
    sub-int v8, p2, p1

    .line 711
    .local v8, len:I
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object v1, v15

    if-ne v0, v1, :cond_7b

    .line 712
    const/4 v13, 0x0

    .line 715
    .local v13, sum:F
    move v5, v8

    .local v5, i:I
    :goto_40
    if-ltz v5, :cond_52

    .line 716
    const/4 v15, 0x1

    sub-int v15, v5, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    aget v14, p3, v15

    .line 718
    .local v14, w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p5

    if-lez v15, :cond_77

    .line 725
    .end local v14           #w:F
    :cond_52
    const/4 v3, 0x0

    .line 726
    .local v3, ellipsisStart:I
    move v2, v5

    .line 773
    .end local v5           #i:I
    .end local v13           #sum:F
    .local v2, ellipsisCount:I
    :goto_54
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p7

    add-int/lit8 v16, v16, 0x3

    aput v3, v15, v16

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p7

    add-int/lit8 v16, v16, 0x4

    aput v2, v15, v16

    goto :goto_2a

    .line 722
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v5       #i:I
    .restart local v13       #sum:F
    .restart local v14       #w:F
    :cond_77
    add-float/2addr v13, v14

    .line 715
    add-int/lit8 v5, v5, -0x1

    goto :goto_40

    .line 727
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_7b
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object v1, v15

    if-eq v0, v1, :cond_89

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object v1, v15

    if-ne v0, v1, :cond_a2

    .line 728
    :cond_89
    const/4 v13, 0x0

    .line 731
    .restart local v13       #sum:F
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_8b
    if-ge v5, v8, :cond_9a

    .line 732
    add-int v15, v5, p1

    sub-int v15, v15, p4

    aget v14, p3, v15

    .line 734
    .restart local v14       #w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p5

    if-lez v15, :cond_9e

    .line 741
    .end local v14           #w:F
    :cond_9a
    move v3, v5

    .line 742
    .restart local v3       #ellipsisStart:I
    sub-int v2, v8, v5

    .line 743
    .restart local v2       #ellipsisCount:I
    goto :goto_54

    .line 738
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v14       #w:F
    :cond_9e
    add-float/2addr v13, v14

    .line 731
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    .line 744
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_a2
    const/4 v9, 0x0

    .local v9, lsum:F
    const/4 v12, 0x0

    .line 745
    .local v12, rsum:F
    const/4 v7, 0x0

    .local v7, left:I
    move v11, v8

    .line 747
    .local v11, right:I
    sub-float v15, p5, v4

    const/high16 v16, 0x4000

    div-float v10, v15, v16

    .line 748
    .local v10, ravail:F
    move v11, v8

    :goto_ad
    if-ltz v11, :cond_be

    .line 749
    const/4 v15, 0x1

    sub-int v15, v11, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    aget v14, p3, v15

    .line 751
    .restart local v14       #w:F
    add-float v15, v14, v12

    cmpl-float v15, v15, v10

    if-lez v15, :cond_d5

    .line 758
    .end local v14           #w:F
    :cond_be
    sub-float v15, p5, v4

    sub-float v6, v15, v12

    .line 759
    .local v6, lavail:F
    const/4 v7, 0x0

    :goto_c3
    if-ge v7, v11, :cond_d1

    .line 760
    add-int v15, v7, p1

    sub-int v15, v15, p4

    aget v14, p3, v15

    .line 762
    .restart local v14       #w:F
    add-float v15, v14, v9

    cmpl-float v15, v15, v6

    if-lez v15, :cond_d9

    .line 769
    .end local v14           #w:F
    :cond_d1
    move v3, v7

    .line 770
    .restart local v3       #ellipsisStart:I
    sub-int v2, v11, v7

    .restart local v2       #ellipsisCount:I
    goto :goto_54

    .line 755
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .end local v6           #lavail:F
    .restart local v14       #w:F
    :cond_d5
    add-float/2addr v12, v14

    .line 748
    add-int/lit8 v11, v11, -0x1

    goto :goto_ad

    .line 766
    .restart local v6       #lavail:F
    :cond_d9
    add-float/2addr v9, v14

    .line 759
    add-int/lit8 v7, v7, 0x1

    goto :goto_c3
.end method

.method private static final isIdeographic(CZ)Z
    .registers 5
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 498
    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_c

    const/16 v0, 0x2fff

    if-gt p0, v0, :cond_c

    move v0, v1

    .line 575
    :goto_b
    return v0

    .line 501
    :cond_c
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_12

    move v0, v1

    .line 502
    goto :goto_b

    .line 504
    :cond_12
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_23

    const/16 v0, 0x309f

    if-gt p0, v0, :cond_23

    .line 505
    if-nez p1, :cond_1f

    .line 506
    sparse-switch p0, :sswitch_data_88

    :cond_1f
    move v0, v1

    .line 526
    goto :goto_b

    :sswitch_21
    move v0, v2

    .line 523
    goto :goto_b

    .line 528
    :cond_23
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_34

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_34

    .line 529
    if-nez p1, :cond_30

    .line 530
    sparse-switch p0, :sswitch_data_ca

    :cond_30
    move v0, v1

    .line 551
    goto :goto_b

    :sswitch_32
    move v0, v2

    .line 548
    goto :goto_b

    .line 553
    :cond_34
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_3e

    const/16 v0, 0x4db5

    if-gt p0, v0, :cond_3e

    move v0, v1

    .line 554
    goto :goto_b

    .line 556
    :cond_3e
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_49

    const v0, 0x9fbb

    if-gt p0, v0, :cond_49

    move v0, v1

    .line 557
    goto :goto_b

    .line 559
    :cond_49
    const v0, 0xf900

    if-lt p0, v0, :cond_55

    const v0, 0xfad9

    if-gt p0, v0, :cond_55

    move v0, v1

    .line 560
    goto :goto_b

    .line 562
    :cond_55
    const v0, 0xa000

    if-lt p0, v0, :cond_61

    const v0, 0xa48f

    if-gt p0, v0, :cond_61

    move v0, v1

    .line 563
    goto :goto_b

    .line 565
    :cond_61
    const v0, 0xa490

    if-lt p0, v0, :cond_6d

    const v0, 0xa4cf

    if-gt p0, v0, :cond_6d

    move v0, v1

    .line 566
    goto :goto_b

    .line 568
    :cond_6d
    const v0, 0xfe62

    if-lt p0, v0, :cond_79

    const v0, 0xfe66

    if-gt p0, v0, :cond_79

    move v0, v1

    .line 569
    goto :goto_b

    .line 571
    :cond_79
    const v0, 0xff10

    if-lt p0, v0, :cond_85

    const v0, 0xff19

    if-gt p0, v0, :cond_85

    move v0, v1

    .line 572
    goto :goto_b

    :cond_85
    move v0, v2

    .line 575
    goto :goto_b

    .line 506
    nop

    :sswitch_data_88
    .sparse-switch
        0x3041 -> :sswitch_21
        0x3043 -> :sswitch_21
        0x3045 -> :sswitch_21
        0x3047 -> :sswitch_21
        0x3049 -> :sswitch_21
        0x3063 -> :sswitch_21
        0x3083 -> :sswitch_21
        0x3085 -> :sswitch_21
        0x3087 -> :sswitch_21
        0x308e -> :sswitch_21
        0x3095 -> :sswitch_21
        0x3096 -> :sswitch_21
        0x309b -> :sswitch_21
        0x309c -> :sswitch_21
        0x309d -> :sswitch_21
        0x309e -> :sswitch_21
    .end sparse-switch

    .line 530
    :sswitch_data_ca
    .sparse-switch
        0x30a0 -> :sswitch_32
        0x30a1 -> :sswitch_32
        0x30a3 -> :sswitch_32
        0x30a5 -> :sswitch_32
        0x30a7 -> :sswitch_32
        0x30a9 -> :sswitch_32
        0x30c3 -> :sswitch_32
        0x30e3 -> :sswitch_32
        0x30e5 -> :sswitch_32
        0x30e7 -> :sswitch_32
        0x30ee -> :sswitch_32
        0x30f5 -> :sswitch_32
        0x30f6 -> :sswitch_32
        0x30fb -> :sswitch_32
        0x30fc -> :sswitch_32
        0x30fd -> :sswitch_32
        0x30fe -> :sswitch_32
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I
    .registers 57
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "pstart"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "last"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v21, v0

    .line 590
    .local v21, j:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    mul-int v25, v21, v5

    .line 591
    .local v25, off:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v25

    add-int/lit8 v26, v5, 0x1

    .line 592
    .local v26, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v23, v0

    .line 594
    .local v23, lines:[I
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    move/from16 v0, v26

    move v1, v5

    if-lt v0, v1, :cond_6b

    .line 595
    add-int/lit8 v5, v26, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v24

    .line 596
    .local v24, nlen:I
    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 597
    .local v18, grow:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v23

    move v1, v5

    move-object/from16 v2, v18

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 599
    move-object/from16 v23, v18

    .line 601
    move/from16 v0, v24

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v19, v0

    .line 602
    .local v19, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v8, v0

    array-length v8, v8

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 604
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 607
    .end local v18           #grow:[I
    .end local v19           #grow2:[Landroid/text/Layout$Directions;
    .end local v24           #nlen:I
    :cond_6b
    if-eqz p11, :cond_d8

    .line 608
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 609
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 610
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 611
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 613
    const/16 v20, 0x0

    .local v20, i:I
    :goto_87
    move-object/from16 v0, p11

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_c0

    .line 614
    aget-object v5, p11, v20

    instance-of v5, v5, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v5, :cond_ae

    .line 615
    aget-object v5, p11, v20

    check-cast v5, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v9, p12, v20

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p29

    invoke-interface/range {v5 .. v12}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 613
    :goto_ab
    add-int/lit8 v20, v20, 0x1

    goto :goto_87

    .line 619
    :cond_ae
    aget-object v5, p11, v20

    aget v9, p12, v20

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    invoke-interface/range {v5 .. v11}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_ab

    .line 623
    :cond_c0
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 624
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 625
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 626
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 629
    .end local v20           #i:I
    :cond_d8
    if-nez v21, :cond_e7

    .line 630
    if-eqz p22, :cond_e3

    .line 631
    sub-int v5, p6, p4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mTopPadding:I

    .line 634
    :cond_e3
    if-eqz p21, :cond_e7

    .line 635
    move/from16 p4, p6

    .line 638
    :cond_e7
    if-eqz p20, :cond_f6

    .line 639
    if-eqz p22, :cond_f2

    .line 640
    sub-int v5, p7, p5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 643
    :cond_f2
    if-eqz p21, :cond_f6

    .line 644
    move/from16 p5, p7

    .line 650
    :cond_f6
    if-eqz p15, :cond_193

    .line 651
    sub-int v5, p5, p4

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float v6, p9, v6

    mul-float/2addr v5, v6

    add-float v5, v5, p10

    float-to-double v15, v5

    .line 652
    .local v15, ex:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v15, v5

    if-ltz v5, :cond_188

    .line 653
    const-wide/high16 v5, 0x3fe0

    add-double/2addr v5, v15

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v17, v0

    .line 661
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_110
    add-int/lit8 v5, v25, 0x0

    aput p2, v23, v5

    .line 662
    add-int/lit8 v5, v25, 0x1

    aput p8, v23, v5

    .line 663
    add-int/lit8 v5, v25, 0x2

    add-int v6, p5, v17

    aput v6, v23, v5

    .line 665
    sub-int v5, p5, p4

    add-int v5, v5, v17

    add-int p8, p8, v5

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v25

    add-int/lit8 v5, v5, 0x0

    aput p3, v23, v5

    .line 667
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v25

    add-int/lit8 v5, v5, 0x1

    aput p8, v23, v5

    .line 669
    if-eqz p14, :cond_145

    .line 670
    add-int/lit8 v5, v25, 0x0

    aget v6, v23, v5

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    aput v6, v23, v5

    .line 672
    :cond_145
    add-int/lit8 v5, v25, 0x0

    aget v6, v23, v5

    shl-int/lit8 v7, p18, 0x1e

    or-int/2addr v6, v7

    aput v6, v23, v5

    .line 673
    sget-object v22, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 677
    .local v22, linedirs:Landroid/text/Layout$Directions;
    if-eqz p19, :cond_197

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    aput-object v22, v5, v21

    .line 685
    :goto_159
    if-eqz p26, :cond_17b

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p26

    move-object v1, v5

    if-ne v0, v1, :cond_164

    if-eqz v21, :cond_17b

    :cond_164
    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p24

    move/from16 v9, p25

    move/from16 v10, p27

    move-object/from16 v11, p26

    move/from16 v12, v21

    move/from16 v13, p28

    move-object/from16 v14, p29

    .line 686
    invoke-direct/range {v5 .. v14}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V

    .line 691
    :cond_17b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 692
    return p8

    .line 655
    .end local v17           #extra:I
    .end local v22           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_188
    neg-double v5, v15

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v5, v5

    move v0, v5

    neg-int v0, v0

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_110

    .line 658
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_193
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_110

    .line 680
    .restart local v22       #linedirs:Landroid/text/Layout$Directions;
    :cond_197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v11, v0

    sub-int v7, p2, p25

    sub-int v9, p2, p25

    sub-int v10, p3, p2

    move/from16 v5, p18

    move-object/from16 v6, p17

    move-object/from16 v8, p23

    invoke-static/range {v5 .. v10}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v5

    aput-object v5, v11, v21

    goto :goto_159
.end method


# virtual methods
.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .registers 165
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 123
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 125
    const/4 v13, 0x0

    .line 126
    .local v13, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_12

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_af

    :cond_12
    const/4 v5, 0x1

    move/from16 v20, v5

    .line 128
    .local v20, needMultiply:Z
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 129
    .local v18, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 131
    .local v17, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v137, v0

    .line 133
    .local v137, measured:Landroid/text/MeasuredText;
    const/16 v146, 0x0

    .line 134
    .local v146, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_32

    .line 135
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v146, v0

    .line 137
    :cond_32
    const/16 v110, 0x1

    .line 140
    .local v110, DEFAULT_DIR:I
    move/from16 v21, p2

    .local v21, paraStart:I
    :goto_36
    move/from16 v0, v21

    move/from16 v1, p3

    if-gt v0, v1, :cond_504

    .line 141
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v21

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v140

    .line 142
    .local v140, paraEnd:I
    if-gez v140, :cond_b4

    .line 143
    move/from16 v140, p3

    .line 147
    :goto_4d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v5, v0

    add-int/lit8 v126, v5, 0x1

    .line 148
    .local v126, firstWidthLineLimit:I
    move/from16 v125, p5

    .line 149
    .local v125, firstWidth:I
    move/from16 v141, p5

    .line 151
    .local v141, restWidth:I
    const/16 v16, 0x0

    .line 153
    .local v16, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v146, :cond_116

    .line 154
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v146

    move/from16 v1, v21

    move/from16 v2, v140

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v142

    check-cast v142, [Landroid/text/style/LeadingMarginSpan;

    .line 156
    .local v142, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v132, 0x0

    .local v132, i:I
    :goto_6d
    move-object/from16 v0, v142

    array-length v0, v0

    move v5, v0

    move/from16 v0, v132

    move v1, v5

    if-ge v0, v1, :cond_b7

    .line 157
    aget-object v134, v142, v132

    .line 158
    .local v134, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v142, v132

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v125, v125, v5

    .line 159
    aget-object v5, v142, v132

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v141, v141, v5

    .line 165
    move-object/from16 v0, v134

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_ac

    .line 166
    move-object/from16 v0, v134

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v135, v0

    .line 167
    .local v135, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v146

    move-object/from16 v1, v135

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v136

    .line 168
    .local v136, lmsFirstLine:I
    invoke-interface/range {v135 .. v135}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v126, v136, v5

    .line 156
    .end local v135           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v136           #lmsFirstLine:I
    :cond_ac
    add-int/lit8 v132, v132, 0x1

    goto :goto_6d

    .line 126
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v17           #chooseHtv:[I
    .end local v18           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v20           #needMultiply:Z
    .end local v21           #paraStart:I
    .end local v110           #DEFAULT_DIR:I
    .end local v125           #firstWidth:I
    .end local v126           #firstWidthLineLimit:I
    .end local v132           #i:I
    .end local v134           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v137           #measured:Landroid/text/MeasuredText;
    .end local v140           #paraEnd:I
    .end local v141           #restWidth:I
    .end local v142           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v146           #spanned:Landroid/text/Spanned;
    :cond_af
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_15

    .line 145
    .restart local v17       #chooseHtv:[I
    .restart local v18       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20       #needMultiply:Z
    .restart local v21       #paraStart:I
    .restart local v110       #DEFAULT_DIR:I
    .restart local v137       #measured:Landroid/text/MeasuredText;
    .restart local v140       #paraEnd:I
    .restart local v146       #spanned:Landroid/text/Spanned;
    :cond_b4
    add-int/lit8 v140, v140, 0x1

    goto :goto_4d

    .line 172
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v125       #firstWidth:I
    .restart local v126       #firstWidthLineLimit:I
    .restart local v132       #i:I
    .restart local v141       #restWidth:I
    .restart local v142       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_b7
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v146

    move/from16 v1, v21

    move/from16 v2, v140

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 174
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_116

    .line 175
    if-eqz v17, :cond_d8

    move-object/from16 v0, v17

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_e5

    .line 177
    :cond_d8
    move-object/from16 v0, v16

    array-length v0, v0

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 181
    :cond_e5
    const/16 v132, 0x0

    :goto_e7
    move-object/from16 v0, v16

    array-length v0, v0

    move v5, v0

    move/from16 v0, v132

    move v1, v5

    if-ge v0, v1, :cond_116

    .line 182
    aget-object v5, v16, v132

    move-object/from16 v0, v146

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v139

    .line 184
    .local v139, o:I
    move/from16 v0, v139

    move/from16 v1, v21

    if-ge v0, v1, :cond_113

    .line 188
    move-object/from16 v0, p0

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v132

    .line 181
    :goto_110
    add-int/lit8 v132, v132, 0x1

    goto :goto_e7

    .line 192
    :cond_113
    aput v13, v17, v132

    goto :goto_110

    .line 198
    .end local v132           #i:I
    .end local v139           #o:I
    .end local v142           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_116
    const/4 v5, 0x2

    move-object/from16 v0, v137

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v140

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;III)V

    .line 199
    move-object/from16 v0, v137

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v28, v0

    .line 200
    .local v28, chs:[C
    move-object/from16 v0, v137

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v29, v0

    .line 201
    .local v29, widths:[F
    move-object/from16 v0, v137

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v22, v0

    .line 202
    .local v22, chdirs:[B
    move-object/from16 v0, v137

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v23, v0

    .line 203
    .local v23, dir:I
    move-object/from16 v0, v137

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v24, v0

    .line 205
    .local v24, easy:Z
    move/from16 v151, v125

    .line 207
    .local v151, width:I
    const/16 v91, 0x0

    .line 208
    .local v91, w:F
    move/from16 v7, v21

    .line 210
    .local v7, here:I
    move/from16 v8, v21

    .line 211
    .local v8, ok:I
    move/from16 v33, v91

    .line 212
    .local v33, okWidth:F
    const/4 v9, 0x0

    .local v9, okAscent:I
    const/4 v10, 0x0

    .local v10, okDescent:I
    const/4 v11, 0x0

    .local v11, okTop:I
    const/4 v12, 0x0

    .line 214
    .local v12, okBottom:I
    move/from16 v37, v21

    .line 215
    .local v37, fit:I
    move/from16 v62, v91

    .line 216
    .local v62, fitWidth:F
    const/16 v38, 0x0

    .local v38, fitAscent:I
    const/16 v39, 0x0

    .local v39, fitDescent:I
    const/16 v40, 0x0

    .local v40, fitTop:I
    const/16 v41, 0x0

    .line 218
    .local v41, fitBottom:I
    const/16 v19, 0x0

    .line 219
    .local v19, hasTabOrEmoji:Z
    const/16 v131, 0x0

    .line 220
    .local v131, hasTab:Z
    const/16 v148, 0x0

    .line 222
    .local v148, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v145, v21

    .local v145, spanStart:I
    move/from16 v143, v145

    .line 223
    .local v143, spanEnd:I
    :goto_165
    move/from16 v0, v145

    move/from16 v1, v140

    if-ge v0, v1, :cond_48b

    .line 225
    move/from16 v0, v145

    move/from16 v1, v143

    if-ne v0, v1, :cond_184

    .line 226
    if-nez v146, :cond_296

    .line 227
    move/from16 v143, v140

    .line 232
    :goto_175
    sub-int v144, v143, v145

    .line 233
    .local v144, spanLen:I
    if-nez v146, :cond_2a5

    .line 234
    move-object/from16 v0, v137

    move-object/from16 v1, p4

    move/from16 v2, v144

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 242
    .end local v144           #spanLen:I
    :cond_184
    :goto_184
    move/from16 v138, v143

    .line 244
    .local v138, nextSpanStart:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v130, v0

    .line 245
    .local v130, fmTop:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v128, v0

    .line 246
    .local v128, fmBottom:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v127, v0

    .line 247
    .local v127, fmAscent:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v129, v0

    .line 249
    .local v129, fmDescent:I
    move/from16 v133, v145

    .local v133, j:I
    :goto_1a0
    move/from16 v0, v133

    move/from16 v1, v143

    if-ge v0, v1, :cond_487

    .line 250
    sub-int v5, v133, v21

    aget-char v123, v28, v5

    .line 252
    .local v123, c:C
    const/16 v5, 0xa

    move/from16 v0, v123

    move v1, v5

    if-ne v0, v1, :cond_2c3

    .line 307
    :goto_1b1
    move/from16 v0, v151

    int-to-float v0, v0

    move v5, v0

    cmpg-float v5, v91, v5

    if-gtz v5, :cond_380

    .line 308
    move/from16 v62, v91

    .line 309
    add-int/lit8 v37, v133, 0x1

    .line 311
    move/from16 v0, v130

    move/from16 v1, v40

    if-ge v0, v1, :cond_1c5

    .line 312
    move/from16 v40, v130

    .line 313
    :cond_1c5
    move/from16 v0, v127

    move/from16 v1, v38

    if-ge v0, v1, :cond_1cd

    .line 314
    move/from16 v38, v127

    .line 315
    :cond_1cd
    move/from16 v0, v129

    move/from16 v1, v39

    if-le v0, v1, :cond_1d5

    .line 316
    move/from16 v39, v129

    .line 317
    :cond_1d5
    move/from16 v0, v128

    move/from16 v1, v41

    if-le v0, v1, :cond_1dd

    .line 318
    move/from16 v41, v128

    .line 336
    :cond_1dd
    const/16 v5, 0x20

    move/from16 v0, v123

    move v1, v5

    if-eq v0, v1, :cond_272

    const/16 v5, 0x9

    move/from16 v0, v123

    move v1, v5

    if-eq v0, v1, :cond_272

    const/16 v5, 0x2e

    move/from16 v0, v123

    move v1, v5

    if-eq v0, v1, :cond_207

    const/16 v5, 0x2c

    move/from16 v0, v123

    move v1, v5

    if-eq v0, v1, :cond_207

    const/16 v5, 0x3a

    move/from16 v0, v123

    move v1, v5

    if-eq v0, v1, :cond_207

    const/16 v5, 0x3b

    move/from16 v0, v123

    move v1, v5

    if-ne v0, v1, :cond_22c

    :cond_207
    const/4 v5, 0x1

    sub-int v5, v133, v5

    if-lt v5, v7, :cond_219

    const/4 v5, 0x1

    sub-int v5, v133, v5

    sub-int v5, v5, v21

    aget-char v5, v28, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_22c

    :cond_219
    add-int/lit8 v5, v133, 0x1

    move v0, v5

    move/from16 v1, v143

    if-ge v0, v1, :cond_272

    add-int/lit8 v5, v133, 0x1

    sub-int v5, v5, v21

    aget-char v5, v28, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_272

    :cond_22c
    const/16 v5, 0x2f

    move/from16 v0, v123

    move v1, v5

    if-eq v0, v1, :cond_23a

    const/16 v5, 0x2d

    move/from16 v0, v123

    move v1, v5

    if-ne v0, v1, :cond_24d

    :cond_23a
    add-int/lit8 v5, v133, 0x1

    move v0, v5

    move/from16 v1, v143

    if-ge v0, v1, :cond_272

    add-int/lit8 v5, v133, 0x1

    sub-int v5, v5, v21

    aget-char v5, v28, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_272

    :cond_24d
    const/16 v5, 0x2e80

    move/from16 v0, v123

    move v1, v5

    if-lt v0, v1, :cond_292

    const/4 v5, 0x1

    move/from16 v0, v123

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_292

    add-int/lit8 v5, v133, 0x1

    move v0, v5

    move/from16 v1, v143

    if-ge v0, v1, :cond_292

    add-int/lit8 v5, v133, 0x1

    sub-int v5, v5, v21

    aget-char v5, v28, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_292

    .line 345
    :cond_272
    move/from16 v33, v91

    .line 346
    add-int/lit8 v8, v133, 0x1

    .line 348
    move/from16 v0, v40

    move v1, v11

    if-ge v0, v1, :cond_27d

    .line 349
    move/from16 v11, v40

    .line 350
    :cond_27d
    move/from16 v0, v38

    move v1, v9

    if-ge v0, v1, :cond_284

    .line 351
    move/from16 v9, v38

    .line 352
    :cond_284
    move/from16 v0, v39

    move v1, v10

    if-le v0, v1, :cond_28b

    .line 353
    move/from16 v10, v39

    .line 354
    :cond_28b
    move/from16 v0, v41

    move v1, v12

    if-le v0, v1, :cond_292

    .line 355
    move/from16 v12, v41

    .line 249
    :cond_292
    :goto_292
    add-int/lit8 v133, v133, 0x1

    goto/16 :goto_1a0

    .line 229
    .end local v123           #c:C
    .end local v127           #fmAscent:I
    .end local v128           #fmBottom:I
    .end local v129           #fmDescent:I
    .end local v130           #fmTop:I
    .end local v133           #j:I
    .end local v138           #nextSpanStart:I
    :cond_296
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v146

    move/from16 v1, v145

    move/from16 v2, v140

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v143

    goto/16 :goto_175

    .line 236
    .restart local v144       #spanLen:I
    :cond_2a5
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v146

    move/from16 v1, v145

    move/from16 v2, v143

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v147

    check-cast v147, [Landroid/text/style/MetricAffectingSpan;

    .line 238
    .local v147, spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v137

    move-object/from16 v1, p4

    move-object/from16 v2, v147

    move/from16 v3, v144

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_184

    .line 254
    .end local v144           #spanLen:I
    .end local v147           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v123       #c:C
    .restart local v127       #fmAscent:I
    .restart local v128       #fmBottom:I
    .restart local v129       #fmDescent:I
    .restart local v130       #fmTop:I
    .restart local v133       #j:I
    .restart local v138       #nextSpanStart:I
    :cond_2c3
    const/16 v5, 0x9

    move/from16 v0, v123

    move v1, v5

    if-ne v0, v1, :cond_30a

    .line 255
    if-nez v131, :cond_2f3

    .line 256
    const/16 v131, 0x1

    .line 257
    const/16 v19, 0x1

    .line 258
    if-eqz v146, :cond_2f3

    .line 260
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v146

    move/from16 v1, v21

    move/from16 v2, v140

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v147

    check-cast v147, [Landroid/text/style/TabStopSpan;

    .line 262
    .local v147, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v147

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_2f3

    .line 263
    new-instance v148, Landroid/text/Layout$TabStops;

    .end local v148           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v148

    move v1, v5

    move-object/from16 v2, v147

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 267
    .end local v147           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v148       #tabStops:Landroid/text/Layout$TabStops;
    :cond_2f3
    if-eqz v148, :cond_2ff

    .line 268
    move-object/from16 v0, v148

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v91

    goto/16 :goto_1b1

    .line 270
    :cond_2ff
    const/16 v5, 0x14

    move/from16 v0, v91

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v91

    goto/16 :goto_1b1

    .line 272
    :cond_30a
    const v5, 0xd800

    move/from16 v0, v123

    move v1, v5

    if-lt v0, v1, :cond_378

    const v5, 0xdfff

    move/from16 v0, v123

    move v1, v5

    if-gt v0, v1, :cond_378

    add-int/lit8 v5, v133, 0x1

    move v0, v5

    move/from16 v1, v143

    if-ge v0, v1, :cond_378

    .line 274
    sub-int v5, v133, v21

    move-object/from16 v0, v28

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v124

    .line 276
    .local v124, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v124

    move v1, v5

    if-lt v0, v1, :cond_370

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v124

    move v1, v5

    if-gt v0, v1, :cond_370

    .line 277
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v122

    .line 279
    .local v122, bm:Landroid/graphics/Bitmap;
    if-eqz v122, :cond_368

    .line 282
    if-nez v146, :cond_361

    .line 283
    move-object/from16 v149, p4

    .line 288
    .local v149, whichPaint:Landroid/graphics/Paint;
    :goto_347
    invoke-virtual/range {v122 .. v122}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v149 .. v149}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v122 .. v122}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v150, v5, v6

    .line 292
    .local v150, wid:F
    add-float v91, v91, v150

    .line 293
    const/16 v19, 0x1

    .line 294
    add-int/lit8 v133, v133, 0x1

    .line 295
    goto/16 :goto_1b1

    .line 285
    .end local v149           #whichPaint:Landroid/graphics/Paint;
    .end local v150           #wid:F
    :cond_361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v149, v0

    .restart local v149       #whichPaint:Landroid/graphics/Paint;
    goto :goto_347

    .line 296
    .end local v149           #whichPaint:Landroid/graphics/Paint;
    :cond_368
    sub-int v5, v133, v21

    aget v5, v29, v5

    add-float v91, v91, v5

    goto/16 :goto_1b1

    .line 299
    .end local v122           #bm:Landroid/graphics/Bitmap;
    :cond_370
    sub-int v5, v133, v21

    aget v5, v29, v5

    add-float v91, v91, v5

    goto/16 :goto_1b1

    .line 302
    .end local v124           #emoji:I
    :cond_378
    sub-int v5, v133, v21

    aget v5, v29, v5

    add-float v91, v91, v5

    goto/16 :goto_1b1

    .line 358
    :cond_380
    if-eq v8, v7, :cond_3d9

    .line 361
    :goto_382
    move v0, v8

    move/from16 v1, v143

    if-ge v0, v1, :cond_392

    sub-int v5, v8, v21

    aget-char v5, v28, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_392

    .line 362
    add-int/lit8 v8, v8, 0x1

    goto :goto_382

    .line 365
    :cond_392
    move v0, v8

    move/from16 v1, p3

    if-ne v0, v1, :cond_3d5

    const/4 v5, 0x1

    move/from16 v25, v5

    :goto_39a
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v26, p9

    move/from16 v27, p10

    move/from16 v30, v21

    move-object/from16 v31, p12

    move/from16 v32, p11

    move-object/from16 v34, p4

    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v13

    .line 377
    move v7, v8

    .line 418
    .end local v91           #w:F
    :goto_3b3
    move v0, v7

    move/from16 v1, v145

    if-ge v0, v1, :cond_482

    .line 422
    move/from16 v138, v7

    move/from16 v133, v7

    .line 427
    :goto_3bc
    move/from16 v37, v7

    move v8, v7

    .line 428
    const/16 v91, 0x0

    .line 429
    .restart local v91       #w:F
    const/16 v41, 0x0

    move/from16 v40, v41

    move/from16 v39, v41

    move/from16 v38, v41

    .line 430
    const/4 v12, 0x0

    move v11, v12

    move v10, v12

    move v9, v12

    .line 432
    add-int/lit8 v126, v126, -0x1

    if-gtz v126, :cond_292

    .line 433
    move/from16 v151, v141

    goto/16 :goto_292

    .line 365
    :cond_3d5
    const/4 v5, 0x0

    move/from16 v25, v5

    goto :goto_39a

    .line 378
    :cond_3d9
    move/from16 v0, v37

    move v1, v7

    if-eq v0, v1, :cond_420

    .line 380
    move/from16 v0, v37

    move/from16 v1, p3

    if-ne v0, v1, :cond_41c

    const/4 v5, 0x1

    move/from16 v54, v5

    :goto_3e7
    move-object/from16 v34, p0

    move-object/from16 v35, p1

    move/from16 v36, v7

    move/from16 v42, v13

    move/from16 v43, p7

    move/from16 v44, p8

    move-object/from16 v45, v16

    move-object/from16 v46, v17

    move-object/from16 v47, v18

    move/from16 v48, v19

    move/from16 v49, v20

    move/from16 v50, v21

    move-object/from16 v51, v22

    move/from16 v52, v23

    move/from16 v53, v24

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v28

    move-object/from16 v58, v29

    move/from16 v59, v21

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v34 .. v63}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v13

    .line 393
    move/from16 v7, v37

    goto :goto_3b3

    .line 380
    :cond_41c
    const/4 v5, 0x0

    move/from16 v54, v5

    goto :goto_3e7

    .line 401
    :cond_420
    add-int/lit8 v66, v7, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    add-int/lit8 v5, v7, 0x1

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_47e

    const/4 v5, 0x1

    move/from16 v83, v5

    :goto_444
    sub-int v5, v7, v21

    aget v91, v29, v5

    .end local v91           #w:F
    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, v7

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v74, v16

    move-object/from16 v75, v17

    move-object/from16 v76, v18

    move/from16 v77, v19

    move/from16 v78, v20

    move/from16 v79, v21

    move-object/from16 v80, v22

    move/from16 v81, v23

    move/from16 v82, v24

    move/from16 v84, p9

    move/from16 v85, p10

    move-object/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v21

    move-object/from16 v89, p12

    move/from16 v90, p11

    move-object/from16 v92, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v13

    .line 415
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3b3

    .line 401
    .restart local v91       #w:F
    :cond_47e
    const/4 v5, 0x0

    move/from16 v83, v5

    goto :goto_444

    .line 424
    .end local v91           #w:F
    :cond_482
    const/4 v5, 0x1

    sub-int v133, v7, v5

    goto/16 :goto_3bc

    .line 223
    .end local v123           #c:C
    .restart local v91       #w:F
    :cond_487
    move/from16 v145, v138

    goto/16 :goto_165

    .line 439
    .end local v127           #fmAscent:I
    .end local v128           #fmBottom:I
    .end local v129           #fmDescent:I
    .end local v130           #fmTop:I
    .end local v133           #j:I
    .end local v138           #nextSpanStart:I
    :cond_48b
    move/from16 v0, v140

    move v1, v7

    if-eq v0, v1, :cond_4fc

    .line 440
    or-int v5, v40, v41

    or-int v5, v5, v39

    or-int v5, v5, v38

    if-nez v5, :cond_4b7

    .line 441
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 443
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v40, v0

    .line 444
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v41, v0

    .line 445
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v38, v0

    .line 446
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v39, v0

    .line 451
    :cond_4b7
    move/from16 v0, v140

    move/from16 v1, p3

    if-ne v0, v1, :cond_56e

    const/4 v5, 0x1

    move/from16 v83, v5

    :goto_4c0
    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, v7

    move/from16 v66, v140

    move/from16 v67, v38

    move/from16 v68, v39

    move/from16 v69, v40

    move/from16 v70, v41

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v74, v16

    move-object/from16 v75, v17

    move-object/from16 v76, v18

    move/from16 v77, v19

    move/from16 v78, v20

    move/from16 v79, v21

    move-object/from16 v80, v22

    move/from16 v81, v23

    move/from16 v82, v24

    move/from16 v84, p9

    move/from16 v85, p10

    move-object/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v21

    move-object/from16 v89, p12

    move/from16 v90, p11

    move-object/from16 v92, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v13

    .line 463
    :cond_4fc
    move/from16 v21, v140

    .line 465
    move/from16 v0, v140

    move/from16 v1, p3

    if-ne v0, v1, :cond_573

    .line 469
    .end local v7           #here:I
    .end local v8           #ok:I
    .end local v9           #okAscent:I
    .end local v10           #okDescent:I
    .end local v11           #okTop:I
    .end local v12           #okBottom:I
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #hasTabOrEmoji:Z
    .end local v22           #chdirs:[B
    .end local v23           #dir:I
    .end local v24           #easy:Z
    .end local v28           #chs:[C
    .end local v29           #widths:[F
    .end local v33           #okWidth:F
    .end local v37           #fit:I
    .end local v38           #fitAscent:I
    .end local v39           #fitDescent:I
    .end local v40           #fitTop:I
    .end local v41           #fitBottom:I
    .end local v62           #fitWidth:F
    .end local v91           #w:F
    .end local v125           #firstWidth:I
    .end local v126           #firstWidthLineLimit:I
    .end local v131           #hasTab:Z
    .end local v140           #paraEnd:I
    .end local v141           #restWidth:I
    .end local v143           #spanEnd:I
    .end local v145           #spanStart:I
    .end local v148           #tabStops:Landroid/text/Layout$TabStops;
    .end local v151           #width:I
    :cond_504
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_518

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_56d

    .line 472
    :cond_518
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 474
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v96, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v97, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v98, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v99, v0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v106, 0x0

    const/16 v109, 0x0

    const/16 v111, 0x1

    const/16 v112, 0x1

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v120, 0x0

    move-object/from16 v92, p0

    move-object/from16 v93, p1

    move/from16 v94, p3

    move/from16 v95, p3

    move/from16 v100, v13

    move/from16 v101, p7

    move/from16 v102, p8

    move-object/from16 v105, v18

    move/from16 v107, v20

    move/from16 v108, p3

    move/from16 v113, p9

    move/from16 v114, p10

    move/from16 v117, p2

    move-object/from16 v118, p12

    move/from16 v119, p11

    move-object/from16 v121, p4

    invoke-direct/range {v92 .. v121}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v13

    .line 485
    :cond_56d
    return-void

    .line 451
    .restart local v7       #here:I
    .restart local v8       #ok:I
    .restart local v9       #okAscent:I
    .restart local v10       #okDescent:I
    .restart local v11       #okTop:I
    .restart local v12       #okBottom:I
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v19       #hasTabOrEmoji:Z
    .restart local v22       #chdirs:[B
    .restart local v23       #dir:I
    .restart local v24       #easy:Z
    .restart local v28       #chs:[C
    .restart local v29       #widths:[F
    .restart local v33       #okWidth:F
    .restart local v37       #fit:I
    .restart local v38       #fitAscent:I
    .restart local v39       #fitDescent:I
    .restart local v40       #fitTop:I
    .restart local v41       #fitBottom:I
    .restart local v62       #fitWidth:F
    .restart local v91       #w:F
    .restart local v125       #firstWidth:I
    .restart local v126       #firstWidthLineLimit:I
    .restart local v131       #hasTab:Z
    .restart local v140       #paraEnd:I
    .restart local v141       #restWidth:I
    .restart local v143       #spanEnd:I
    .restart local v145       #spanStart:I
    .restart local v148       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v151       #width:I
    :cond_56e
    const/4 v5, 0x0

    move/from16 v83, v5

    goto/16 :goto_4c0

    .line 140
    :cond_573
    move/from16 v21, v140

    goto/16 :goto_36
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 854
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 859
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 860
    const/4 v0, 0x0

    .line 863
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 868
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 869
    const/4 v0, 0x0

    .line 872
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 877
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 4
    .parameter "line"

    .prologue
    .line 839
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 804
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 819
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 820
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_1c

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_1c

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_1c

    .line 822
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 824
    :cond_1c
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .parameter "line"

    .prologue
    .line 844
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .registers 8
    .parameter "vertical"

    .prologue
    .line 783
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 784
    .local v1, high:I
    const/4 v3, -0x1

    .line 786
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 787
    .local v2, lines:[I
    :goto_5
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1b

    .line 788
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 789
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_19

    .line 790
    move v1, v0

    goto :goto_5

    .line 792
    :cond_19
    move v3, v0

    goto :goto_5

    .line 795
    .end local v0           #guess:I
    :cond_1b
    if-gez v3, :cond_1f

    .line 796
    const/4 v4, 0x0

    .line 798
    :goto_1e
    return v4

    :cond_1f
    move v4, v3

    goto :goto_1e
.end method

.method public getLineStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 829
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 809
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 810
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_1a

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_1a

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_1a

    .line 812
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 814
    :cond_1a
    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 834
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 849
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public setMaximumVisibleLineCount(I)V
    .registers 2
    .parameter "lineCount"

    .prologue
    .line 885
    iput p1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 886
    return-void
.end method

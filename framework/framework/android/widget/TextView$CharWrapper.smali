.class Landroid/widget/TextView$CharWrapper;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharWrapper"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I

.field private mStart:I


# direct methods
.method public constructor <init>([CII)V
    .registers 4
    .parameter "chars"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 2880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2881
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 2882
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 2883
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 2884
    return-void
.end method

.method static synthetic access$102(Landroid/widget/TextView$CharWrapper;[C)[C
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2875
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    return-object p1
.end method


# virtual methods
.method public charAt(I)C
    .registers 4
    .parameter "off"

    .prologue
    .line 2897
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .registers 14
    .parameter "c"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "p"

    .prologue
    .line 2923
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 2924
    return-void
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    .registers 20
    .parameter "c"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "x"
    .parameter "y"
    .parameter "flags"
    .parameter "p"

    .prologue
    .line 2928
    sub-int v3, p3, p2

    .line 2929
    .local v3, count:I
    sub-int v5, p5, p4

    .line 2930
    .local v5, contextCount:I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 2932
    return-void
.end method

.method public getChars(II[CI)V
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "buf"
    .parameter "off"

    .prologue
    .line 2914
    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_c

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-le p2, v0, :cond_29

    .line 2915
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2918
    :cond_29
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2919
    return-void
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F
    .registers 18
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "p"

    .prologue
    .line 2945
    sub-int v3, p2, p1

    .line 2946
    .local v3, count:I
    sub-int v5, p4, p3

    .line 2947
    .local v5, contextCount:I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v0

    return v0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .registers 14
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"
    .parameter "p"

    .prologue
    .line 2954
    sub-int v3, p2, p1

    .line 2955
    .local v3, contextCount:I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "widths"
    .parameter "p"

    .prologue
    .line 2939
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 2893
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .registers 7
    .parameter "start"
    .parameter "end"
    .parameter "p"

    .prologue
    .line 2935
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    return v0
.end method

.method set([CII)V
    .registers 4
    .parameter "chars"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 2887
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 2888
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 2889
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 2890
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2906
    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_c

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-le p2, v0, :cond_29

    .line 2907
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2910
    :cond_29
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2902
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget v3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

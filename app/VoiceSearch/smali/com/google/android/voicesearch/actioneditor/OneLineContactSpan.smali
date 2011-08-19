.class public Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;
.super Landroid/text/style/ReplacementSpan;
.source "OneLineContactSpan.java"


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# instance fields
.field private mAddressPaint:Landroid/text/TextPaint;

.field private mContact:Lcom/google/android/voicesearch/actions/Contact;

.field private mNamePaint:Landroid/text/TextPaint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mContact:Lcom/google/android/voicesearch/actions/Contact;

    .line 45
    iput p3, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mWidth:I

    .line 47
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f0b000d

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 48
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mNamePaint:Landroid/text/TextPaint;

    .line 49
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 50
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/style/TextAppearanceSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 52
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f0b000c

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 53
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mAddressPaint:Landroid/text/TextPaint;

    .line 54
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mAddressPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 55
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mAddressPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/style/TextAppearanceSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 56
    return-void
.end method

.method private drawOrMeasure(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)I
    .locals 10
    .parameter
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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mContact:Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mContact:Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 86
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 87
    iget-object v5, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mNamePaint:Landroid/text/TextPaint;

    invoke-direct {p0, v5, v4}, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v5

    move-object v9, v4

    move v4, v3

    move-object v3, v9

    .line 88
    :goto_0
    iget v6, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mWidth:I

    if-le v5, v6, :cond_0

    if-lez v4, :cond_0

    .line 89
    add-int/lit8 v3, v4, -0x1

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u2026"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mNamePaint:Landroid/text/TextPaint;

    invoke-direct {p0, v5, v4}, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v5

    move-object v9, v4

    move v4, v3

    move-object v3, v9

    goto :goto_0

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    .line 95
    move/from16 v0, p7

    int-to-float v0, v0

    move v1, v0

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mNamePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, p5, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 98
    :cond_1
    int-to-float v1, v5

    add-float/2addr v1, p5

    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 101
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 102
    iget-object v6, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mAddressPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v6, v4}, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    move-object v9, v4

    move v4, v3

    move-object v3, v9

    .line 103
    :goto_1
    add-int v7, v6, v5

    iget v8, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mWidth:I

    if-le v7, v8, :cond_2

    if-lez v4, :cond_2

    .line 104
    add-int/lit8 v3, v4, -0x1

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u2026"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v6, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mAddressPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v6, v4}, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    move-object v9, v4

    move v4, v3

    move-object v3, v9

    goto :goto_1

    .line 109
    :cond_2
    if-eqz p1, :cond_3

    .line 110
    move/from16 v0, p7

    int-to-float v0, v0

    move v2, v0

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mAddressPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    :cond_3
    int-to-float v2, v6

    add-float/2addr v1, v2

    .line 115
    float-to-int v1, v1

    return v1
.end method

.method private getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x0

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 68
    aget v3, v0, v1

    add-float/2addr v2, v3

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    float-to-int v0, v2

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct/range {p0 .. p9}, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->drawOrMeasure(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)I

    .line 122
    return-void
.end method

.method public getContact()Lcom/google/android/voicesearch/actions/Contact;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->mContact:Lcom/google/android/voicesearch/actions/Contact;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 126
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, v6

    move v8, v6

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;->drawOrMeasure(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)I

    move-result v0

    return v0
.end method

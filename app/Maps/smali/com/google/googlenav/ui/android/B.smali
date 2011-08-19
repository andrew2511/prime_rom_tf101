.class Lcom/google/googlenav/ui/android/B;
.super Landroid/text/style/ReplacementSpan;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x95

    const/16 v1, 0xd8

    const/16 v2, 0x43

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/B;->a:I

    const/16 v0, 0xb7

    invoke-static {v0, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/B;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x64

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput v0, p0, Lcom/google/googlenav/ui/android/B;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/android/B;->d:I

    iput v0, p0, Lcom/google/googlenav/ui/android/B;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/android/B;->d:I

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    iput v0, p0, Lcom/google/googlenav/ui/android/B;->c:I

    iget v0, p0, Lcom/google/googlenav/ui/android/B;->c:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/B;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    const/high16 v2, 0x4120

    add-float v3, p5, v2

    const/16 v2, 0xc

    sub-int v8, p7, v2

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p9

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/google/googlenav/ui/android/B;->c:I

    iget v4, p0, Lcom/google/googlenav/ui/android/B;->d:I

    add-int v9, v2, v4

    iget v2, p0, Lcom/google/googlenav/ui/android/B;->d:I

    mul-int/lit8 v2, v2, 0x64

    div-int v10, v2, v9

    sget v2, Lcom/google/googlenav/ui/android/B;->b:I

    move-object/from16 v0, p9

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v8

    int-to-float v2, v10

    add-float v5, v3, v2

    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    move-object v2, p1

    move-object/from16 v7, p9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v10

    add-float/2addr v3, v2

    const/4 v10, 0x1

    const/4 v2, -0x1

    move-object/from16 v0, p9

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v8

    int-to-float v2, v10

    add-float v5, v3, v2

    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    move-object v2, p1

    move-object/from16 v7, p9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v10

    add-float/2addr v3, v2

    iget v2, p0, Lcom/google/googlenav/ui/android/B;->c:I

    mul-int/lit8 v2, v2, 0x64

    div-int v9, v2, v9

    sget v2, Lcom/google/googlenav/ui/android/B;->a:I

    move-object/from16 v0, p9

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v8

    int-to-float v2, v9

    add-float v5, v3, v2

    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    move-object v2, p1

    move-object/from16 v7, p9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v9

    add-float/2addr v2, v3

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.class final Lcom/flurry/android/r;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/n;

.field private b:Lcom/flurry/android/y;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/n;Lcom/flurry/android/y;Lcom/flurry/android/e;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/flurry/android/r;->a:Lcom/flurry/android/n;

    iput-object p3, p0, Lcom/flurry/android/r;->b:Lcom/flurry/android/y;

    iget-object v0, p3, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    iput p5, p0, Lcom/flurry/android/r;->d:I

    iget v1, p0, Lcom/flurry/android/r;->d:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/flurry/android/r;->setFocusable(Z)V

    .line 33
    return-void

    .line 32
    :pswitch_0
    if-eqz p6, :cond_0

    invoke-direct {p0, p1, p4, v0, v3}, Lcom/flurry/android/r;->a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/o;Z)V

    :goto_1
    :pswitch_1
    if-eqz p6, :cond_1

    invoke-direct {p0, p1, p4, v0, v3}, Lcom/flurry/android/r;->a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/o;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p4, v0, v2}, Lcom/flurry/android/r;->a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/o;Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p4, v0, v2}, Lcom/flurry/android/r;->a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/o;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/o;Z)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/flurry/android/r;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;

    move-object v1, v0

    .line 73
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 75
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;

    move-object v3, v0

    .line 76
    if-eqz v3, :cond_0

    .line 78
    iget-object v3, v3, Lcom/flurry/android/AdImage;->d:[B

    .line 79
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v9, 0x8

    invoke-static {p1, v9}, Lcom/flurry/android/h;->a(Landroid/content/Context;I)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v10, -0x100

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, v8, v9, v9, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v5, v3, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_4

    .line 83
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v5, 0x4040

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    aget v7, v3, v7

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v3, v3, v8

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v7, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v3, v5

    .line 86
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget v3, v1, Lcom/flurry/android/c;->m:I

    invoke-static {p1, v3}, Lcom/flurry/android/h;->a(Landroid/content/Context;I)I

    move-result v3

    iget v4, v1, Lcom/flurry/android/c;->n:I

    invoke-static {p1, v4}, Lcom/flurry/android/h;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/flurry/android/h;->a(Landroid/content/Context;Landroid/widget/ImageView;II)V

    .line 90
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/flurry/android/r;->a:Lcom/flurry/android/n;

    iget-wide v4, v1, Lcom/flurry/android/c;->c:J

    invoke-virtual {v3, v4, v5}, Lcom/flurry/android/n;->a(J)Lcom/flurry/android/AdImage;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_1

    .line 98
    iget-object v3, v3, Lcom/flurry/android/AdImage;->d:[B

    .line 99
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    move-object v3, v4

    .line 109
    :goto_1
    invoke-virtual {p0, v3}, Lcom/flurry/android/r;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 115
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 119
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    if-eqz p4, :cond_3

    .line 122
    iget v5, v1, Lcom/flurry/android/c;->f:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget v5, v1, Lcom/flurry/android/c;->e:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/flurry/android/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v5, v1, Lcom/flurry/android/c;->d:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    iget v5, v1, Lcom/flurry/android/c;->i:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget v5, v1, Lcom/flurry/android/c;->h:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    iget-object v5, v1, Lcom/flurry/android/c;->g:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/flurry/android/o;->d:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_2
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 150
    invoke-virtual {p0, v5}, Lcom/flurry/android/r;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6, v5}, Lcom/flurry/android/r;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget v5, v1, Lcom/flurry/android/c;->q:I

    iget v6, v1, Lcom/flurry/android/c;->o:I

    shl-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/flurry/android/c;->m:I

    sub-int/2addr v5, v6

    .line 159
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    iget v7, v1, Lcom/flurry/android/c;->o:I

    iget v1, v1, Lcom/flurry/android/c;->p:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v1, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    invoke-virtual {p0, v2, v6}, Lcom/flurry/android/r;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    const/4 v5, 0x6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 170
    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 172
    invoke-virtual {p0, v3, v1}, Lcom/flurry/android/r;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 177
    const/4 v2, 0x3

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    invoke-virtual {p0, v4, v1}, Lcom/flurry/android/r;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void

    .line 107
    :cond_2
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v4

    goto/16 :goto_1

    .line 135
    :cond_3
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 136
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/flurry/android/o;->d:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget v5, v1, Lcom/flurry/android/c;->i:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget v5, v1, Lcom/flurry/android/c;->h:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    iget-object v5, v1, Lcom/flurry/android/c;->g:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 142
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/flurry/android/o;->c:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget v5, v1, Lcom/flurry/android/c;->l:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget v5, v1, Lcom/flurry/android/c;->k:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    iget-object v5, v1, Lcom/flurry/android/c;->j:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    :cond_4
    move-object v3, v4

    goto/16 :goto_0
.end method


# virtual methods
.method final a()Lcom/flurry/android/y;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flurry/android/r;->b:Lcom/flurry/android/y;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/flurry/android/r;->c:Ljava/lang/String;

    .line 197
    return-void
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

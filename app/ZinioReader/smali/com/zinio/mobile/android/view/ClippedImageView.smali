.class public Lcom/zinio/mobile/android/view/ClippedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->a:F

    .line 47
    const/16 v0, 0x50

    iput v0, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->b:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->c:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->a:F

    .line 59
    const/16 v0, 0x50

    iput v0, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->b:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->c:I

    .line 61
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x50

    iput v0, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->b:I

    .line 94
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 133
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v0, v0, 0x7d

    div-int/lit8 v0, v0, 0x60

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 138
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 139
    iget v3, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->c:I

    packed-switch v3, :pswitch_data_0

    move v6, v2

    move v2, v0

    move v0, v6

    .line 148
    :goto_0
    const/4 v3, 0x0

    .line 149
    iget v4, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->a:F

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->a:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 151
    const/4 v3, 0x1

    .line 156
    :cond_0
    iget v4, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->b:I

    sparse-switch v4, :sswitch_data_0

    .line 182
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 183
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    return-void

    .line 141
    :pswitch_0
    int-to-float v0, v0

    iget v3, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->a:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move v6, v2

    move v2, v0

    move v0, v6

    .line 142
    goto :goto_0

    .line 144
    :pswitch_1
    int-to-float v2, v2

    iget v3, p0, Lcom/zinio/mobile/android/view/ClippedImageView;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    .line 162
    :sswitch_0
    if-eqz v3, :cond_1

    .line 164
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 165
    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 172
    :sswitch_1
    if-eqz v3, :cond_1

    .line 174
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 175
    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

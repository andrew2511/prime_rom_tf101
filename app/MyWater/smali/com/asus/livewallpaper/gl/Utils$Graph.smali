.class final Lcom/asus/livewallpaper/gl/Utils$Graph;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Graph"
.end annotation


# static fields
.field static final sSystemBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field static final sSystemPaint:Landroid/graphics/Paint;

.field static final sSystemPaintHighQuality:Landroid/graphics/Paint;

.field static final sSystemPaintLowQuality:Landroid/graphics/Paint;

.field static final sTmpPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 162
    sput-object v0, Lcom/asus/livewallpaper/gl/Utils$Graph;->sSystemBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 164
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 165
    .local v1, p:Landroid/graphics/Paint;
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 167
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 168
    sput-object v1, Lcom/asus/livewallpaper/gl/Utils$Graph;->sSystemPaint:Landroid/graphics/Paint;

    .line 170
    new-instance v1, Landroid/graphics/Paint;

    .end local v1           #p:Landroid/graphics/Paint;
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 171
    .restart local v1       #p:Landroid/graphics/Paint;
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 173
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 174
    sput-object v1, Lcom/asus/livewallpaper/gl/Utils$Graph;->sSystemPaintLowQuality:Landroid/graphics/Paint;

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    .end local v1           #p:Landroid/graphics/Paint;
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 177
    .restart local v1       #p:Landroid/graphics/Paint;
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 179
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 180
    sput-object v1, Lcom/asus/livewallpaper/gl/Utils$Graph;->sSystemPaintHighQuality:Landroid/graphics/Paint;

    .line 182
    new-instance v2, Landroid/graphics/Paint;

    sget-object v3, Lcom/asus/livewallpaper/gl/Utils$Graph;->sSystemPaintLowQuality:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sput-object v2, Lcom/asus/livewallpaper/gl/Utils$Graph;->sTmpPaint:Landroid/graphics/Paint;

    .line 183
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateBoundingRect(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "cirX"
    .parameter "cirY"
    .parameter "deg"
    .parameter "oriR"
    .parameter "result"

    .prologue
    .line 213
    invoke-static {p2}, Lcom/asus/livewallpaper/gl/MyFloatMath;->normalizedDegree(F)F

    move-result p2

    .line 216
    neg-float v0, p2

    invoke-static {v0}, Lcom/asus/livewallpaper/gl/MyFloatMath;->toRadians(F)F

    move-result v1

    .line 217
    .local v1, theta:F
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 218
    .local v0, COS:F
    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    .line 221
    .local v1, SIN:F
    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v3, v2, p0

    .line 222
    .local v3, o_left:F
    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v5, v2, p1

    .line 223
    .local v5, o_top:F
    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v4, v2, p0

    .line 224
    .local v4, o_right:F
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .end local p0
    int-to-float p0, p0

    sub-float v2, p0, p1

    .line 226
    .local v2, o_bottom:F
    iget p0, p3, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    .line 227
    .local p0, left:F
    iget p0, p3, Landroid/graphics/Rect;->top:I

    .end local p0           #left:F
    int-to-float p0, p0

    .line 228
    .local p0, top:F
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .end local p0           #top:F
    int-to-float p0, p0

    .line 229
    .local p0, right:F
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .end local p0           #right:F
    int-to-float p0, p0

    .line 231
    .local p0, bottom:F
    float-to-int p0, p2

    .line 232
    .local p0, deg2:I
    div-int/lit8 p0, p0, 0x5a

    .end local p0           #deg2:I
    packed-switch p0, :pswitch_data_0

    .line 257
    mul-float p0, v0, v3

    mul-float p1, v1, v2

    add-float/2addr p1, p0

    .line 258
    .local p1, left:F
    neg-float p0, v1

    mul-float/2addr p0, v3

    mul-float p2, v0, v5

    add-float p3, p0, p2

    .line 259
    .local p3, top:F
    mul-float p0, v0, v4

    mul-float p2, v1, v5

    add-float/2addr p2, p0

    .line 260
    .local p2, right:F
    neg-float p0, v1

    mul-float/2addr p0, v4

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    .line 264
    .end local v0           #COS:F
    .local p0, bottom:F
    :goto_0
    invoke-static {p1}, Landroid/util/FloatMath;->floor(F)F

    move-result p1

    .end local p1           #left:F
    float-to-int p1, p1

    invoke-static {p3}, Landroid/util/FloatMath;->floor(F)F

    move-result p3

    .end local p3           #top:F
    float-to-int p3, p3

    invoke-static {p2}, Landroid/util/FloatMath;->ceil(F)F

    move-result p2

    .end local p2           #right:F
    float-to-int p2, p2

    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    .end local p0           #bottom:F
    float-to-int p0, p0

    invoke-virtual {p4, p1, p3, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    return-void

    .line 235
    .restart local v0       #COS:F
    .local p1, cirY:F
    .local p2, deg:F
    .local p3, oriR:Landroid/graphics/Rect;
    :pswitch_0
    mul-float p0, v0, v4

    mul-float p1, v1, v2

    add-float/2addr p1, p0

    .line 236
    .local p1, left:F
    neg-float p0, v1

    mul-float/2addr p0, v3

    mul-float p2, v0, v2

    add-float p3, p0, p2

    .line 237
    .local p3, top:F
    mul-float p0, v0, v3

    mul-float p2, v1, v5

    add-float/2addr p2, p0

    .line 238
    .local p2, right:F
    neg-float p0, v1

    mul-float/2addr p0, v4

    mul-float/2addr v0, v5

    add-float/2addr p0, v0

    .line 239
    .restart local p0       #bottom:F
    goto :goto_0

    .line 242
    .end local p0           #bottom:F
    .local p1, cirY:F
    .local p2, deg:F
    .local p3, oriR:Landroid/graphics/Rect;
    :pswitch_1
    mul-float p0, v0, v4

    mul-float p1, v1, v5

    add-float/2addr p1, p0

    .line 243
    .local p1, left:F
    neg-float p0, v1

    mul-float/2addr p0, v4

    mul-float p2, v0, v2

    add-float p3, p0, p2

    .line 244
    .local p3, top:F
    mul-float p0, v0, v3

    mul-float p2, v1, v2

    add-float/2addr p2, p0

    .line 245
    .local p2, right:F
    neg-float p0, v1

    mul-float/2addr p0, v3

    mul-float/2addr v0, v5

    add-float/2addr p0, v0

    .line 246
    .restart local p0       #bottom:F
    goto :goto_0

    .line 249
    .end local p0           #bottom:F
    .local p1, cirY:F
    .local p2, deg:F
    .local p3, oriR:Landroid/graphics/Rect;
    :pswitch_2
    mul-float p0, v0, v3

    mul-float p1, v1, v5

    add-float/2addr p1, p0

    .line 250
    .local p1, left:F
    neg-float p0, v1

    mul-float/2addr p0, v4

    mul-float p2, v0, v5

    add-float p3, p0, p2

    .line 251
    .local p3, top:F
    mul-float p0, v0, v4

    mul-float p2, v1, v2

    add-float/2addr p2, p0

    .line 252
    .local p2, right:F
    neg-float p0, v1

    mul-float/2addr p0, v3

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    .line 253
    .restart local p0       #bottom:F
    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

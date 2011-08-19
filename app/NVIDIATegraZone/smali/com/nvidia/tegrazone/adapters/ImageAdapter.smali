.class public Lcom/nvidia/tegrazone/adapters/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field public featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field private mImageIds:[Ljava/lang/Integer;

.field private mImages:[Landroid/widget/ImageView;

.field private tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V
    .locals 3
    .parameter "c"
    .parameter "featuredGames"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 36
    const v2, 0x7f020003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 37
    const v2, 0x7f020018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 5
    const v2, 0x7f020019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 39
    const v2, 0x7f020024

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mImageIds:[Ljava/lang/Integer;

    .line 46
    iput-object p1, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 49
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mImageIds:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    .line 50
    return-void
.end method


# virtual methods
.method public createReflectedImages()Z
    .locals 36

    .prologue
    .line 54
    const/16 v32, 0x4

    .line 57
    .local v32, reflectionGap:I
    const/16 v29, 0x0

    .line 58
    .local v29, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mImageIds:[Ljava/lang/Integer;

    move-object/from16 v32, v0

    .end local v32           #reflectionGap:I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v34, v0

    const/4 v6, 0x0

    move/from16 v35, v6

    move/from16 v30, v29

    .end local v29           #index:I
    .local v30, index:I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v34

    if-lt v0, v1, :cond_0

    .line 107
    const/4 v6, 0x1

    return v6

    .line 58
    :cond_0
    aget-object v6, v32, v35

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 59
    .local v27, imageId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 60
    .local v5, originalImage:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 61
    .local v8, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    .line 65
    .local v26, height:I
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v10, matrix:Landroid/graphics/Matrix;
    const/high16 v6, 0x3f80

    const/high16 v7, -0x4080

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 70
    const/4 v6, 0x0

    div-int/lit8 v7, v26, 0x2

    div-int/lit8 v9, v26, 0x2

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 75
    .local v33, reflectionImage:Landroid/graphics/Bitmap;
    div-int/lit8 v6, v26, 0x2

    add-int v6, v6, v26

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 74
    invoke-static {v8, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 79
    .local v25, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v11, canvas:Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v11, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .local v16, deafaultPaint:Landroid/graphics/Paint;
    const/4 v12, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move v13, v0

    int-to-float v14, v8

    add-int/lit8 v6, v26, 0x4

    int-to-float v15, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 86
    const/4 v6, 0x0

    add-int/lit8 v7, v26, 0x4

    int-to-float v7, v7

    const/4 v9, 0x0

    move-object v0, v11

    move-object/from16 v1, v33

    move v2, v6

    move v3, v7

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    new-instance v31, Landroid/graphics/Paint;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Paint;-><init>()V

    .line 90
    .local v31, paint:Landroid/graphics/Paint;
    new-instance v17, Landroid/graphics/LinearGradient;

    const/16 v18, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    .line 91
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x70ffffff

    const v23, 0xffffff

    .line 92
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 90
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 94
    .local v17, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    const/16 v19, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v21, v0

    .line 99
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v18, v11

    move-object/from16 v23, v31

    .line 98
    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    new-instance v28, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v28, imageView:Landroid/widget/ImageView;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    new-instance v6, Landroid/widget/Gallery$LayoutParams;

    const/16 v7, 0x78

    const/16 v8, 0xb4

    invoke-direct {v6, v7, v8}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .end local v8           #width:I
    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    move-object v6, v0

    add-int/lit8 v29, v30, 0x1

    .end local v30           #index:I
    .restart local v29       #index:I
    aput-object v28, v6, v30

    .line 58
    add-int/lit8 v6, v35, 0x1

    move/from16 v35, v6

    move/from16 v30, v29

    .end local v29           #index:I
    .restart local v30       #index:I
    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 121
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScale(ZI)F
    .locals 6
    .parameter "focused"
    .parameter "offset"

    .prologue
    .line 154
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const-wide/high16 v2, 0x4000

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v3, 0xc3

    .line 129
    iget-object v2, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 134
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, i:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/nvidia/tegrazone/adapters/ImageAdapter;->tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeaturedImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 144
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 145
    return-object v1
.end method

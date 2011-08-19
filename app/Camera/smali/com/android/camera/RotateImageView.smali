.class public Lcom/android/camera/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v0, p0, Lcom/android/camera/RotateImageView;->mCurrentDegree:I

    .line 55
    iput v0, p0, Lcom/android/camera/RotateImageView;->mStartDegree:I

    .line 56
    iput v0, p0, Lcom/android/camera/RotateImageView;->mTargetDegree:I

    .line 58
    iput-boolean v0, p0, Lcom/android/camera/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/RotateImageView;->mEnableAnimation:Z

    .line 60
    iput-wide v1, p0, Lcom/android/camera/RotateImageView;->mAnimationStartTime:J

    .line 61
    iput-wide v1, p0, Lcom/android/camera/RotateImageView;->mAnimationEndTime:J

    .line 67
    return-void
.end method

.method private updateThumb(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "original"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 209
    if-nez p1, :cond_0

    .line 210
    iput-object v3, p0, Lcom/android/camera/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 211
    iput-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {p0, v3}, Lcom/android/camera/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 217
    .local v2, param:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 219
    .local v1, miniThumbWidth:I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 221
    .local v0, miniThumbHeight:I
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 224
    iget-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_2

    .line 225
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 226
    iget-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 227
    iget-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/camera/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    aput-object v5, v3, v4

    .line 230
    iget-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 231
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/camera/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 232
    iget-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v3, p0, Lcom/android/camera/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/RotateImageView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 238
    iget-object v2, p0, Lcom/android/camera/RotateImageView;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move v2, v5

    .line 252
    :goto_0
    return v2

    .line 242
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/RotateImageView;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 244
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 245
    const-string v2, "RotateImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to open URI. URI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/RotateImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 246
    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v2, 0x1

    goto :goto_0

    .line 249
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/io/IOException;
    move v2, v5

    .line 250
    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;)Z
    .locals 10
    .parameter "filePath"

    .prologue
    .line 187
    const/4 v5, 0x0

    .line 188
    .local v5, f:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 189
    .local v0, b:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 191
    .local v2, d:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v5           #f:Ljava/io/FileInputStream;
    .local v6, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .end local v0           #b:Ljava/io/BufferedInputStream;
    .local v1, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    .end local v2           #d:Ljava/io/DataInputStream;
    .local v3, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 195
    .local v8, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 196
    .local v7, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v8, v7}, Lcom/android/camera/RotateImageView;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 197
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 201
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 205
    const/4 v9, 0x1

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v8           #uri:Landroid/net/Uri;
    .restart local v5       #f:Ljava/io/FileInputStream;
    :goto_0
    return v9

    .line 198
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 199
    .local v4, e:Ljava/io/IOException;
    :goto_1
    const/4 v9, 0x0

    .line 201
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 201
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 201
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .line 198
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    move-object v4, v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    move-object v4, v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    move-object v4, v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 99
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 102
    .local v4, bounds:Landroid/graphics/Rect;
    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    .line 103
    .local v16, w:I
    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 105
    .local v8, h:I
    if-eqz v16, :cond_0

    if-eqz v8, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RotateImageView;->mCurrentDegree:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RotateImageView;->mTargetDegree:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 108
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v13

    .line 109
    .local v13, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v13, v18

    if-gez v18, :cond_5

    .line 110
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, v13, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v6, v0

    .line 111
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RotateImageView;->mStartDegree:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/RotateImageView;->mClockwise:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move/from16 v19, v6

    :goto_1
    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0xb4

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 113
    .local v5, degree:I
    if-ltz v5, :cond_4

    move v0, v5

    rem-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move/from16 v5, v18

    .line 114
    :goto_2
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/RotateImageView;->mCurrentDegree:I

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/RotateImageView;->invalidate()V

    .line 121
    .end local v5           #degree:I
    .end local v6           #deltaTime:I
    .end local v13           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/RotateImageView;->getPaddingLeft()I

    move-result v10

    .line 122
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/RotateImageView;->getPaddingTop()I

    move-result v15

    .line 123
    .local v15, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/RotateImageView;->getPaddingRight()I

    move-result v11

    .line 124
    .local v11, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/RotateImageView;->getPaddingBottom()I

    move-result v3

    .line 125
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/RotateImageView;->getWidth()I

    move-result v18

    sub-int v18, v18, v10

    sub-int v17, v18, v11

    .line 126
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/RotateImageView;->getHeight()I

    move-result v18

    sub-int v18, v18, v15

    sub-int v9, v18, v3

    .line 128
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v12

    .line 129
    .local v12, saveCount:I
    div-int/lit8 v18, v17, 0x2

    add-int v18, v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v9, 0x2

    add-int v19, v19, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RotateImageView;->mCurrentDegree:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 131
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v8

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 111
    .end local v3           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v11           #right:I
    .end local v12           #saveCount:I
    .end local v15           #top:I
    .end local v17           #width:I
    .restart local v6       #deltaTime:I
    .restart local v13       #time:J
    :cond_3
    move v0, v6

    neg-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_1

    .line 113
    .restart local v5       #degree:I
    :cond_4
    move v0, v5

    rem-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move/from16 v5, v18

    goto/16 :goto_2

    .line 117
    .end local v5           #degree:I
    .end local v6           #deltaTime:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RotateImageView;->mTargetDegree:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uri"
    .parameter "original"

    .prologue
    .line 143
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 144
    :cond_0
    const/4 p1, 0x0

    .line 145
    const/4 p2, 0x0

    .line 147
    :cond_1
    iput-object p1, p0, Lcom/android/camera/RotateImageView;->mUri:Landroid/net/Uri;

    .line 148
    invoke-direct {p0, p2}, Lcom/android/camera/RotateImageView;->updateThumb(Landroid/graphics/Bitmap;)V

    .line 149
    return-void
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 75
    if-ltz p1, :cond_0

    rem-int/lit16 v1, p1, 0x168

    move p1, v1

    .line 76
    :goto_0
    iget v1, p0, Lcom/android/camera/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 94
    :goto_1
    return-void

    .line 75
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 v1, v1, 0x168

    move p1, v1

    goto :goto_0

    .line 78
    :cond_1
    iput p1, p0, Lcom/android/camera/RotateImageView;->mTargetDegree:I

    .line 79
    iget v1, p0, Lcom/android/camera/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/RotateImageView;->mStartDegree:I

    .line 80
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/RotateImageView;->mAnimationStartTime:J

    .line 82
    iget v1, p0, Lcom/android/camera/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/android/camera/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 83
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 87
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    const/16 v1, 0x168

    sub-int v1, v0, v1

    move v0, v1

    .line 89
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/RotateImageView;->mClockwise:Z

    .line 90
    iget-wide v1, p0, Lcom/android/camera/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xb4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/RotateImageView;->mAnimationEndTime:J

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/RotateImageView;->invalidate()V

    goto :goto_1

    .line 83
    :cond_3
    add-int/lit16 v1, v0, 0x168

    move v0, v1

    goto :goto_2

    .line 89
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public storeData(Ljava/lang/String;)Z
    .locals 11
    .parameter "filePath"

    .prologue
    const/4 v10, 0x0

    .line 160
    iget-object v7, p0, Lcom/android/camera/RotateImageView;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_0

    move v7, v10

    .line 181
    :goto_0
    return v7

    .line 164
    :cond_0
    const/4 v5, 0x0

    .line 165
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 166
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 168
    .local v2, d:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/RotateImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    iget-object v7, p0, Lcom/android/camera/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 173
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 177
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 179
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 181
    const/4 v7, 0x1

    goto :goto_0

    .line 174
    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .end local v3           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 177
    .local v4, e:Ljava/io/IOException;
    :goto_1
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 179
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move v7, v10

    goto :goto_0

    .line 177
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 179
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 177
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 174
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v4, v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    move-object v4, v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

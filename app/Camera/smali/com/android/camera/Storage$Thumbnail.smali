.class public Lcom/android/camera/Storage$Thumbnail;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnail"
.end annotation


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mId:J

.field private mOrientation:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;JI)V
    .locals 0
    .parameter "baseUri"
    .parameter "id"
    .parameter "orientation"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/camera/Storage$Thumbnail;->mBaseUri:Landroid/net/Uri;

    .line 66
    iput-wide p2, p0, Lcom/android/camera/Storage$Thumbnail;->mId:J

    .line 67
    iput p4, p0, Lcom/android/camera/Storage$Thumbnail;->mOrientation:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JILcom/android/camera/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/Storage$Thumbnail;-><init>(Landroid/net/Uri;JI)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/camera/Storage$Thumbnail;->mUri:Landroid/net/Uri;

    .line 72
    iput-object p2, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    iput p3, p0, Lcom/android/camera/Storage$Thumbnail;->mOrientation:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/android/camera/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/Storage$Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x3

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/Storage$Thumbnail;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-wide v0, p0, Lcom/android/camera/Storage$Thumbnail;->mId:J

    invoke-static {p1, v0, v1, v2, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/Storage$Thumbnail;->mOrientation:I

    if-eqz v0, :cond_1

    .line 95
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 96
    .local v5, m:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/android/camera/Storage$Thumbnail;->mOrientation:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 98
    iput v3, p0, Lcom/android/camera/Storage$Thumbnail;->mOrientation:I

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 103
    .local v7, rotated:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    iput-object v7, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotated:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 88
    :cond_2
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/Storage$Thumbnail;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-wide v0, p0, Lcom/android/camera/Storage$Thumbnail;->mId:J

    invoke-static {p1, v0, v1, v2, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 105
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 106
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "CameraStorage"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBaseUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mBaseUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/camera/Storage$Thumbnail;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mUri:Landroid/net/Uri;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Storage$Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

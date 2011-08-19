.class public Lcom/google/android/maps/driveabout/vector/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/bj;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/bj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/x;->a:Lcom/google/android/maps/driveabout/vector/bj;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->d()V

    invoke-static {}, Lac/i;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/x;->a:Lcom/google/android/maps/driveabout/vector/bj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bj;->b(Z)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method


# virtual methods
.method a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "OutOfMemory in createBitmap"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/x;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "OutOfMemory in decodeByteArray"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/x;->a(Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method a(I)Ljava/nio/ByteBuffer;
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "OutOfMemory in allocateDirectByteBuffer"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/x;->a(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

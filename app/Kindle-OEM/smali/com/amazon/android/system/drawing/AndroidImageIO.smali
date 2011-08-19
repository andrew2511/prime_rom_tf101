.class Lcom/amazon/android/system/drawing/AndroidImageIO;
.super Ljava/lang/Object;
.source "AndroidImageIO.java"

# interfaces
.implements Lcom/amazon/system/io/ImageIO;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read([B)Lcom/amazon/system/drawing/BufferedImageExtended;
    .locals 3
    .parameter "data"

    .prologue
    .line 13
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/system/drawing/AndroidBufferedImage;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

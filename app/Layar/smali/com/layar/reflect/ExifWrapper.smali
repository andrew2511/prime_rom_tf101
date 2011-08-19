.class public Lcom/layar/reflect/ExifWrapper;
.super Ljava/lang/Object;
.source "ExifWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"


# instance fields
.field private mInstance:Landroid/media/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/layar/reflect/ExifWrapper;

    invoke-static {v1}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/layar/reflect/ExifWrapper;->TAG:Ljava/lang/String;

    .line 24
    :try_start_0
    const-string v1, "android.media.ExifInterface"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-void

    .line 25
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 26
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/layar/reflect/ExifWrapper;->mInstance:Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static checkAvailable()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method


# virtual methods
.method public saveAttributes()Z
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/layar/reflect/ExifWrapper;->mInstance:Landroid/media/ExifInterface;

    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 50
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/layar/reflect/ExifWrapper;->mInstance:Landroid/media/ExifInterface;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

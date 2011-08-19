.class public Lcom/google/android/youtube/core/converter/http/BitmapResponseConverter;
.super Ljava/lang/Object;
.source "BitmapResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final decodeOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/BitmapResponseConverter;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/BitmapResponseConverter;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 28
    return-void
.end method


# virtual methods
.method public convertResponse(Lorg/apache/http/HttpResponse;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/core/converter/http/BitmapResponseConverter;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 40
    new-instance v2, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v3, "Error in stream, can\'t create bitmap"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 44
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v3, "IO error converting bitmap"

    invoke-direct {v2, v3, v1}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 42
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 18
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/BitmapResponseConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

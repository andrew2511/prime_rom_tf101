.class public interface abstract Lcom/google/android/youtube/googlemobile/common/graphics/ImageFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createImage(II)Lcom/google/android/youtube/googlemobile/common/graphics/GoogleImage;
.end method

.method public abstract createImage(IIZ)Lcom/google/android/youtube/googlemobile/common/graphics/GoogleImage;
.end method

.method public abstract createImage(Ljava/lang/String;)Lcom/google/android/youtube/googlemobile/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createImage([BII)Lcom/google/android/youtube/googlemobile/common/graphics/GoogleImage;
.end method

.method public abstract createRGBImage([IIIZ)Lcom/google/android/youtube/googlemobile/common/graphics/GoogleImage;
.end method

.method public abstract createSquareImage([BI)Lcom/google/android/youtube/googlemobile/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createUnscaledImage(Ljava/lang/String;)Lcom/google/android/youtube/googlemobile/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

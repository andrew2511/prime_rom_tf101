.class public interface abstract Lcom/amazon/topaz/internal/book/Image$ImageLoader;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLoader"
.end annotation


# virtual methods
.method public abstract load()Lcom/amazon/topaz/internal/book/IImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

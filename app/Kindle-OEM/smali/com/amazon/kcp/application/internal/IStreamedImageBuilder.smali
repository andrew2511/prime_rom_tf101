.class public interface abstract Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;
.super Ljava/lang/Object;
.source "IStreamedImageBuilder.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDataOutputStream;


# virtual methods
.method public abstract getImage(Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
.end method

.method public abstract getImageData()[B
.end method

.method public abstract release()V
.end method

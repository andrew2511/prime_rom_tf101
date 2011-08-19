.class public interface abstract Lcom/amazon/system/drawing/ImageFactory;
.super Ljava/lang/Object;
.source "ImageFactory.java"


# static fields
.field public static final TYPE_HIGH_RESOLUTION:I = 0x3

.field public static final TYPE_LOW_RESOLUTION:I = 0x1

.field public static final TYPE_NORMAL_RESOLUTION:I = 0x2


# virtual methods
.method public abstract getBufferedImage(II)Lcom/amazon/system/drawing/BufferedImage;
.end method

.method public abstract getImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public abstract getImageThresholdPercentage()F
.end method

.method public abstract getNotCachedImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

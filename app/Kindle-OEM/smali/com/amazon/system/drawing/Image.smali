.class public interface abstract Lcom/amazon/system/drawing/Image;
.super Ljava/lang/Object;
.source "Image.java"


# virtual methods
.method public abstract fetch()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract isFetched()Z
.end method

.method public abstract isSelectable()Z
.end method

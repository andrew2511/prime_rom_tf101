.class public interface abstract Lcom/amazon/kcp/application/internal/IDownloadableImage;
.super Ljava/lang/Object;
.source "IDownloadableImage.java"


# static fields
.field public static final DOWNLOADED_STATE:I = 0x2

.field public static final DOWNLOADING_STATE:I = 0x1

.field public static final NOT_AVAILABLE_STATE:I = 0x3

.field public static final NOT_YET_REGISTERED_STATE:I


# virtual methods
.method public abstract getDownloadState()I
.end method

.method public abstract getImage()Lcom/amazon/system/drawing/Image;
.end method

.method public abstract setImage(Lcom/amazon/system/drawing/Image;)V
.end method

.class public interface abstract Lcom/asus/reader/util/Downloader$UpdateListener;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/util/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateListener"
.end annotation


# virtual methods
.method public abstract checkAvailable(Ljava/lang/String;)Z
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onUpdate(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end method

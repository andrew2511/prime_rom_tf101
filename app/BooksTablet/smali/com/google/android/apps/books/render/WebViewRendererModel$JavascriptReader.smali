.class public interface abstract Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;
.super Ljava/lang/Object;
.source "WebViewRendererModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/WebViewRendererModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JavascriptReader"
.end annotation


# virtual methods
.method public abstract applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
.end method

.method public abstract goToPage(III)V
.end method

.method public abstract goToPosition(ILjava/lang/String;IZ)V
.end method

.method public abstract initializeJavascript(Lcom/google/android/apps/books/model/VolumeMetadata;)V
.end method

.method public abstract setHighlight(Ljava/lang/String;)V
.end method

.method public abstract takeSnapshot()Landroid/graphics/Bitmap;
.end method

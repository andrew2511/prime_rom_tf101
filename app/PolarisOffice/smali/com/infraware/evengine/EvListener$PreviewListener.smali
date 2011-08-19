.class public interface abstract Lcom/infraware/evengine/EvListener$PreviewListener;
.super Ljava/lang/Object;
.source "EvListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EvListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreviewListener"
.end annotation


# virtual methods
.method public abstract OnDrawPreviewBitmap()V
.end method

.method public abstract OnExitPreviewMode()V
.end method

.method public abstract OnGetPreviewBitmap(II)Landroid/graphics/Bitmap;
.end method

.method public abstract OnPreviewTimerStart()V
.end method

.method public abstract OnPreviewTimerStop()V
.end method

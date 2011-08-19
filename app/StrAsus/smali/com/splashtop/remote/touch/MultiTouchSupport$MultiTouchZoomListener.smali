.class public interface abstract Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;
.super Ljava/lang/Object;
.source "MultiTouchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/touch/MultiTouchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiTouchZoomListener"
.end annotation


# virtual methods
.method public abstract onWheelMove(FF)V
.end method

.method public abstract onZoomEnded(FF)V
.end method

.method public abstract onZoomStarted(FLandroid/graphics/PointF;)V
.end method

.method public abstract onZooming(FF)V
.end method

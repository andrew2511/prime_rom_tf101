.class public interface abstract Lcom/android/gallery3d/ui/GLRoot;
.super Ljava/lang/Object;
.source "GLRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    }
.end annotation


# virtual methods
.method public abstract addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
.end method

.method public abstract lockRenderThread()V
.end method

.method public abstract requestLayoutContentPane()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract setContentPane(Lcom/android/gallery3d/ui/GLView;)V
.end method

.method public abstract unlockRenderThread()V
.end method

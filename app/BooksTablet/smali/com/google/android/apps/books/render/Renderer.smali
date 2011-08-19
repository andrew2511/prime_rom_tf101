.class public interface abstract Lcom/google/android/apps/books/render/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancelPendingRequests()V
.end method

.method public abstract requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RendererListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

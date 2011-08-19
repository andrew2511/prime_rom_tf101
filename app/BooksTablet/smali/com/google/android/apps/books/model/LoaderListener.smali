.class public interface abstract Lcom/google/android/apps/books/model/LoaderListener;
.super Ljava/lang/Object;
.source "LoaderListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TD;>;TD;)V"
        }
    .end annotation
.end method

.method public abstract onLoaderReset(Landroid/content/Loader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TD;>;)V"
        }
    .end annotation
.end method

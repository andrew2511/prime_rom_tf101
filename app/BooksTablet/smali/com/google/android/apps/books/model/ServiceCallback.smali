.class public interface abstract Lcom/google/android/apps/books/model/ServiceCallback;
.super Ljava/lang/Object;
.source "ServiceCallback.java"


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
.method public abstract onHttpResponseException(Lorg/apache/http/client/HttpResponseException;)V
.end method

.method public abstract onIOException(Ljava/io/IOException;)V
.end method

.method public abstract onOtherException(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

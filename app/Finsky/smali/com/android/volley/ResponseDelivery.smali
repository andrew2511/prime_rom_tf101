.class public interface abstract Lcom/android/volley/ResponseDelivery;
.super Ljava/lang/Object;
.source "ResponseDelivery.java"


# virtual methods
.method public abstract discardBefore(I)V
.end method

.method public abstract postError(Lcom/android/volley/Request;Lcom/android/volley/Response$ErrorCode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response$ErrorCode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response",
            "<*>;)V"
        }
    .end annotation
.end method

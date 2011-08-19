.class public interface abstract Lcom/android/volley/Network;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;,
            Lcom/android/volley/ServerException;,
            Lcom/android/volley/NoConnectionException;,
            Lcom/android/volley/TimeoutException;
        }
    .end annotation
.end method

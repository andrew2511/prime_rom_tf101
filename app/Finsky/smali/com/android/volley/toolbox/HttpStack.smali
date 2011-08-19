.class public interface abstract Lcom/android/volley/toolbox/HttpStack;
.super Ljava/lang/Object;
.source "HttpStack.java"


# virtual methods
.method public abstract performRequest(Ljava/lang/String;Ljava/util/Map;[B)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/layar/util/HttpManager$ResponseHandler;
.super Ljava/lang/Object;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/util/HttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseHandler"
.end annotation


# virtual methods
.method public abstract handleException(Ljava/lang/Exception;)V
.end method

.method public abstract handleResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

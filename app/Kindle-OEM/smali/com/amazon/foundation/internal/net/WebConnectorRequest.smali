.class public interface abstract Lcom/amazon/foundation/internal/net/WebConnectorRequest;
.super Ljava/lang/Object;
.source "WebConnectorRequest.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IAsynchronousCallback;


# virtual methods
.method public abstract addFormPairPostData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addHeaders(Ljava/util/Hashtable;)V
.end method

.method public abstract prime()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V
.end method

.method public abstract setHttpStatusCallback(Lcom/amazon/foundation/IIntCallback;)V
.end method

.method public abstract setPostData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTimeout(J)V
.end method

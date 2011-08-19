.class public interface abstract Lcom/amazon/kcp/application/IRequestSigner;
.super Ljava/lang/Object;
.source "IRequestSigner.java"


# virtual methods
.method public abstract digestHeaderForRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeTokenAndKey()V
.end method

.method public abstract setKey(Ljava/lang/String;)V
.end method

.method public abstract setToken(Ljava/lang/String;)V
.end method

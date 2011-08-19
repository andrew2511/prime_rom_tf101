.class public interface abstract Lcom/amazon/kcp/application/IBookData;
.super Ljava/lang/Object;
.source "IBookData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/IBookData$Type;
    }
.end annotation


# virtual methods
.method public abstract clone()Lcom/amazon/kcp/application/IBookData;
.end method

.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/amazon/kcp/application/IBookData$Type;
.end method

.method public abstract getVersion()I
.end method

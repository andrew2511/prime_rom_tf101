.class public interface abstract Ltwitter4j/DirectMessage;
.super Ljava/lang/Object;
.source "DirectMessage.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getCreatedAt()Ljava/util/Date;
.end method

.method public abstract getId()J
.end method

.method public abstract getRecipient()Ltwitter4j/User;
.end method

.method public abstract getRecipientId()I
.end method

.method public abstract getRecipientScreenName()Ljava/lang/String;
.end method

.method public abstract getSender()Ltwitter4j/User;
.end method

.method public abstract getSenderId()I
.end method

.method public abstract getSenderScreenName()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

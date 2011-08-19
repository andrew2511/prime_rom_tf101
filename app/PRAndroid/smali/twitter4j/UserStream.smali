.class public interface abstract Ltwitter4j/UserStream;
.super Ljava/lang/Object;
.source "UserStream.java"

# interfaces
.implements Ltwitter4j/StreamImplementation;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract next(Ltwitter4j/UserStreamListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

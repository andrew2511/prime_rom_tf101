.class public interface abstract Ltwitter4j/StatusStream;
.super Ljava/lang/Object;
.source "StatusStream.java"

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

.method public abstract next(Ltwitter4j/StatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

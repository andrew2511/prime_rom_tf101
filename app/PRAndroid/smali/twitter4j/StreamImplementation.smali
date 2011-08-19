.class interface abstract Ltwitter4j/StreamImplementation;
.super Ljava/lang/Object;
.source "StreamImplementation.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract next([Ltwitter4j/StreamListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract onException(Ljava/lang/Exception;)V
.end method

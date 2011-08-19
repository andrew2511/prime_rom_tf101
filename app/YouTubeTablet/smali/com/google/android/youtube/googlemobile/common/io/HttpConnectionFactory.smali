.class public interface abstract Lcom/google/android/youtube/googlemobile/common/io/HttpConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/io/ConnectionFactory;


# virtual methods
.method public abstract createConnection(Ljava/lang/String;Z)Lcom/google/android/youtube/googlemobile/common/io/GoogleHttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

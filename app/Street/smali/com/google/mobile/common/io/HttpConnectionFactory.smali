.class public interface abstract Lcom/google/mobile/common/io/HttpConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mobile/common/io/ConnectionFactory;


# virtual methods
.method public abstract createConnection(Ljava/lang/String;Z)Lcom/google/mobile/common/io/GoogleHttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

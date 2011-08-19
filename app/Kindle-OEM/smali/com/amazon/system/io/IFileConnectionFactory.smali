.class public interface abstract Lcom/amazon/system/io/IFileConnectionFactory;
.super Ljava/lang/Object;
.source "IFileConnectionFactory.java"


# virtual methods
.method public abstract avaliableSizeForPath(Ljava/lang/String;)J
.end method

.method public abstract getFileSeparator()C
.end method

.method public abstract getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;
.end method

.method public abstract openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/asus/dmlib/syncml/message/IMsgSerializer;
.super Ljava/lang/Object;
.source "IMsgSerializer.java"


# virtual methods
.method public abstract serialize(Lcom/asus/dmlib/syncml/message/SyncMLMessage;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/asus/dmlib/syncml/exception/MsgSerializeException;
        }
    .end annotation
.end method

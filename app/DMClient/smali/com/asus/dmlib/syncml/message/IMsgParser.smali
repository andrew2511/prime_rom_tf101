.class public interface abstract Lcom/asus/dmlib/syncml/message/IMsgParser;
.super Ljava/lang/Object;
.source "IMsgParser.java"


# virtual methods
.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/MsgParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

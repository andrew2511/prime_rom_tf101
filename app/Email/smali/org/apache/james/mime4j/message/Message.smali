.class public Lorg/apache/james/mime4j/message/Message;
.super Lorg/apache/james/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/message/Message$MessageBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 65
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 66
    .local v0, parser:Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lorg/apache/james/mime4j/message/Message$MessageBuilder;

    invoke-direct {v1, p0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;-><init>(Lorg/apache/james/mime4j/message/Message;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 67
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getSubject()Lorg/apache/james/mime4j/field/UnstructuredField;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/field/UnstructuredField;

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v1

    .line 90
    .local v1, body:Lorg/apache/james/mime4j/message/Body;
    instance-of v3, v1, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v3, :cond_0

    .line 91
    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/message/Multipart;

    move-object v2, v0

    .line 92
    .local v2, mp:Lorg/apache/james/mime4j/message/Multipart;
    invoke-virtual {v2, p1}, Lorg/apache/james/mime4j/message/Multipart;->writeTo(Ljava/io/OutputStream;)V

    .line 96
    .end local v2           #mp:Lorg/apache/james/mime4j/message/Multipart;
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-interface {v1, p1}, Lorg/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

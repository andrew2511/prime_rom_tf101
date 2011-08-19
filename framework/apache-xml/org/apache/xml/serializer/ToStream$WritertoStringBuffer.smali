.class Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;
.super Ljava/io/Writer;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WritertoStringBuffer"
.end annotation


# instance fields
.field private final m_stringbuf:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/apache/xml/serializer/ToStream;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter
    .parameter "sb"

    .prologue
    .line 3197
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->this$0:Lorg/apache/xml/serializer/ToStream;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 3198
    iput-object p2, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    .line 3199
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3216
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3210
    return-void
.end method

.method public write(I)V
    .registers 4
    .parameter "i"

    .prologue
    .line 3220
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3221
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 3225
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3226
    return-void
.end method

.method public write([CII)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3203
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 3204
    return-void
.end method

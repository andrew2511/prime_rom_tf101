.class Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;
.super Lorg/apache/harmony/xml/ExpatPullParser$Document;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharDocument"
.end annotation


# instance fields
.field final buffer:[C

.field final in:Ljava/io/Reader;

.field final synthetic this$0:Lorg/apache/harmony/xml/ExpatPullParser;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/ExpatPullParser;Ljava/io/Reader;Z)V
    .registers 5
    .parameter
    .parameter "in"
    .parameter "processNamespaces"

    .prologue
    .line 914
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;->this$0:Lorg/apache/harmony/xml/ExpatPullParser;

    .line 915
    const-string v0, "UTF-16"

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/harmony/xml/ExpatPullParser$Document;-><init>(Lorg/apache/harmony/xml/ExpatPullParser;Ljava/lang/String;Z)V

    .line 911
    const/16 v0, 0xfd0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;->buffer:[C

    .line 916
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;->in:Ljava/io/Reader;

    .line 917
    return-void
.end method


# virtual methods
.method buffer()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;->in:Ljava/io/Reader;

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;->buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    return v0
.end method

.method flush(Lorg/apache/harmony/xml/ExpatParser;I)V
    .registers 7
    .parameter "parser"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 928
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;->buffer:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Lorg/apache/harmony/xml/ExpatParser;->append([CII)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_6} :catch_7

    .line 933
    return-void

    .line 929
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 930
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Error parsing document."

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;->this$0:Lorg/apache/harmony/xml/ExpatPullParser;

    invoke-direct {v1, v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

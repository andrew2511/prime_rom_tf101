.class abstract Lorg/apache/harmony/xml/ExpatPullParser$Document;
.super Ljava/lang/Object;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Document"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;
    }
.end annotation


# instance fields
.field currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

.field final encoding:Ljava/lang/String;

.field finished:Z

.field last:Lorg/apache/harmony/xml/ExpatPullParser$Event;

.field namespaceStackBuilder:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;

.field final parser:Lorg/apache/harmony/xml/ExpatParser;

.field final processNamespaces:Z

.field textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

.field final synthetic this$0:Lorg/apache/harmony/xml/ExpatPullParser;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/ExpatPullParser;Ljava/lang/String;Z)V
    .registers 10
    .parameter
    .parameter "encoding"
    .parameter "processNamespaces"

    .prologue
    const/4 v4, 0x0

    .line 722
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->this$0:Lorg/apache/harmony/xml/ExpatPullParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object v4, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->finished:Z

    .line 734
    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->namespaceStackBuilder:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;

    .line 737
    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser$StartDocumentEvent;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatPullParser$StartDocumentEvent;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    .line 738
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->last:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    .line 723
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->encoding:Ljava/lang/String;

    .line 724
    iput-boolean p3, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->processNamespaces:Z

    .line 726
    new-instance v2, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v2}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    .line 727
    .local v2, xmlReader:Lorg/apache/harmony/xml/ExpatReader;
    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;

    invoke-direct {v0, p0, v4}, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;-><init>(Lorg/apache/harmony/xml/ExpatPullParser$Document;Lorg/apache/harmony/xml/ExpatPullParser$1;)V

    invoke-virtual {v2, v0}, Lorg/apache/harmony/xml/ExpatReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 729
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser;

    move-object v1, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->parser:Lorg/apache/harmony/xml/ExpatParser;

    .line 731
    return-void
.end method


# virtual methods
.method add(Lorg/apache/harmony/xml/ExpatPullParser$Event;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 794
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    if-eqz v0, :cond_12

    .line 795
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->last:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->setNext(Lorg/apache/harmony/xml/ExpatPullParser$Event;)V

    .line 796
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->last:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    .line 800
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->last:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->setNext(Lorg/apache/harmony/xml/ExpatPullParser$Event;)V

    .line 801
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->last:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    .line 802
    return-void
.end method

.method abstract buffer()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method dequeue()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getNext()Lorg/apache/harmony/xml/ExpatPullParser$Event;

    move-result-object v0

    .local v0, next:Lorg/apache/harmony/xml/ExpatPullParser$Event;
    if-nez v0, :cond_c

    .line 813
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->pump()V

    goto :goto_0

    .line 816
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/harmony/xml/ExpatPullParser$Event;->next:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    .line 817
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    .line 819
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getType()I

    move-result v1

    return v1
.end method

.method abstract flush(Lorg/apache/harmony/xml/ExpatParser;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method getDepth()I
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getDepth()I

    move-result v0

    return v0
.end method

.method getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method isCurrentElementEmpty()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 837
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v2}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    .line 838
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "This is not a start tag."

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    :cond_11
    :goto_11
    :try_start_11
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v2}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getNext()Lorg/apache/harmony/xml/ExpatPullParser$Event;

    move-result-object v1

    .local v1, next:Lorg/apache/harmony/xml/ExpatPullParser$Event;
    if-nez v1, :cond_29

    .line 845
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->pump()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 847
    .end local v1           #next:Lorg/apache/harmony/xml/ExpatPullParser$Event;
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 848
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #next:Lorg/apache/harmony/xml/ExpatPullParser$Event;
    :cond_29
    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    const/4 v2, 0x1

    :goto_31
    return v2

    :cond_32
    const/4 v2, 0x0

    goto :goto_31
.end method

.method pump()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 744
    iget-boolean v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->finished:Z

    if-eqz v2, :cond_5

    .line 770
    :cond_4
    :goto_4
    return-void

    .line 748
    :cond_5
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->buffer()I

    move-result v1

    .line 751
    .local v1, length:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_31

    .line 752
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->finished:Z

    .line 753
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->this$0:Lorg/apache/harmony/xml/ExpatPullParser;

    #getter for: Lorg/apache/harmony/xml/ExpatPullParser;->relaxed:Z
    invoke-static {v2}, Lorg/apache/harmony/xml/ExpatPullParser;->access$400(Lorg/apache/harmony/xml/ExpatPullParser;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 755
    :try_start_17
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->parser:Lorg/apache/harmony/xml/ExpatParser;

    invoke-virtual {v2}, Lorg/apache/harmony/xml/ExpatParser;->finish()V
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_1c} :catch_25

    .line 761
    :cond_1c
    new-instance v2, Lorg/apache/harmony/xml/ExpatPullParser$EndDocumentEvent;

    invoke-direct {v2}, Lorg/apache/harmony/xml/ExpatPullParser$EndDocumentEvent;-><init>()V

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->add(Lorg/apache/harmony/xml/ExpatPullParser$Event;)V

    goto :goto_4

    .line 756
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 757
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Premature end of document."

    iget-object v4, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->this$0:Lorg/apache/harmony/xml/ExpatPullParser;

    invoke-direct {v2, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 765
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :cond_31
    if-eqz v1, :cond_4

    .line 769
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->parser:Lorg/apache/harmony/xml/ExpatParser;

    invoke-virtual {p0, v2, v1}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->flush(Lorg/apache/harmony/xml/ExpatParser;I)V

    goto :goto_4
.end method

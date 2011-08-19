.class public Lcom/asus/dmlib/syncml/message/SyncMLMsgSerializer;
.super Ljava/lang/Object;
.source "SyncMLMsgSerializer.java"

# interfaces
.implements Lcom/asus/dmlib/syncml/message/IMsgSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeElement(Ljava/io/Writer;Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 6
    .parameter "writer"
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e

    .line 36
    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 37
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 40
    .local v0, attrMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 44
    const-string v4, "=\""

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/asus/dmlib/syncml/message/SyncMLMsgSerializer;->writeEncoded(Ljava/io/Writer;Ljava/lang/String;)V

    .line 47
    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 51
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 53
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/asus/dmlib/syncml/message/SyncMLMsgSerializer;->writeEncoded(Ljava/io/Writer;Ljava/lang/String;)V

    .line 55
    const-string v4, "</"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 70
    :goto_1
    return-void

    .line 58
    :cond_1
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 59
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 61
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 62
    .local v1, child:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    invoke-direct {p0, p1, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgSerializer;->writeElement(Ljava/io/Writer;Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V

    goto :goto_2

    .line 64
    .end local v1           #child:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    :cond_2
    const-string v4, "</"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 68
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v4, "/>"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeEncoded(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .parameter "writer"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 74
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 75
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 99
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 74
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :sswitch_4
    const-string v3, "&apos;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    .end local v0           #ch:C
    :cond_0
    return-void

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_4
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public serialize(Lcom/asus/dmlib/syncml/message/SyncMLMessage;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "dmMsg"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/asus/dmlib/syncml/exception/MsgSerializeException;
        }
    .end annotation

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 27
    .local v1, writer:Ljava/io/Writer;
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/SyncMLMessage;->getContentElement()Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    .line 28
    .local v0, elem:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    invoke-direct {p0, v1, v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgSerializer;->writeElement(Ljava/io/Writer;Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0           #elem:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    .end local v1           #writer:Ljava/io/Writer;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v2

    goto :goto_0
.end method

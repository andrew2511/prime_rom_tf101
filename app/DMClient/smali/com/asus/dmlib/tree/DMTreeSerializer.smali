.class public Lcom/asus/dmlib/tree/DMTreeSerializer;
.super Ljava/lang/Object;
.source "DMTreeSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeContent(Ljava/io/Writer;Lcom/asus/dmlib/tree/DMNode;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "element"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getTagName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 30
    const-string v0, "<name>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeEncoded(Ljava/io/Writer;Ljava/lang/String;)V

    .line 32
    const-string v0, "</name>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowPermanent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowAdd()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowCopy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowDelete()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowExec()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowGet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowReplace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 40
    :cond_2
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowPermanent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    const-string v0, "<permanent/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 44
    :cond_3
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowAdd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    const-string v0, "<add/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    :cond_4
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowCopy()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    const-string v0, "<copy/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 52
    :cond_5
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowExec()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53
    const-string v0, "<exec/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 56
    :cond_6
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowGet()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    const-string v0, "<get/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 60
    :cond_7
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowReplace()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    const-string v0, "<replace/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    :cond_8
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowDelete()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 65
    const-string v0, "<delete/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    :cond_9
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowPermanent()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowAdd()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowCopy()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowDelete()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowExec()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowGet()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->isAllowReplace()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    :cond_a
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 72
    :cond_b
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getACL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 73
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 74
    const-string v0, "<acl>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getACL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeEncoded(Ljava/io/Writer;Ljava/lang/String;)V

    .line 76
    const-string v0, "</acl>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    :cond_c
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 79
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    const-string v0, "<type>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeEncoded(Ljava/io/Writer;Ljava/lang/String;)V

    .line 82
    const-string v0, "</type>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    :cond_d
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 85
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    const-string v0, "<format>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeEncoded(Ljava/io/Writer;Ljava/lang/String;)V

    .line 88
    const-string v0, "</format>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    :cond_e
    iget-object v0, p2, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 92
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    const-string v0, "<value>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/DMNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeEncoded(Ljava/io/Writer;Ljava/lang/String;)V

    .line 95
    const-string v0, "</value>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 97
    :cond_f
    return-void
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
    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 129
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 130
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 132
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 154
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 129
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    .end local v0           #ch:C
    :cond_0
    return-void

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private writeInterior(Ljava/io/Writer;Lcom/asus/dmlib/tree/Interior;Ljava/lang/String;)V
    .locals 4
    .parameter "writer"
    .parameter "element"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    const-string v2, "<node>\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeContent(Ljava/io/Writer;Lcom/asus/dmlib/tree/DMNode;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Lcom/asus/dmlib/tree/Interior;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/DMNode;

    .line 105
    .local v0, child:Lcom/asus/dmlib/tree/DMNode;
    instance-of v2, v0, Lcom/asus/dmlib/tree/Interior;

    if-eqz v2, :cond_1

    .line 106
    check-cast v0, Lcom/asus/dmlib/tree/Interior;

    .end local v0           #child:Lcom/asus/dmlib/tree/DMNode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeInterior(Ljava/io/Writer;Lcom/asus/dmlib/tree/Interior;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .restart local v0       #child:Lcom/asus/dmlib/tree/DMNode;
    :cond_1
    instance-of v2, v0, Lcom/asus/dmlib/tree/Leaf;

    if-eqz v2, :cond_0

    .line 108
    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    .end local v0           #child:Lcom/asus/dmlib/tree/DMNode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeLeaf(Ljava/io/Writer;Lcom/asus/dmlib/tree/Leaf;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    const-string v2, "</node>\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private writeLeaf(Ljava/io/Writer;Lcom/asus/dmlib/tree/Leaf;Ljava/lang/String;)V
    .locals 2
    .parameter "writer"
    .parameter "element"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    const-string v0, "<leaf>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeContent(Ljava/io/Writer;Lcom/asus/dmlib/tree/DMNode;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    const-string v0, "</leaf>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public serialize(Ljava/io/OutputStream;Lcom/asus/dmlib/tree/DMNode;)V
    .locals 3
    .parameter "out"
    .parameter "dmTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 17
    .local v0, writer:Ljava/io/Writer;
    const-string v1, "<rdmtree><version>1.02</version>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    check-cast p2, Lcom/asus/dmlib/tree/Interior;

    .end local p2
    const-string v1, ""

    invoke-direct {p0, v0, p2, v1}, Lcom/asus/dmlib/tree/DMTreeSerializer;->writeInterior(Ljava/io/Writer;Lcom/asus/dmlib/tree/Interior;Ljava/lang/String;)V

    .line 19
    const-string v1, "</rdmtree>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0           #writer:Ljava/io/Writer;
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v1

    goto :goto_0
.end method

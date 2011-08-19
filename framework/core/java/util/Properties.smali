.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT properties (comment?, entry*) >    <!ATTLIST properties version CDATA #FIXED \"1.0\" >    <!ELEMENT comment (#PCDATA) >    <!ELEMENT entry (#PCDATA) >    <!ATTLIST entry key CDATA #REQUIRED >"

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static lineSeparator:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field private transient builder:Ljavax/xml/parsers/DocumentBuilder;

.field protected defaults:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3
    .parameter "properties"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 99
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 100
    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 11
    .parameter "buffer"
    .parameter "string"
    .parameter "key"

    .prologue
    const/16 v6, 0x20

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, i:I
    if-nez p3, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_18

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_18

    .line 105
    const-string v4, "\\ "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 109
    :cond_18
    :goto_18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_78

    .line 110
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 111
    .local v0, ch:C
    packed-switch v0, :pswitch_data_7a

    .line 125
    :pswitch_25
    const-string v4, "\\#!=:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_31

    if-eqz p3, :cond_36

    if-ne v0, v6, :cond_36

    .line 126
    :cond_31
    const/16 v4, 0x5c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_36
    if-lt v0, v6, :cond_5a

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_5a

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 113
    :pswitch_42
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 116
    :pswitch_48
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 119
    :pswitch_4e
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 122
    :pswitch_54
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 131
    :cond_5a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, hex:Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v3, 0x0

    .local v3, j:I
    :goto_64
    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_74

    .line 134
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 136
    :cond_74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 140
    .end local v0           #ch:C
    .end local v1           #hex:Ljava/lang/String;
    .end local v3           #j:I
    :cond_78
    return-void

    .line 111
    nop

    :pswitch_data_7a
    .packed-switch 0x9
        :pswitch_42
        :pswitch_48
        :pswitch_25
        :pswitch_4e
        :pswitch_54
    .end packed-switch
.end method

.method private getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 7
    .parameter "node"

    .prologue
    .line 787
    instance-of v3, p1, Lorg/w3c/dom/Text;

    if-eqz v3, :cond_2d

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Text;

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 789
    .local v2, result:Ljava/lang/String;
    :goto_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 790
    .local v1, child:Lorg/w3c/dom/Node;
    :goto_11
    if-eqz v1, :cond_31

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Ljava/util/Properties;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_11

    .line 787
    .end local v1           #child:Lorg/w3c/dom/Node;
    .end local v2           #result:Ljava/lang/String;
    :cond_2d
    const-string v3, ""

    move-object v2, v3

    goto :goto_d

    .line 795
    .restart local v1       #child:Lorg/w3c/dom/Node;
    .restart local v2       #result:Ljava/lang/String;
    :cond_31
    return-object v2
.end method

.method private selectProperties(Ljava/util/Hashtable;Z)V
    .registers 7
    .parameter
    .parameter "isStringOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Hashtable",
            "<TK;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, selectProperties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;Ljava/lang/Object;>;"
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v3, :cond_9

    .line 481
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v3, p1, p2}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 483
    :cond_9
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 484
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 486
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 487
    .local v0, key:Ljava/lang/Object;,"TK;"
    if-eqz p2, :cond_1d

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 491
    :cond_1d
    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 492
    .local v2, value:Ljava/lang/Object;
    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 494
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v2           #value:Ljava/lang/Object;
    :cond_25
    return-void
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 780
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    .line 152
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_18

    check-cast v1, Ljava/lang/String;

    .end local v1           #result:Ljava/lang/Object;
    move-object v0, v1

    .line 154
    .local v0, property:Ljava/lang/String;
    :goto_b
    if-nez v0, :cond_17

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_17

    .line 155
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_17
    return-object v0

    .line 153
    .end local v0           #property:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/Object;
    :cond_18
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_b
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 173
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 174
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1b

    check-cast v1, Ljava/lang/String;

    .end local v1           #result:Ljava/lang/Object;
    move-object v0, v1

    .line 175
    .local v0, property:Ljava/lang/String;
    :goto_b
    if-nez v0, :cond_17

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_17

    .line 176
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_17
    if-nez v0, :cond_1e

    move-object v2, p2

    .line 181
    :goto_1a
    return-object v2

    .line 174
    .end local v0           #property:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/Object;
    :cond_1b
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_b

    .end local v1           #result:Ljava/lang/Object;
    .restart local v0       #property:Ljava/lang/String;
    :cond_1e
    move-object v2, v0

    .line 181
    goto :goto_1a
.end method

.method public list(Ljava/io/PrintStream;)V
    .registers 10
    .parameter "out"

    .prologue
    const/4 v7, 0x0

    .line 194
    if-nez p1, :cond_9

    .line 195
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 197
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 199
    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_14
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 200
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 201
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-super {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 204
    .local v4, property:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 205
    .local v1, def:Ljava/util/Properties;
    :goto_30
    if-nez v4, :cond_3b

    .line 206
    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #property:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 207
    .restart local v4       #property:Ljava/lang/String;
    iget-object v1, v1, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    goto :goto_30

    .line 209
    :cond_3b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_5c

    .line 210
    const/16 v5, 0x25

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :goto_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_14

    .line 213
    :cond_5c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 218
    .end local v1           #def:Ljava/util/Properties;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #property:Ljava/lang/String;
    :cond_60
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .registers 10
    .parameter "writer"

    .prologue
    const/4 v7, 0x0

    .line 230
    if-nez p1, :cond_9

    .line 231
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 233
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 235
    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_14
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 236
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    invoke-super {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 240
    .local v4, property:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 241
    .local v1, def:Ljava/util/Properties;
    :goto_30
    if-nez v4, :cond_3b

    .line 242
    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #property:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 243
    .restart local v4       #property:Ljava/lang/String;
    iget-object v1, v1, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    goto :goto_30

    .line 245
    :cond_3b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_5c

    .line 246
    const/16 v5, 0x25

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :goto_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_14

    .line 249
    :cond_5c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 254
    .end local v1           #def:Ljava/util/Properties;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #property:Ljava/lang/String;
    :cond_60
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    if-nez p1, :cond_c

    .line 264
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 263
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 266
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_9

    .line 267
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .registers 25
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    monitor-enter p0

    if-nez p1, :cond_c

    .line 297
    :try_start_3
    new-instance v21, Ljava/lang/NullPointerException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/NullPointerException;-><init>()V

    throw v21
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 296
    :catchall_9
    move-exception v21

    monitor-exit p0

    throw v21

    .line 299
    :cond_c
    const/4 v13, 0x0

    .local v13, mode:I
    const/16 v19, 0x0

    .local v19, unicode:I
    const/4 v7, 0x0

    .line 300
    .local v7, count:I
    const/16 v21, 0x28

    :try_start_12
    move/from16 v0, v21

    new-array v0, v0, [C

    move-object v6, v0

    .line 301
    .local v6, buf:[C
    const/16 v16, 0x0

    .local v16, offset:I
    const/4 v12, -0x1

    .line 302
    .local v12, keyLength:I
    const/4 v9, 0x1

    .line 304
    .local v9, firstChar:Z
    new-instance v5, Ljava/io/BufferedReader;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v5, br:Ljava/io/BufferedReader;
    move/from16 v17, v16

    .line 307
    .end local v16           #offset:I
    .local v17, offset:I
    :cond_25
    :goto_25
    invoke-virtual {v5}, Ljava/io/BufferedReader;->read()I

    move-result v10

    .line 308
    .local v10, intVal:I
    const/16 v21, -0x1

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_46

    .line 440
    const/16 v21, 0x2

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a4

    const/16 v21, 0x4

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_1a4

    .line 441
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 311
    :cond_46
    int-to-char v15, v10

    .line 313
    .local v15, nextChar:C
    move-object v0, v6

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6c

    .line 314
    move-object v0, v6

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [C

    move-object v14, v0

    .line 315
    .local v14, newBuf:[C
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v21

    move-object v2, v14

    move/from16 v3, v22

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    move-object v6, v14

    .line 318
    .end local v14           #newBuf:[C
    :cond_6c
    const/16 v21, 0x2

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_b0

    .line 319
    const/16 v21, 0x10

    move v0, v15

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 320
    .local v8, digit:I
    if-ltz v8, :cond_9f

    .line 321
    shl-int/lit8 v21, v19, 0x4

    add-int v19, v21, v8

    .line 322
    add-int/lit8 v7, v7, 0x1

    const/16 v21, 0x4

    move v0, v7

    move/from16 v1, v21

    if-lt v0, v1, :cond_25

    .line 328
    :cond_8b
    const/4 v13, 0x0

    .line 329
    add-int/lit8 v16, v17, 0x1

    .end local v17           #offset:I
    .restart local v16       #offset:I
    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v6, v17

    .line 330
    const/16 v21, 0xa

    move v0, v15

    move/from16 v1, v21

    if-eq v0, v1, :cond_ae

    move/from16 v17, v16

    .line 331
    .end local v16           #offset:I
    .restart local v17       #offset:I
    goto :goto_25

    .line 325
    :cond_9f
    const/16 v21, 0x4

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_8b

    .line 326
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Invalid Unicode sequence: illegal character"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .end local v17           #offset:I
    .restart local v16       #offset:I
    :cond_ae
    move/from16 v17, v16

    .line 334
    .end local v8           #digit:I
    .end local v16           #offset:I
    .restart local v17       #offset:I
    :cond_b0
    const/16 v21, 0x1

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_e9

    .line 335
    const/4 v13, 0x0

    .line 336
    sparse-switch v15, :sswitch_data_1fa

    .line 433
    :cond_bb
    :goto_bb
    const/4 v9, 0x0

    .line 434
    const/16 v21, 0x4

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_c6

    .line 435
    move/from16 v12, v17

    .line 436
    const/4 v13, 0x0

    .line 438
    :cond_c6
    add-int/lit8 v16, v17, 0x1

    .end local v17           #offset:I
    .restart local v16       #offset:I
    aput-char v15, v6, v17

    move/from16 v17, v16

    .end local v16           #offset:I
    .restart local v17       #offset:I
    goto/16 :goto_25

    .line 338
    :sswitch_ce
    const/4 v13, 0x3

    .line 339
    goto/16 :goto_25

    .line 341
    :sswitch_d1
    const/4 v13, 0x5

    .line 342
    goto/16 :goto_25

    .line 344
    :sswitch_d4
    const/16 v15, 0x8

    .line 345
    goto :goto_bb

    .line 347
    :sswitch_d7
    const/16 v15, 0xc

    .line 348
    goto :goto_bb

    .line 350
    :sswitch_da
    const/16 v15, 0xa

    .line 351
    goto :goto_bb

    .line 353
    :sswitch_dd
    const/16 v15, 0xd

    .line 354
    goto :goto_bb

    .line 356
    :sswitch_e0
    const/16 v15, 0x9

    .line 357
    goto :goto_bb

    .line 359
    :sswitch_e3
    const/4 v13, 0x2

    .line 360
    const/4 v7, 0x0

    move/from16 v19, v7

    .line 361
    goto/16 :goto_25

    .line 364
    :cond_e9
    sparse-switch v15, :sswitch_data_21c

    .line 416
    :cond_ec
    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v21

    if-eqz v21, :cond_193

    .line 417
    const/16 v21, 0x3

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_fa

    .line 418
    const/4 v13, 0x5

    .line 421
    :cond_fa
    if-eqz v17, :cond_25

    move/from16 v0, v17

    move v1, v12

    if-eq v0, v1, :cond_25

    const/16 v21, 0x5

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_25

    .line 424
    const/16 v21, -0x1

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_193

    .line 425
    const/4 v13, 0x4

    .line 426
    goto/16 :goto_25

    .line 367
    :sswitch_112
    if-eqz v9, :cond_ec

    .line 369
    :cond_114
    invoke-virtual {v5}, Ljava/io/BufferedReader;->read()I

    move-result v10

    .line 370
    const/16 v21, -0x1

    move v0, v10

    move/from16 v1, v21

    if-eq v0, v1, :cond_25

    .line 373
    int-to-char v15, v10

    .line 374
    const/16 v21, 0xd

    move v0, v15

    move/from16 v1, v21

    if-eq v0, v1, :cond_25

    const/16 v21, 0xa

    move v0, v15

    move/from16 v1, v21

    if-ne v0, v1, :cond_114

    goto/16 :goto_25

    .line 382
    :sswitch_130
    const/16 v21, 0x3

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_13a

    .line 383
    const/4 v13, 0x5

    .line 384
    goto/16 :goto_25

    .line 388
    :cond_13a
    :sswitch_13a
    const/4 v13, 0x0

    .line 389
    const/4 v9, 0x1

    .line 390
    if-gtz v17, :cond_142

    if-nez v17, :cond_174

    if-nez v12, :cond_174

    .line 391
    :cond_142
    const/16 v21, -0x1

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_14b

    .line 392
    move/from16 v12, v17

    .line 394
    :cond_14b
    new-instance v18, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object v1, v6

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 395
    .local v18, temp:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .end local v18           #temp:Ljava/lang/String;
    :cond_174
    const/4 v12, -0x1

    .line 399
    const/16 v16, 0x0

    .end local v17           #offset:I
    .restart local v16       #offset:I
    move/from16 v17, v16

    .line 400
    .end local v16           #offset:I
    .restart local v17       #offset:I
    goto/16 :goto_25

    .line 402
    :sswitch_17b
    const/16 v21, 0x4

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_184

    .line 403
    move/from16 v12, v17

    .line 405
    :cond_184
    const/4 v13, 0x1

    .line 406
    goto/16 :goto_25

    .line 409
    :sswitch_187
    const/16 v21, -0x1

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_ec

    .line 410
    const/4 v13, 0x0

    .line 411
    move/from16 v12, v17

    .line 412
    goto/16 :goto_25

    .line 429
    :cond_193
    const/16 v21, 0x5

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a1

    const/16 v21, 0x3

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_bb

    .line 430
    :cond_1a1
    const/4 v13, 0x0

    goto/16 :goto_bb

    .line 443
    .end local v15           #nextChar:C
    :cond_1a4
    const/16 v21, -0x1

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_1af

    if-lez v17, :cond_1af

    .line 444
    move/from16 v12, v17

    .line 446
    :cond_1af
    if-ltz v12, :cond_1f7

    .line 447
    new-instance v18, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object v1, v6

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 448
    .restart local v18       #temp:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 449
    .local v11, key:Ljava/lang/String;
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 450
    .local v20, value:Ljava/lang/String;
    const/16 v21, 0x1

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_1ef

    .line 451
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u0000"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 453
    :cond_1ef
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f7
    .catchall {:try_start_12 .. :try_end_1f7} :catchall_9

    .line 455
    .end local v11           #key:Ljava/lang/String;
    .end local v18           #temp:Ljava/lang/String;
    .end local v20           #value:Ljava/lang/String;
    :cond_1f7
    monitor-exit p0

    return-void

    .line 336
    nop

    :sswitch_data_1fa
    .sparse-switch
        0xa -> :sswitch_d1
        0xd -> :sswitch_ce
        0x62 -> :sswitch_d4
        0x66 -> :sswitch_d7
        0x6e -> :sswitch_da
        0x72 -> :sswitch_dd
        0x74 -> :sswitch_e0
        0x75 -> :sswitch_e3
    .end sparse-switch

    .line 364
    :sswitch_data_21c
    .sparse-switch
        0xa -> :sswitch_130
        0xd -> :sswitch_13a
        0x21 -> :sswitch_112
        0x23 -> :sswitch_112
        0x3a -> :sswitch_187
        0x3d -> :sswitch_187
        0x5c -> :sswitch_17b
    .end sparse-switch
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .registers 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    .prologue
    .line 605
    monitor-enter p0

    if-nez p1, :cond_c

    .line 606
    :try_start_3
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 605
    :catchall_9
    move-exception v9

    monitor-exit p0

    throw v9

    .line 609
    :cond_c
    :try_start_c
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v9, :cond_2e

    .line 610
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_9

    move-result-object v5

    .line 616
    .local v5, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_14
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    iput-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_1a} :catch_3e

    .line 621
    :try_start_1a
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$1;

    invoke-direct {v10, p0}, Ljava/util/Properties$1;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 635
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$2;

    invoke-direct {v10, p0}, Ljava/util/Properties$2;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_9

    .line 651
    .end local v5           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_2e
    :try_start_2e
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v9, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 652
    .local v0, doc:Lorg/w3c/dom/Document;
    const-string v9, "entry"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_9
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_39} :catch_63
    .catch Lorg/xml/sax/SAXException; {:try_start_2e .. :try_end_39} :catch_66

    move-result-object v2

    .line 653
    .local v2, entries:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_46

    .line 674
    :cond_3c
    monitor-exit p0

    return-void

    .line 617
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v2           #entries:Lorg/w3c/dom/NodeList;
    .restart local v5       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_3e
    move-exception v9

    move-object v1, v9

    .line 618
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_40
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_9

    .line 656
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v5           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v2       #entries:Lorg/w3c/dom/NodeList;
    :cond_46
    :try_start_46
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 658
    .local v3, entriesListLength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4b
    if-ge v6, v3, :cond_3c

    .line 659
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 660
    .local v4, entry:Lorg/w3c/dom/Element;
    const-string v9, "key"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, key:Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/util/Properties;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 667
    .local v8, value:Ljava/lang/String;
    invoke-virtual {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_9
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_60} :catch_63
    .catch Lorg/xml/sax/SAXException; {:try_start_46 .. :try_end_60} :catch_66

    .line 658
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 669
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v2           #entries:Lorg/w3c/dom/NodeList;
    .end local v3           #entriesListLength:I
    .end local v4           #entry:Lorg/w3c/dom/Element;
    .end local v6           #i:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :catch_63
    move-exception v9

    move-object v1, v9

    .line 670
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    throw v1

    .line 671
    .end local v1           #e:Ljava/io/IOException;
    :catch_66
    move-exception v9

    move-object v1, v9

    .line 672
    .local v1, e:Lorg/xml/sax/SAXException;
    new-instance v9, Ljava/util/InvalidPropertiesFormatException;

    invoke-direct {v9, v1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_9
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 462
    .local v0, selected:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 463
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "out"
    .parameter "comment"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 516
    :goto_3
    return-void

    .line 514
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 529
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "out"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 544
    monitor-exit p0

    return-void

    .line 543
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 9
    .parameter "writer"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    monitor-enter p0

    :try_start_1
    sget-object v4, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    if-nez v4, :cond_14

    .line 560
    new-instance v4, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v5, "line.separator"

    invoke-direct {v4, v5}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    .line 563
    :cond_14
    if-eqz p2, :cond_23

    .line 564
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 566
    sget-object v4, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 568
    :cond_23
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 569
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    sget-object v4, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 573
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 574
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 575
    .local v3, key:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 576
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 578
    sget-object v4, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 580
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_7e

    goto :goto_48

    .line 559
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    :catchall_7e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 582
    .restart local v0       #buffer:Ljava/lang/StringBuilder;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_7e

    .line 583
    monitor-exit p0

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "os"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "os"
    .parameter "comment"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p3, :cond_e

    .line 719
    :cond_5
    :try_start_5
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 718
    :catchall_b
    move-exception v7

    monitor-exit p0

    throw v7

    .line 731
    :cond_e
    :try_start_e
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_b
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_e .. :try_end_15} :catch_8e
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_e .. :try_end_15} :catch_b2

    move-result-object v1

    .line 742
    .local v1, encodingCanonicalName:Ljava/lang/String;
    :goto_16
    :try_start_16
    new-instance v6, Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 745
    .local v6, printStream:Ljava/io/PrintStream;
    const-string v7, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 747
    const-string v7, "\"?>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 749
    const-string v7, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 750
    const-string v7, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 751
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 753
    const-string v7, "<properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    if-eqz p2, :cond_50

    .line 756
    const-string v7, "<comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0, p2}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 758
    const-string v7, "</comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 761
    :cond_50
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 762
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 763
    .local v5, keyValue:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 764
    .local v3, entryValue:Ljava/lang/String;
    const-string v7, "<entry key=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, v5}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 766
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 767
    invoke-direct {p0, v3}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 768
    const-string v7, "</entry>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 732
    .end local v1           #encodingCanonicalName:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3           #entryValue:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #keyValue:Ljava/lang/String;
    .end local v6           #printStream:Ljava/io/PrintStream;
    :catch_8e
    move-exception v7

    move-object v0, v7

    .line 733
    .local v0, e:Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    const-string v1, "UTF-8"

    .line 740
    .restart local v1       #encodingCanonicalName:Ljava/lang/String;
    goto/16 :goto_16

    .line 736
    .end local v0           #e:Ljava/nio/charset/IllegalCharsetNameException;
    .end local v1           #encodingCanonicalName:Ljava/lang/String;
    :catch_b2
    move-exception v7

    move-object v0, v7

    .line 737
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 739
    const-string v1, "UTF-8"

    .restart local v1       #encodingCanonicalName:Ljava/lang/String;
    goto/16 :goto_16

    .line 770
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #printStream:Ljava/io/PrintStream;
    :cond_d6
    const-string v7, "</properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V
    :try_end_de
    .catchall {:try_start_16 .. :try_end_de} :catchall_b

    .line 772
    monitor-exit p0

    return-void
.end method

.method public stringPropertyNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 475
    .local v0, stringProperties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 476
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

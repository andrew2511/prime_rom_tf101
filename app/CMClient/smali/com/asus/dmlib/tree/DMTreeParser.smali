.class public Lcom/asus/dmlib/tree/DMTreeParser;
.super Ljava/lang/Object;
.source "DMTreeParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DMTreeParser"


# instance fields
.field private mParientNode:Lcom/asus/dmlib/tree/DMNode;

.field private mPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/asus/dmlib/tree/DMNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseInterior(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/asus/dmlib/tree/Interior;
    .locals 10
    .parameter "xpp"
    .parameter "parient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 91
    new-instance v4, Lcom/asus/dmlib/tree/Interior;

    invoke-direct {v4}, Lcom/asus/dmlib/tree/Interior;-><init>()V

    .line 92
    .local v4, node:Lcom/asus/dmlib/tree/Interior;
    const-string v3, ""

    .line 93
    .local v3, newParient:Ljava/lang/String;
    iput-object p2, v4, Lcom/asus/dmlib/tree/Interior;->mParient:Ljava/lang/String;

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, endloop:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_11

    .line 96
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 97
    .local v2, eventType:I
    packed-switch v2, :pswitch_data_0

    .line 166
    const-string v6, "DMTreeParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseInterior: default eventType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_0
    const-string v6, "node"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    invoke-direct {p0, p1, v3}, Lcom/asus/dmlib/tree/DMTreeParser;->parseInterior(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/asus/dmlib/tree/Interior;

    move-result-object v0

    .line 101
    .local v0, childNode:Lcom/asus/dmlib/tree/DMNode;
    iget-object v6, v4, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v6, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mPathMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/asus/dmlib/tree/Interior;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v0           #childNode:Lcom/asus/dmlib/tree/DMNode;
    :cond_1
    const-string v6, "leaf"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-direct {p0, p1, v3}, Lcom/asus/dmlib/tree/DMTreeParser;->parseLeaf(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/asus/dmlib/tree/Leaf;

    move-result-object v0

    .line 105
    .restart local v0       #childNode:Lcom/asus/dmlib/tree/DMNode;
    iget-object v6, v4, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v6, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mPathMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/asus/dmlib/tree/Leaf;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    .end local v0           #childNode:Lcom/asus/dmlib/tree/DMNode;
    :cond_2
    const-string v6, "name"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 109
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/asus/dmlib/tree/Interior;->mName:Ljava/lang/String;

    .line 110
    const-string v6, ""

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    iget-object v3, v4, Lcom/asus/dmlib/tree/Interior;->mName:Ljava/lang/String;

    goto/16 :goto_0

    .line 113
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/asus/dmlib/tree/Interior;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 116
    :cond_4
    const-string v6, "value"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/asus/dmlib/tree/Interior;->mValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :cond_5
    const-string v6, "format"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 121
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/asus/dmlib/tree/Interior;->mFormat:Ljava/lang/String;

    goto/16 :goto_0

    .line 124
    :cond_6
    const-string v6, "type"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/asus/dmlib/tree/Interior;->mType:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :cond_7
    const-string v6, "acl"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/asus/dmlib/tree/Interior;->mACL:Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    :cond_8
    const-string v6, "permanent"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 133
    iput-boolean v9, v4, Lcom/asus/dmlib/tree/Interior;->mPermanent:Z

    goto/16 :goto_0

    .line 134
    :cond_9
    const-string v6, "add"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 135
    iput-boolean v9, v4, Lcom/asus/dmlib/tree/Interior;->mAdd:Z

    goto/16 :goto_0

    .line 136
    :cond_a
    const-string v6, "get"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 137
    iput-boolean v9, v4, Lcom/asus/dmlib/tree/Interior;->mGet:Z

    goto/16 :goto_0

    .line 138
    :cond_b
    const-string v6, "replace"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 139
    iput-boolean v9, v4, Lcom/asus/dmlib/tree/Interior;->mPeplace:Z

    goto/16 :goto_0

    .line 140
    :cond_c
    const-string v6, "exec"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 141
    iput-boolean v9, v4, Lcom/asus/dmlib/tree/Interior;->mExec:Z

    goto/16 :goto_0

    .line 142
    :cond_d
    const-string v6, "copy"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 143
    iput-boolean v9, v4, Lcom/asus/dmlib/tree/Interior;->mCopy:Z

    goto/16 :goto_0

    .line 144
    :cond_e
    const-string v6, "delete"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 145
    iput-boolean v9, v4, Lcom/asus/dmlib/tree/Interior;->mDelete:Z

    goto/16 :goto_0

    .line 147
    :cond_f
    const-string v6, "DMTreeParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>>>>>>>>>> not implemnt:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " <<<<<<<<<<<<<<<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :pswitch_1
    const-string v6, "node"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 153
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 154
    :cond_10
    const-string v6, "leaf"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 159
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, text:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0

    .line 170
    .end local v2           #eventType:I
    .end local v5           #text:Ljava/lang/String;
    :cond_11
    return-object v4

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseLeaf(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/asus/dmlib/tree/Leaf;
    .locals 8
    .parameter "xpp"
    .parameter "parient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 19
    new-instance v2, Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {v2}, Lcom/asus/dmlib/tree/Leaf;-><init>()V

    .line 21
    .local v2, node:Lcom/asus/dmlib/tree/Leaf;
    iput-object p2, v2, Lcom/asus/dmlib/tree/Leaf;->mParient:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, endloop:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_d

    .line 24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 25
    .local v1, eventType:I
    packed-switch v1, :pswitch_data_0

    .line 81
    const-string v4, "DMTreeParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseLeaf: default eventType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :pswitch_0
    const-string v4, "name"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 31
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/asus/dmlib/tree/Leaf;->mName:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    const-string v4, "value"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/asus/dmlib/tree/Leaf;->mValue:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_2
    const-string v4, "format"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/asus/dmlib/tree/Leaf;->mFormat:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_3
    const-string v4, "type"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/asus/dmlib/tree/Leaf;->mType:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_4
    const-string v4, "acl"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/asus/dmlib/tree/Leaf;->mACL:Ljava/lang/String;

    goto/16 :goto_0

    .line 49
    :cond_5
    const-string v4, "permanent"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 50
    iput-boolean v7, v2, Lcom/asus/dmlib/tree/Leaf;->mPermanent:Z

    goto/16 :goto_0

    .line 51
    :cond_6
    const-string v4, "add"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 52
    iput-boolean v7, v2, Lcom/asus/dmlib/tree/Leaf;->mAdd:Z

    goto/16 :goto_0

    .line 53
    :cond_7
    const-string v4, "get"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 54
    iput-boolean v7, v2, Lcom/asus/dmlib/tree/Leaf;->mGet:Z

    goto/16 :goto_0

    .line 55
    :cond_8
    const-string v4, "replace"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 56
    iput-boolean v7, v2, Lcom/asus/dmlib/tree/Leaf;->mPeplace:Z

    goto/16 :goto_0

    .line 57
    :cond_9
    const-string v4, "exec"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 58
    iput-boolean v7, v2, Lcom/asus/dmlib/tree/Leaf;->mExec:Z

    goto/16 :goto_0

    .line 59
    :cond_a
    const-string v4, "copy"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 60
    iput-boolean v7, v2, Lcom/asus/dmlib/tree/Leaf;->mCopy:Z

    goto/16 :goto_0

    .line 61
    :cond_b
    const-string v4, "delete"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 62
    iput-boolean v7, v2, Lcom/asus/dmlib/tree/Leaf;->mDelete:Z

    goto/16 :goto_0

    .line 64
    :cond_c
    const-string v4, "DMTreeParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>>>>>>>> not implemnt:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <<<<<<<<<<<<<<<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :pswitch_1
    const-string v4, "leaf"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 75
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 86
    .end local v1           #eventType:I
    .end local v3           #text:Ljava/lang/String;
    :cond_d
    return-object v2

    .line 25
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getmParientNode()Lcom/asus/dmlib/tree/DMNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/tree/TreePaserException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mParientNode:Lcom/asus/dmlib/tree/DMNode;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/asus/dmlib/tree/TreePaserException;

    const-string v1, "Document node not exist!!"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/tree/TreePaserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mParientNode:Lcom/asus/dmlib/tree/DMNode;

    return-object v0
.end method

.method public getmPathMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/asus/dmlib/tree/DMNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/tree/TreePaserException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mPathMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/asus/dmlib/tree/TreePaserException;

    const-string v1, "Document node not exist!!"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/tree/TreePaserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mPathMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/asus/dmlib/tree/DMNode;
    .locals 11
    .parameter "inIS"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 179
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 180
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 181
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 183
    .local v5, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 184
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 185
    .local v1, eventType:I
    new-instance v3, Lcom/asus/dmlib/tree/Interior;

    invoke-direct {v3}, Lcom/asus/dmlib/tree/Interior;-><init>()V

    .line 186
    .local v3, node:Lcom/asus/dmlib/tree/Interior;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mPathMap:Ljava/util/HashMap;

    .line 188
    :goto_0
    if-eq v1, v10, :cond_2

    .line 189
    packed-switch v1, :pswitch_data_0

    .line 221
    const-string v6, "DMTreeParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse: default eventType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 191
    :pswitch_0
    const-string v6, "DMTreeParser"

    const-string v7, "Start document"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :pswitch_1
    const-string v6, "DMTreeParser"

    const-string v7, "End document"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :pswitch_2
    const-string v6, "DMTreeParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v6, "node"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    const-string v6, ""

    invoke-direct {p0, v5, v6}, Lcom/asus/dmlib/tree/DMTreeParser;->parseInterior(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/asus/dmlib/tree/Interior;

    move-result-object v0

    .line 201
    .local v0, childNode:Lcom/asus/dmlib/tree/DMNode;
    iget-object v6, v3, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v6, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mPathMap:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/asus/dmlib/tree/Interior;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 203
    .end local v0           #childNode:Lcom/asus/dmlib/tree/DMNode;
    :cond_1
    const-string v6, "leaf"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    const-string v6, ""

    invoke-direct {p0, v5, v6}, Lcom/asus/dmlib/tree/DMTreeParser;->parseLeaf(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/asus/dmlib/tree/Leaf;

    move-result-object v0

    .line 205
    .restart local v0       #childNode:Lcom/asus/dmlib/tree/DMNode;
    iget-object v6, v3, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v6, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mPathMap:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/asus/dmlib/tree/Leaf;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 211
    .end local v0           #childNode:Lcom/asus/dmlib/tree/DMNode;
    :pswitch_3
    const-string v6, "DMTreeParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 215
    :pswitch_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    const-string v6, "DMTreeParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Text@0 \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    .end local v4           #text:Ljava/lang/String;
    :cond_2
    iget-object v6, v3, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/dmlib/tree/DMNode;

    iput-object v6, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mParientNode:Lcom/asus/dmlib/tree/DMNode;

    .line 228
    iget-object v6, p0, Lcom/asus/dmlib/tree/DMTreeParser;->mParientNode:Lcom/asus/dmlib/tree/DMNode;

    return-object v6

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.class public Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;
.super Ljava/lang/Object;
.source "SharedStatusProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 270
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SharedStatusProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method private parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 6
    .parameter "parser"
    .parameter "attributeName"
    .parameter "defVal"

    .prologue
    .line 36
    const/4 v3, 0x0

    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, valStr:Ljava/lang/String;
    move v1, p3

    .line 40
    .local v1, valInt:I
    if-eqz v2, :cond_0

    .line 41
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SharedStatusProvider] parseAttributeIntValue caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseStatusList(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;)V
    .locals 7
    .parameter "protobuf"
    .parameter "sharedStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 233
    .local v3, show:I
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 236
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 237
    invoke-virtual {p1, v6, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, status:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v4           #status:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 246
    invoke-virtual {p2, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDefaultStatusList(Ljava/util/List;)V

    .line 251
    :goto_1
    return-void

    .line 249
    :cond_1
    invoke-virtual {p2, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDndStatusList(Ljava/util/List;)V

    goto :goto_1
.end method

.method private parseStatusList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;)V
    .locals 8
    .parameter "parser"
    .parameter "sharedStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v6, 0x0

    const-string v7, "show"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, show:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 116
    .local v1, eventType:I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, nodeName:Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, status:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v3           #nodeName:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "status-list"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    .end local v1           #eventType:I
    :cond_2
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    invoke-virtual {p2, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDefaultStatusList(Ljava/util/List;)V

    .line 139
    :goto_1
    return-void

    .line 137
    :cond_3
    invoke-virtual {p2, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDndStatusList(Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2

    .prologue
    .line 262
    sget-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SHARED_STATUS:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 254
    sget-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 11
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    sget-byte v9, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 143
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "should not get called."

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 146
    :cond_0
    new-instance v4, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 148
    .local v4, sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setUseServerAttributes(Z)V

    .line 151
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 152
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusMax(I)V

    .line 157
    :cond_1
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 158
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusListMax(I)V

    .line 164
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 166
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusListContentsMax(I)V

    .line 172
    :cond_3
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 173
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setHasStatusMinVersion(Z)V

    .line 175
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 177
    .local v8, statusMinVersion:I
    invoke-virtual {v4, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusMinVersion(I)V

    .line 178
    sget-boolean v9, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "##### parseIQ: got status-min-version of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->log(Ljava/lang/String;)V

    .line 183
    .end local v8           #statusMinVersion:I
    :cond_4
    :goto_0
    const/4 v7, 0x0

    .line 184
    .local v7, status:Ljava/lang/String;
    const/4 v6, 0x0

    .line 187
    .local v6, showStr:Ljava/lang/String;
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 188
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-virtual {v4, v7}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatus(Ljava/lang/String;)V

    .line 193
    :cond_5
    const/4 v9, 0x5

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 194
    const/4 v9, 0x5

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 195
    .local v5, show:I
    const/4 v9, 0x1

    if-ne v5, v9, :cond_8

    const-string v9, "dnd"

    move-object v6, v9

    .line 197
    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setShow(Ljava/lang/String;)V

    .line 203
    .end local v5           #show:I
    :cond_6
    const/4 v9, 0x6

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 208
    .local v3, numLists:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_9

    .line 209
    const/4 v9, 0x6

    invoke-virtual {p1, v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 212
    .local v2, listPb:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct {p0, v2, v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseStatusList(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 180
    .end local v0           #i:I
    .end local v2           #listPb:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v3           #numLists:I
    .end local v6           #showStr:Ljava/lang/String;
    .end local v7           #status:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setHasStatusMinVersion(Z)V

    goto :goto_0

    .line 195
    .restart local v5       #show:I
    .restart local v6       #showStr:Ljava/lang/String;
    .restart local v7       #status:Ljava/lang/String;
    :cond_8
    const-string v9, "default"

    move-object v6, v9

    goto :goto_1

    .line 216
    .end local v5           #show:I
    .restart local v0       #i:I
    .restart local v3       #numLists:I
    :cond_9
    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 217
    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    .line 219
    .local v1, invisible:Z
    invoke-virtual {v4, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setInvisible(Z)V

    .line 222
    .end local v1           #invisible:Z
    :cond_a
    return-object v4
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 12
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, done:Z
    new-instance v5, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v5, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 54
    .local v5, sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    invoke-virtual {v5, v10}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setUseServerAttributes(Z)V

    .line 56
    const-string v8, "status-max"

    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusMax(I)V

    .line 59
    const-string v8, "status-list-max"

    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusListMax(I)V

    .line 62
    const-string v8, "status-list-contents-max"

    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusListContentsMax(I)V

    .line 65
    const-string v8, "status-min-ver"

    invoke-direct {p0, p1, v8, v11}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 66
    .local v3, minStatusVer:I
    if-eq v3, v11, :cond_0

    .line 67
    invoke-virtual {v5, v3}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusMinVersion(I)V

    .line 68
    invoke-virtual {v5, v10}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setHasStatusMinVersion(Z)V

    .line 71
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 73
    .local v1, eventType:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_4

    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, nodeName:Ljava/lang/String;
    const-string v8, "status"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, status:Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v7           #status:Ljava/lang/String;
    :cond_1
    const-string v8, "show"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 83
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, show:Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setShow(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v6           #show:Ljava/lang/String;
    :cond_2
    const-string v8, "status-list"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 87
    invoke-direct {p0, p1, v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseStatusList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;)V

    goto :goto_0

    .line 88
    :cond_3
    const-string v8, "invisible"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 89
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, invisibleStr:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 92
    invoke-virtual {v5, v10}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setInvisible(Z)V

    goto :goto_0

    .line 96
    .end local v2           #invisibleStr:Ljava/lang/String;
    .end local v4           #nodeName:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x3

    if-ne v1, v8, :cond_0

    .line 97
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "query"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    .end local v1           #eventType:I
    :cond_5
    return-object v5
.end method

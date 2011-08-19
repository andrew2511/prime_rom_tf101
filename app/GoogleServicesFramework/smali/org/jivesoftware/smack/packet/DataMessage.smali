.class public Lorg/jivesoftware/smack/packet/DataMessage;
.super Lorg/jivesoftware/smack/packet/Message;
.source "DataMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    }
.end annotation


# instance fields
.field private mAppDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/packet/DataMessage$AppData;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:Ljava/lang/String;

.field private mFromTrustedServer:Z

.field private mPermission:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mFromTrustedServer:Z

    .line 45
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public final getAppDataIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smack/packet/DataMessage$AppData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getAppDataSize()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionsXML()Ljava/lang/String;
    .locals 11

    .prologue
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v6, sb:Ljava/lang/StringBuilder;
    const/16 v9, 0x3c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    const-string v9, "data"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v9, " xmlns=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v9, "google:mobile:data"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, token:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, category:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getPermission()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, permission:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 159
    const-string v9, " category=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    if-eqz v7, :cond_1

    .line 163
    const-string v9, " token=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    iget-boolean v9, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mFromTrustedServer:Z

    if-eqz v9, :cond_2

    .line 167
    const-string v9, " from-trusted-server=\"true\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2
    if-eqz v5, :cond_3

    .line 171
    const-string v9, " permission=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_3
    const-string v9, ">"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getAppDataSize()I

    move-result v2

    .line 177
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 178
    iget-object v9, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .line 179
    .local v0, appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, value:Ljava/lang/String;
    const-string v9, "<app-data key=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v9, "\" value=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v9, "\" />"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v0           #appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_4
    const-string v9, "</"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v9, "data"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const/16 v9, 0x3e

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 62
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mCategory:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setFromTrustedServer(Z)V
    .locals 0
    .parameter "fromTrustedServer"

    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mFromTrustedServer:Z

    .line 71
    return-void
.end method

.method public setPermission(Ljava/lang/String;)V
    .locals 0
    .parameter "permission"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mPermission:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mToken:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 20

    .prologue
    .line 201
    new-instance v12, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v18, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 203
    .local v12, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getPacketID()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, id:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "ID_NOT_AVAILABLE"

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 205
    const/16 v18, 0x2

    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 208
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getTo()Ljava/lang/String;

    move-result-object v16

    .line 209
    .local v16, to:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 210
    const/16 v18, 0x4

    move-object v0, v12

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 213
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getFrom()Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, from:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 215
    const/16 v18, 0x3

    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 218
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getRmq2Id()Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, rmq2Id:Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 220
    const/16 v18, 0x9

    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 228
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getLastStreamId()I

    move-result v10

    .line 229
    .local v10, lastStreamId:I
    const/16 v18, -0x1

    move v0, v10

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 230
    const/16 v18, 0xb

    move-object v0, v12

    move/from16 v1, v18

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 233
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, category:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 235
    const/16 v18, 0x5

    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 238
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getToken()Ljava/lang/String;

    move-result-object v17

    .line 239
    .local v17, token:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 240
    const/16 v18, 0x6

    move-object v0, v12

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 243
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getPermission()Ljava/lang/String;

    move-result-object v11

    .line 244
    .local v11, permission:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 245
    const/16 v18, 0xc

    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 250
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getAppDataSize()I

    move-result v6

    .line 251
    .local v6, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v6, :cond_9

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .line 253
    .local v4, appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    const/16 v18, 0x7

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v19

    move-object v0, v12

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 251
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 222
    .end local v4           #appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v5           #category:Ljava/lang/String;
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v10           #lastStreamId:I
    .end local v11           #permission:Ljava/lang/String;
    .end local v17           #token:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getRmqId()J

    move-result-wide v14

    .line 223
    .local v14, rmqId:J
    const-wide/16 v18, -0x1

    cmp-long v18, v14, v18

    if-eqz v18, :cond_3

    .line 224
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    move-wide v2, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    goto/16 :goto_0

    .line 256
    .end local v14           #rmqId:J
    .restart local v5       #category:Ljava/lang/String;
    .restart local v6       #count:I
    .restart local v8       #i:I
    .restart local v10       #lastStreamId:I
    .restart local v11       #permission:Ljava/lang/String;
    .restart local v17       #token:Ljava/lang/String;
    :cond_9
    return-object v12
.end method

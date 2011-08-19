.class public Lcom/asus/dmlib/syncml/message/command/MapItem;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "MapItem.java"


# instance fields
.field private mSource:Lcom/asus/dmlib/syncml/message/common/Source;

.field private mTarget:Lcom/asus/dmlib/syncml/message/common/Target;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, tagName:Ljava/lang/String;
    const/4 v1, 0x1

    .line 36
    .local v1, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v3

    .line 38
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v4, "Target"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    new-instance v4, Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-direct {v4, p1}, Lcom/asus/dmlib/syncml/message/common/Target;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 57
    .end local v3           #type:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 58
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 62
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 43
    .restart local v3       #type:I
    :cond_2
    :try_start_1
    const-string v4, "Source"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    new-instance v4, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-direct {v4, p1}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 59
    .end local v3           #type:I
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 60
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 48
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #type:I
    :pswitch_1
    :try_start_2
    const-string v4, "MapItem"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "syncml"

    .prologue
    .line 68
    return-void
.end method

.method public getCmdID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "CmdID"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCred()Lcom/asus/dmlib/syncml/message/common/Cred;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "Cred"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "Meta"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNoResp()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "NoResp"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumItems()I
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSource()Lcom/asus/dmlib/syncml/message/common/Source;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    return-object v0
.end method

.method public getTarget()Lcom/asus/dmlib/syncml/message/common/Target;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    return-object v0
.end method

.method public hasNestedCommands()Z
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setCmdID(Ljava/lang/String;)V
    .locals 2
    .parameter "cmdID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "CmdID"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCred(Lcom/asus/dmlib/syncml/message/common/Cred;)V
    .locals 2
    .parameter "cred"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "Cred"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V
    .locals 2
    .parameter "meta"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "Meta"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNoResp(Z)V
    .locals 2
    .parameter "noResp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "NoResp"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    .line 122
    return-void
.end method

.method public setTarget(Lcom/asus/dmlib/syncml/message/common/Target;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    .line 114
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 2
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/syncml/message/common/Target;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/syncml/message/common/Source;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<MapItem>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Target;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/command/MapItem;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Source;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "</MapItem>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

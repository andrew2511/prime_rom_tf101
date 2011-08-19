.class public Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;
.super Ljava/lang/Object;
.source "PersistentSettingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/PersistentSettingTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySettings"
.end annotation


# instance fields
.field private _BinarySettings:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/PersistentSettingTool$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;[B)[B
    .locals 3
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v1, v0

    .line 112
    .local v1, value:[B
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 118
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 144
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 146
    new-array v1, v1, [B

    .line 147
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 148
    iget-object v2, p0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    return-void
.end method

.method public remove(Ljava/lang/String;)[B
    .locals 1
    .parameter "name"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public set(Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v4, p0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 164
    .local v2, toBeSaved:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0

    .line 168
    .local v3, value:[B
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 169
    array-length v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 172
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #value:[B
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 173
    return-void
.end method

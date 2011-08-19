.class public Lcom/mobipocket/common/library/PersistentSettingTool;
.super Ljava/lang/Object;
.source "PersistentSettingTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/PersistentSettingTool$1;,
        Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;
    }
.end annotation


# instance fields
.field private _StringSettings:Ljava/util/Hashtable;

.field public binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

.field private final saveBookViewSettings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/PersistentSettingTool;-><init>(Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "saveBookViewSettings"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    .line 75
    new-instance v0, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;-><init>(Lcom/mobipocket/common/library/PersistentSettingTool$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    .line 76
    iput-boolean p1, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->saveBookViewSettings:Z

    .line 77
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 202
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public load(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;)Z
    .locals 2
    .parameter "pdbFactory"
    .parameter "settingsIdentifier"

    .prologue
    .line 261
    invoke-static {}, Lcom/mobipocket/common/library/PersistentSetting;->theOne()Lcom/mobipocket/common/library/PersistentSetting;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->saveBookViewSettings:Z

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/mobipocket/common/library/PersistentSetting;->load(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;ZLcom/mobipocket/common/library/PersistentSettingTool;)Z

    move-result v0

    return v0
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
    .line 282
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 287
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeSettingStartingWith(Ljava/lang/String;)I
    .locals 6
    .parameter "keyPrefix"

    .prologue
    .line 224
    const/4 v4, 0x0

    .line 225
    .local v4, numRemovedKeys:I
    iget-object v5, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 226
    .local v0, allKeys:Ljava/util/Enumeration;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 229
    .local v2, keysMatchingPrefix:Ljava/util/Vector;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 240
    .local v3, keysToRemove:Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mobipocket/common/library/PersistentSettingTool;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 244
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 248
    :cond_3
    return v4
.end method

.method public save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lcom/mobipocket/common/library/PersistentSetting;->theOne()Lcom/mobipocket/common/library/PersistentSetting;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->saveBookViewSettings:Z

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/PersistentSetting;->save(Z)V

    .line 272
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v3, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 306
    .local v1, toBeSaved:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mobipocket/common/library/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 314
    return-void
.end method

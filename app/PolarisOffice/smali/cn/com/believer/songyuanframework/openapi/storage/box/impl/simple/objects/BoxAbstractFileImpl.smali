.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;
.super Ljava/lang/Object;
.source "BoxAbstractFileImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;


# instance fields
.field private created:J

.field private id:Ljava/lang/String;

.field private isFolder:Z

.field private keyword:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private shared:Z

.field private size:J

.field private tags:Ljava/util/List;

.field private updated:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->created:J

    return-wide v0
.end method

.method public getEntryFullTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->isFolder:Z

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FOLDER:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 221
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->size:J

    return-wide v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUpdated()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->updated:J

    return-wide v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->isFolder:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->shared:Z

    return v0
.end method

.method public setCreated(J)V
    .locals 0
    .parameter "created"

    .prologue
    .line 146
    iput-wide p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->created:J

    .line 147
    return-void
.end method

.method public setFolder(Z)V
    .locals 0
    .parameter "isFolder"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->isFolder:Z

    .line 132
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 56
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 86
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->keyword:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 71
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setShared(Z)V
    .locals 0
    .parameter "shared"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->shared:Z

    .line 102
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 116
    iput-wide p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->size:J

    .line 117
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .parameter "tags"

    .prologue
    .line 176
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->tags:Ljava/util/List;

    .line 177
    return-void
.end method

.method public setUpdated(J)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 161
    iput-wide p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->updated:J

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v1, sb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "keyword="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->keyword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shared="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->shared:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isFolder="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->isFolder:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "created="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->created:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updated="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->updated:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 193
    :cond_0
    iget-object v3, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxAbstractFileImpl;->tags:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;

    .line 194
    .local v2, tag:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tag["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

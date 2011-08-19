.class public abstract Lcom/infraware/filemanager/webstorage/objects/google/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
.implements Ljava/lang/Cloneable;


# static fields
.field private static PARENT_LINK_REL:Ljava/lang/String;


# instance fields
.field categories:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "category"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/Category;",
            ">;"
        }
    .end annotation
.end field

.field content:Lcom/infraware/filemanager/webstorage/objects/google/Content;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "content"
    .end annotation
.end field

.field created:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "published"
    .end annotation
.end field

.field etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "gd:etag"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field links:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "link"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/Link;",
            ">;"
        }
    .end annotation
.end field

.field private longCreated:J

.field private longUpdated:J

.field resourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "gd:resourceId"
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field

.field updated:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "http://schemas.google.com/docs/2007#parent"

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->PARENT_LINK_REL:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longCreated:J

    .line 145
    iput-wide v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longUpdated:J

    .line 33
    return-void
.end method


# virtual methods
.method public addCategories(Ljava/lang/String;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 231
    invoke-static {p1}, Lcom/infraware/filemanager/webstorage/objects/google/Category;->newKind(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/Category;

    move-result-object v0

    .line 232
    .local v0, newCategory:Lcom/infraware/filemanager/webstorage/objects/google/Category;
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->categories:Ljava/util/List;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->categories:Ljava/util/List;

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->categories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method protected clone()Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    .locals 0

    .prologue
    .line 203
    invoke-static {p0}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->clone()Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    move-result-object v0

    return-object v0
.end method

.method public getCreated()J
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 152
    iget-wide v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longCreated:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 153
    iget-wide v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longCreated:J

    .line 167
    :goto_0
    return-wide v3

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->created:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 157
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->created:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->created:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longCreated:J

    .line 167
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    :cond_1
    iget-wide v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longCreated:J

    goto :goto_0

    .line 161
    .restart local v2       #format:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/text/ParseException;
    move-wide v3, v7

    .line 162
    goto :goto_0
.end method

.method public getEntryFullTitle()Ljava/lang/String;
    .locals 8

    .prologue
    .line 85
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 87
    .local v0, nIndex:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->convertExtensionFromKind(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, strExtfromKind:Ljava/lang/String;
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    invoke-static {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->findKindFromFilename(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->convertExtensionFromKind(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, strExtfromName:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    move-object v1, v2

    .line 104
    .local v1, strExt:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    :goto_1
    return-object v5

    .line 99
    .end local v1           #strExt:Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 100
    move-object v1, v3

    .restart local v1       #strExt:Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v1           #strExt:Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .restart local v1       #strExt:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v1           #strExt:Ljava/lang/String;
    .end local v2           #strExtfromKind:Ljava/lang/String;
    .end local v3           #strExtfromName:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, strSplit:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->convertExtensionFromKind(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2       #strExtfromKind:Ljava/lang/String;
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    invoke-static {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->findKindFromFilename(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->convertExtensionFromKind(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .restart local v3       #strExtfromName:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->getExtension(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1       #strExt:Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 127
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 120
    .end local v1           #strExt:Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_4

    .line 121
    move-object v1, v3

    .restart local v1       #strExt:Ljava/lang/String;
    goto :goto_2

    .line 123
    .end local v1           #strExt:Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .restart local v1       #strExt:Ljava/lang/String;
    goto :goto_2

    .line 132
    .end local v4           #strSplit:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
.end method

.method public getParentLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->links:Ljava/util/List;

    sget-object v1, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->PARENT_LINK_REL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/Link;->find(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentLinkList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->links:Ljava/util/List;

    sget-object v1, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->PARENT_LINK_REL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/Link;->findAll(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelfLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->links:Ljava/util/List;

    const-string v1, "self"

    invoke-static {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/Link;->find(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 198
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUpdated()J
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 175
    iget-wide v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longUpdated:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 176
    iget-wide v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longUpdated:J

    .line 190
    :goto_0
    return-wide v3

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->updated:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 180
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->updated:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->updated:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longUpdated:J

    .line 190
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    :cond_1
    iget-wide v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longUpdated:J

    goto :goto_0

    .line 184
    .restart local v2       #format:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/text/ParseException;
    move-wide v3, v7

    .line 185
    goto :goto_0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 67
    instance-of v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreatedLong(J)V
    .locals 2
    .parameter "created"

    .prologue
    .line 148
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longCreated:J

    .line 149
    return-void
.end method

.method public setEntryId(Ljava/lang/String;)V
    .locals 0
    .parameter "entryId"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->resourceId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setEntryTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->title:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->id:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 194
    return-void
.end method

.method public setUpdatedLong(J)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 171
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->longUpdated:J

    .line 172
    return-void
.end method

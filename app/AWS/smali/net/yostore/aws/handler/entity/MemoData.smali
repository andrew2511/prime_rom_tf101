.class public Lnet/yostore/aws/handler/entity/MemoData;
.super Ljava/lang/Object;
.source "MemoData.java"


# instance fields
.field private aid:Ljava/lang/String;

.field private attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/yostore/aws/handler/entity/MemoAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private bold:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private fromMember:Ljava/lang/String;

.field private isDel:Ljava/lang/String;

.field private lastTime:Ljava/lang/String;

.field private lock:Ljava/lang/String;

.field private mark:Ljava/lang/String;

.field private memoId:Ljava/lang/String;

.field private memoName:Ljava/lang/String;

.field private memoTime:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private toMember:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private xposition:Ljava/lang/String;

.field private yposition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->attachments:Ljava/util/ArrayList;

    .line 13
    const-string v0, "1"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->toMember:Ljava/lang/String;

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->lock:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoTime:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoName:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->xposition:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->createTime:Ljava/lang/String;

    .line 19
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->color:Ljava/lang/String;

    .line 20
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->isDel:Ljava/lang/String;

    .line 21
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->size:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->lastTime:Ljava/lang/String;

    .line 24
    const-string v0, "1"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->fromMember:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->text:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->type:Ljava/lang/String;

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->yposition:Ljava/lang/String;

    .line 28
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoId:Ljava/lang/String;

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->aid:Ljava/lang/String;

    .line 30
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->mark:Ljava/lang/String;

    .line 31
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->bold:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/yostore/aws/handler/entity/MemoAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBold()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->bold:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFromMember()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->fromMember:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->isDel:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->lock:Ljava/lang/String;

    return-object v0
.end method

.method public getMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->mark:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToMember()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->toMember:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getXposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->xposition:Ljava/lang/String;

    return-object v0
.end method

.method public getYposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoData;->yposition:Ljava/lang/String;

    return-object v0
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 401
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->aid:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setAttachments(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/yostore/aws/handler/entity/MemoAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnet/yostore/aws/handler/entity/MemoAttachment;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->attachments:Ljava/util/ArrayList;

    .line 146
    return-void
.end method

.method public setBold(Ljava/lang/String;)V
    .locals 0
    .parameter "bold"

    .prologue
    .line 433
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->bold:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 257
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->color:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 241
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->createTime:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setFromMember(Ljava/lang/String;)V
    .locals 0
    .parameter "fromMember"

    .prologue
    .line 321
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->fromMember:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setIsDel(Ljava/lang/String;)V
    .locals 0
    .parameter "isDel"

    .prologue
    .line 273
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->isDel:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastTime"

    .prologue
    .line 305
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->lastTime:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setLock(Ljava/lang/String;)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 177
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->lock:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setMark(Ljava/lang/String;)V
    .locals 0
    .parameter "mark"

    .prologue
    .line 417
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->mark:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setMemoId(Ljava/lang/String;)V
    .locals 0
    .parameter "memoId"

    .prologue
    .line 385
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoId:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setMemoName(Ljava/lang/String;)V
    .locals 0
    .parameter "memoName"

    .prologue
    .line 209
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setMemoTime(Ljava/lang/String;)V
    .locals 0
    .parameter "memoTime"

    .prologue
    .line 193
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoTime:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 289
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->size:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 337
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->text:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setToMember(Ljava/lang/String;)V
    .locals 0
    .parameter "toMember"

    .prologue
    .line 161
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->toMember:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 353
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->type:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setXposition(Ljava/lang/String;)V
    .locals 0
    .parameter "xposition"

    .prologue
    .line 225
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->xposition:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setYposition(Ljava/lang/String;)V
    .locals 0
    .parameter "yposition"

    .prologue
    .line 369
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoData;->yposition:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 7

    .prologue
    .line 42
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 43
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 45
    .local v3, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 46
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 47
    const-string v4, ""

    const-string v5, "Memo"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    const-string v4, ""

    const-string v5, "ToMember"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->toMember:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    const-string v4, ""

    const-string v5, "ToMember"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    const-string v4, ""

    const-string v5, "Lock"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->lock:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    const-string v4, ""

    const-string v5, "Lock"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    const-string v4, ""

    const-string v5, "MemoTime"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoTime:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    const-string v4, ""

    const-string v5, "MemoTime"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    const-string v4, ""

    const-string v5, "MemoName"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string v4, ""

    const-string v5, "MemoName"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    const-string v4, ""

    const-string v5, "Xposition"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->xposition:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const-string v4, ""

    const-string v5, "Xposition"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    const-string v4, ""

    const-string v5, "CreateTime"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->createTime:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    const-string v4, ""

    const-string v5, "CreateTime"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string v4, ""

    const-string v5, "Color"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->color:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string v4, ""

    const-string v5, "Color"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    const-string v4, ""

    const-string v5, "IsDel"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->isDel:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    const-string v4, ""

    const-string v5, "IsDel"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string v4, ""

    const-string v5, "Size"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->size:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string v4, ""

    const-string v5, "Size"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string v4, ""

    const-string v5, "LastTime"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->lastTime:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v4, ""

    const-string v5, "LastTime"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v4, ""

    const-string v5, "Attachments"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->attachments:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 81
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    :cond_0
    const-string v4, ""

    const-string v5, "Attachments"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v4, ""

    const-string v5, "FromMember"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->fromMember:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const-string v4, ""

    const-string v5, "FromMember"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string v4, ""

    const-string v5, "Text"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->text:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v4, ""

    const-string v5, "Text"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string v4, ""

    const-string v5, "Type"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->type:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v4, ""

    const-string v5, "Type"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const-string v4, ""

    const-string v5, "Yposition"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->yposition:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string v4, ""

    const-string v5, "Yposition"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string v4, ""

    const-string v5, "MemoId"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->memoId:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string v4, ""

    const-string v5, "MemoId"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    const-string v4, ""

    const-string v5, "Aid"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->aid:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    const-string v4, ""

    const-string v5, "Aid"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string v4, ""

    const-string v5, "Mark"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->mark:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string v4, ""

    const-string v5, "Mark"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v4, ""

    const-string v5, "Bold"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/MemoData;->bold:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v4, ""

    const-string v5, "Bold"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    const-string v4, ""

    const-string v5, "Memo"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 126
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 81
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/MemoAttachment;

    .line 82
    .local v0, attachment:Lnet/yostore/aws/handler/entity/MemoAttachment;
    const-string v5, ""

    const-string v6, "Attachment"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string v5, ""

    const-string v6, "Aid"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/MemoAttachment;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const-string v5, ""

    const-string v6, "Aid"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v5, ""

    const-string v6, "MemoId"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/MemoAttachment;->getMemoId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v5, ""

    const-string v6, "MemoId"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v5, ""

    const-string v6, "Media"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/MemoAttachment;->getMedia()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v5, ""

    const-string v6, "Media"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const-string v5, ""

    const-string v6, "Fid"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/MemoAttachment;->getFid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v5, ""

    const-string v6, "Fid"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v5, ""

    const-string v6, "Attachment"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 127
    .end local v0           #attachment:Lnet/yostore/aws/handler/entity/MemoAttachment;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 128
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

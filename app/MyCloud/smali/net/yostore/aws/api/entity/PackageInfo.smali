.class public Lnet/yostore/aws/api/entity/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"


# instance fields
.field private _capacity:Ljava/lang/String;

.field private _display:Ljava/lang/String;

.field private _expire:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _maxfilesize:Ljava/lang/String;

.field private mearBlockFreeAccAfterFGate:I

.field private mearBlockFreeAccFirstGate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->mearBlockFreeAccFirstGate:I

    .line 31
    iput v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->mearBlockFreeAccAfterFGate:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCapacity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_capacity:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_display:Ljava/lang/String;

    return-object v0
.end method

.method public getExpire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_expire:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxfilesize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_maxfilesize:Ljava/lang/String;

    return-object v0
.end method

.method public getMearBlockFreeAccAfterFGate()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->mearBlockFreeAccAfterFGate:I

    return v0
.end method

.method public getMearBlockFreeAccFirstGate()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lnet/yostore/aws/api/entity/PackageInfo;->mearBlockFreeAccFirstGate:I

    return v0
.end method

.method public setCapacity(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_capacity:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 16
    iput-object p1, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_display:Ljava/lang/String;

    return-void
.end method

.method public setExpire(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 28
    iput-object p1, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_expire:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 12
    iput-object p1, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_id:Ljava/lang/String;

    return-void
.end method

.method public setMaxfilesize(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 24
    iput-object p1, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_maxfilesize:Ljava/lang/String;

    return-void
.end method

.method public setMearBlockFreeAccAfterFGate(I)V
    .locals 0
    .parameter "mearBlockFreeAccAfterFGate"

    .prologue
    .line 47
    iput p1, p0, Lnet/yostore/aws/api/entity/PackageInfo;->mearBlockFreeAccAfterFGate:I

    .line 48
    return-void
.end method

.method public setMearBlockFreeAccFirstGate(I)V
    .locals 0
    .parameter "mearBlockFreeAccFirstGate"

    .prologue
    .line 39
    iput p1, p0, Lnet/yostore/aws/api/entity/PackageInfo;->mearBlockFreeAccFirstGate:I

    .line 40
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " <feature name=\"MEar\" enable=\"1\"><property name=\"BlockFreeAccFirstGate\" value=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget v5, p0, Lnet/yostore/aws/api/entity/PackageInfo;->mearBlockFreeAccFirstGate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 53
    const-string v5, "<property name=\"BlockFreeAccAfterFGate\" value=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/yostore/aws/api/entity/PackageInfo;->mearBlockFreeAccAfterFGate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 54
    const-string v5, "</feature>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, mearFeaturelist:Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 56
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 58
    .local v3, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 59
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 60
    const-string v4, ""

    const-string v5, "package"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    const-string v4, ""

    const-string v5, "id"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    iget-object v4, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_id:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const-string v4, ""

    const-string v5, "id"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    const-string v4, ""

    const-string v5, "display"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    iget-object v4, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_display:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    const-string v4, ""

    const-string v5, "display"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string v4, ""

    const-string v5, "capacity"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    iget-object v4, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_capacity:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string v4, ""

    const-string v5, "capacity"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    const-string v4, ""

    const-string v5, "maxfilesize"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v4, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_maxfilesize:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    const-string v4, ""

    const-string v5, "maxfilesize"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string v4, ""

    const-string v5, "expire"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    iget-object v4, p0, Lnet/yostore/aws/api/entity/PackageInfo;->_expire:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string v4, ""

    const-string v5, "expire"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string v4, ""

    const-string v5, "featurelist"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v4, ""

    const-string v5, "featurelist"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v4, ""

    const-string v5, "package"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 81
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 82
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 83
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

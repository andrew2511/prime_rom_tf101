.class public Lnet/yostore/aws/api/entity/MearFeatureList;
.super Ljava/lang/Object;
.source "MearFeatureList.java"


# instance fields
.field private blockFreeAccAfterFGate:I

.field private blockFreeAccFirstGate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lnet/yostore/aws/api/entity/MearFeatureList;->blockFreeAccFirstGate:I

    .line 11
    iput v0, p0, Lnet/yostore/aws/api/entity/MearFeatureList;->blockFreeAccAfterFGate:I

    .line 9
    return-void
.end method


# virtual methods
.method public getBlockFreeAccAfterFGate()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lnet/yostore/aws/api/entity/MearFeatureList;->blockFreeAccAfterFGate:I

    return v0
.end method

.method public getBlockFreeAccFirstGate()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lnet/yostore/aws/api/entity/MearFeatureList;->blockFreeAccFirstGate:I

    return v0
.end method

.method public setBlockFreeAccAfterFGate(I)V
    .locals 0
    .parameter "blockFreeAccAfterFGate"

    .prologue
    .line 30
    iput p1, p0, Lnet/yostore/aws/api/entity/MearFeatureList;->blockFreeAccAfterFGate:I

    .line 31
    return-void
.end method

.method public setBlockFreeAccFirstGate(I)V
    .locals 0
    .parameter "blockFreeAccFirstGate"

    .prologue
    .line 20
    iput p1, p0, Lnet/yostore/aws/api/entity/MearFeatureList;->blockFreeAccFirstGate:I

    .line 21
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 41
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 43
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 44
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    const-string v3, ""

    const-string v4, "featurelist"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<feature name=\"MEar\" enable=\"1\"><property name=\"BlockFreeAccFirstGate\" value=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget v4, p0, Lnet/yostore/aws/api/entity/MearFeatureList;->blockFreeAccFirstGate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 49
    const-string v4, "<property name=\"BlockFreeAccAfterFGate\" value=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/api/entity/MearFeatureList;->blockFreeAccAfterFGate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    const-string v4, "</feature>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    const-string v3, ""

    const-string v4, "featurelist"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 54
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 55
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 56
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

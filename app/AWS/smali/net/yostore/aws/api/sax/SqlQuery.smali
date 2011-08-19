.class public Lnet/yostore/aws/api/sax/SqlQuery;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "SqlQuery.java"


# instance fields
.field private at:Lnet/yostore/aws/api/entity/Attribute;

.field private ee:Lnet/yostore/aws/api/entity/EntryInfo;

.field isAttr:Z

.field isEntry:Z

.field private response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 19
    new-instance v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    .line 22
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->isEntry:Z

    .line 23
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->isAttr:Z

    .line 17
    return-void
.end method

.method private b64decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "b64"

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 103
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-boolean v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->isEntry:Z

    if-eqz v1, :cond_12

    .line 31
    iget-boolean v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->isAttr:Z

    if-eqz v1, :cond_4

    .line 32
    const-string v1, "attribute"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->at:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V

    .line 34
    iput-boolean v4, p0, Lnet/yostore/aws/api/sax/SqlQuery;->isAttr:Z

    .line 77
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    return-void

    .line 35
    :cond_1
    const-string v1, "creationtime"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "lastaccesstime"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_3
    const-string v1, "lastwritetime"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_4
    const-string v1, "entry"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iput-boolean v4, p0, Lnet/yostore/aws/api/sax/SqlQuery;->isEntry:Z

    goto :goto_0

    .line 46
    :cond_5
    const-string v1, "id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 47
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_6
    const-string v1, "parent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 49
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setParent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :cond_7
    const-string v1, "rawentryname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 51
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setRawentryname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_8
    const-string v1, "time"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 53
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_9
    const-string v1, "ispublic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 55
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    const-string v2, "1"

    iget-object v3, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_a
    move v2, v4

    goto :goto_1

    .line 56
    :cond_b
    const-string v1, "isorigdeleted"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 57
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    const-string v2, "1"

    iget-object v3, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_c
    move v2, v4

    goto :goto_2

    .line 58
    :cond_d
    const-string v1, "score"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 59
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setScore(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_e
    const-string v1, "marks"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 61
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setMarks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_f
    const-string v1, "kind"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, s:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0

    .line 65
    :cond_10
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0

    .line 66
    :cond_11
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FILE:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0

    .line 70
    .end local v0           #s:Ljava/lang/String;
    :cond_12
    const-string v1, "status"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 71
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->setStatus(I)V

    goto/16 :goto_0

    .line 72
    :cond_13
    const-string v1, "total"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->setTotal(I)V

    goto/16 :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 84
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/EntryInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    .line 86
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->isEntry:Z

    .line 89
    :cond_0
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/SqlQuery;->at:Lnet/yostore/aws/api/entity/Attribute;

    .line 91
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->isAttr:Z

    .line 93
    :cond_1
    return-void
.end method

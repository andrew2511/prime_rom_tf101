.class public Lnet/yostore/aws/api/sax/SqlQuery;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "SqlQuery.java"


# instance fields
.field private ee:Lnet/yostore/aws/api/entity/EntryInfo;

.field private response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 14
    new-instance v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    .line 12
    return-void
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

    .line 20
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "status"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->setStatus(I)V

    .line 51
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 53
    return-void

    .line 24
    :cond_1
    const-string v1, "total"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->setTotal(I)V

    goto :goto_0

    .line 26
    :cond_2
    const-string v1, "entry"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_3
    const-string v1, "id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_4
    const-string v1, "parent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setParent(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_5
    const-string v1, "rawentryname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setRawentryname(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_6
    const-string v1, "time"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 36
    :cond_7
    const-string v1, "ispublic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 37
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    const-string v2, "1"

    iget-object v3, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_8
    move v2, v4

    goto :goto_1

    .line 38
    :cond_9
    const-string v1, "isorigdeleted"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 39
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

    :goto_2
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_a
    move v2, v4

    goto :goto_2

    .line 40
    :cond_b
    const-string v1, "score"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 41
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setScore(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 42
    :cond_c
    const-string v1, "marks"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 43
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setMarks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    :cond_d
    const-string v1, "kind"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, s:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0

    .line 47
    :cond_e
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0

    .line 48
    :cond_f
    iget-object v1, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FILE:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SqlQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 58
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/EntryInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/SqlQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    .line 61
    :cond_0
    return-void
.end method

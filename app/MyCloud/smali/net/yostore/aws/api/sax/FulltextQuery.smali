.class public Lnet/yostore/aws/api/sax/FulltextQuery;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "FulltextQuery.java"


# instance fields
.field private ee:Lnet/yostore/aws/api/entity/EntryInfo;

.field private response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 16
    new-instance v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    .line 14
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

    .line 23
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "status"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->setStatus(I)V

    .line 73
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 75
    return-void

    .line 39
    :cond_1
    const-string v1, "logmessage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->setLogmessage(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    const-string v1, "total"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->setTotal(I)V

    goto :goto_0

    .line 43
    :cond_3
    const-string v1, "entry"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_4
    const-string v1, "id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_5
    const-string v1, "parent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 48
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setParent(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_6
    const-string v1, "rawentryname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setRawentryname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_7
    const-string v1, "time"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 52
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_8
    const-string v1, "ispublic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 54
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    const-string v2, "1"

    iget-object v3, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_9
    move v2, v4

    goto :goto_1

    .line 55
    :cond_a
    const-string v1, "isorigdeleted"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 56
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    const-string v2, "1"

    iget-object v3, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_b
    move v2, v4

    goto :goto_2

    .line 57
    :cond_c
    const-string v1, "score"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 58
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setScore(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_d
    const-string v1, "marks"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 60
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setMarks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_e
    const-string v1, "ancestorid"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 62
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setAncestorid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_f
    const-string v1, "ancestorname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 64
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setAncestorname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :cond_10
    const-string v1, "kind"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, s:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0

    .line 68
    :cond_11
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0

    .line 69
    :cond_12
    iget-object v1, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FILE:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    goto/16 :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;

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
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 80
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/EntryInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FulltextQuery;->ee:Lnet/yostore/aws/api/entity/EntryInfo;

    .line 84
    :cond_0
    return-void
.end method

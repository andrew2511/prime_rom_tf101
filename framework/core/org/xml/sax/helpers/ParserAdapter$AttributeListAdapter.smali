.class final Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;
.super Ljava/lang/Object;
.source "ParserAdapter.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xml/sax/helpers/ParserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AttributeListAdapter"
.end annotation


# instance fields
.field private qAtts:Lorg/xml/sax/AttributeList;

.field final synthetic this$0:Lorg/xml/sax/helpers/ParserAdapter;


# direct methods
.method constructor <init>(Lorg/xml/sax/helpers/ParserAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->this$0:Lorg/xml/sax/helpers/ParserAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .registers 5
    .parameter "qName"

    .prologue
    .line 981
    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->this$0:Lorg/xml/sax/helpers/ParserAdapter;

    #getter for: Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;
    invoke-static {v2}, Lorg/xml/sax/helpers/ParserAdapter;->access$000(Lorg/xml/sax/helpers/ParserAdapter;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v1

    .line 982
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1e

    .line 983
    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v2, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v0

    .line 987
    :goto_1a
    return v2

    .line 982
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 987
    :cond_1e
    const/4 v2, -0x1

    goto :goto_1a
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 968
    const/4 v0, -0x1

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 918
    const-string v0, ""

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 930
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 942
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "qName"

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 1000
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 905
    const-string v0, ""

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 954
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "qName"

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 1025
    const/4 v0, 0x0

    return-object v0
.end method

.method setAttributeList(Lorg/xml/sax/AttributeList;)V
    .registers 2
    .parameter "qAtts"

    .prologue
    .line 880
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    .line 881
    return-void
.end method

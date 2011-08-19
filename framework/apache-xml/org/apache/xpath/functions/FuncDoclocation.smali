.class public Lorg/apache/xpath/functions/FuncDoclocation;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncDoclocation.java"


# static fields
.field static final serialVersionUID:J = 0x67a7fa82b733b581L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 8
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncDoclocation;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result v2

    .line 49
    .local v2, whereNode:I
    const/4 v1, 0x0

    .line 51
    .local v1, fileLocation:Ljava/lang/String;
    if-eq v5, v2, :cond_1e

    .line 53
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 56
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    const/16 v3, 0xb

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    if-ne v3, v4, :cond_18

    .line 58
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    .line 61
    :cond_18
    if-eq v5, v2, :cond_1e

    .line 63
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v1

    .line 69
    .end local v0           #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_1e
    new-instance v3, Lorg/apache/xpath/objects/XString;

    if-eqz v1, :cond_27

    move-object v4, v1

    :goto_23
    invoke-direct {v3, v4}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_27
    const-string v4, ""

    goto :goto_23
.end method

.class public Lorg/apache/xpath/functions/FuncQname;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncQname.java"


# static fields
.field static final serialVersionUID:J = -0x1543d9e4efa7b6a4L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncQname;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result v0

    .line 50
    .local v0, context:I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_1c

    .line 52
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 53
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, qname:Ljava/lang/String;
    if-nez v2, :cond_15

    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    move-object v3, v4

    .line 61
    .end local v1           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v2           #qname:Ljava/lang/String;
    .local v3, val:Lorg/apache/xpath/objects/XObject;
    :goto_14
    return-object v3

    .line 54
    .end local v3           #val:Lorg/apache/xpath/objects/XObject;
    .restart local v1       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v2       #qname:Ljava/lang/String;
    :cond_15
    new-instance v4, Lorg/apache/xpath/objects/XString;

    invoke-direct {v4, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_14

    .line 58
    .end local v1           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v2           #qname:Ljava/lang/String;
    :cond_1c
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .restart local v3       #val:Lorg/apache/xpath/objects/XObject;
    goto :goto_14
.end method

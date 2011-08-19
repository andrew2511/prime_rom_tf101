.class public Lorg/apache/xpath/functions/FuncUnparsedEntityURI;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncUnparsedEntityURI.java"


# static fields
.field static final serialVersionUID:J = 0xbbb24bf4c2ca6f2L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

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
    .line 46
    iget-object v5, p0, Lorg/apache/xpath/functions/FuncUnparsedEntityURI;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 48
    .local v0, context:I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 49
    .local v2, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    .line 51
    .local v1, doc:I
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, uri:Ljava/lang/String;
    new-instance v5, Lorg/apache/xpath/objects/XString;

    invoke-direct {v5, v4}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v5
.end method

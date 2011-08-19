.class public Lorg/apache/xpath/functions/FuncSubstringAfter;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncSubstringAfter.java"


# static fields
.field static final serialVersionUID:J = -0x70af152236aa8e42L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncSubstringAfter;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    .line 48
    .local v1, s1:Lorg/apache/xml/utils/XMLString;
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncSubstringAfter;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    .line 49
    .local v2, s2:Lorg/apache/xml/utils/XMLString;
    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->indexOf(Lorg/apache/xml/utils/XMLString;)I

    move-result v0

    .line 51
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v3, v0, :cond_1e

    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .end local p0
    :goto_1d
    return-object v3

    .restart local p0
    :cond_1e
    invoke-interface {v2}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, v3}, Lorg/apache/xml/utils/XMLString;->substring(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/objects/XString;

    move-object v3, p0

    goto :goto_1d
.end method

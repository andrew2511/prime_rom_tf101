.class public Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;
.super Lorg/apache/xpath/objects/XRTreeFrag;
.source "XRTreeFragSelectWrapper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x5a91a43a5bb8e343L


# direct methods
.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .registers 2
    .parameter "expr"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(Lorg/apache/xpath/Expression;)V

    .line 39
    return-void
.end method


# virtual methods
.method public asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .registers 4

    .prologue
    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .registers 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_DETACH_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_obj:Ljava/lang/Object;

    check-cast v1, Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 70
    .local v0, m_selected:Lorg/apache/xpath/objects/XObject;
    iget-boolean v1, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_allowRelease:Z

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 71
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    move-object v1, v0

    .line 74
    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 3
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 53
    iget-object p0, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 54
    return-void
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x3

    return v0
.end method

.method public num()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NUM_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rtf()I
    .registers 4

    .prologue
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public str()Ljava/lang/String;
    .registers 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_STR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .registers 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_XSTR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

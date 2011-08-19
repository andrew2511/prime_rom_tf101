.class public Lorg/apache/xpath/functions/FuncRound;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncRound.java"


# static fields
.field static final serialVersionUID:J = -0x6e9d33d4555c1233L


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
    .registers 9
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 45
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncRound;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 46
    .local v0, obj:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    .line 47
    .local v1, val:D
    const-wide/high16 v3, -0x4020

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_1e

    cmpg-double v3, v1, v5

    if-gez v3, :cond_1e

    new-instance v3, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v4, -0x8000

    invoke-direct {v3, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    .line 49
    :goto_1d
    return-object v3

    .line 48
    :cond_1e
    cmpl-double v3, v1, v5

    if-nez v3, :cond_28

    new-instance v3, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v3, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    goto :goto_1d

    .line 49
    :cond_28
    new-instance v3, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    goto :goto_1d
.end method

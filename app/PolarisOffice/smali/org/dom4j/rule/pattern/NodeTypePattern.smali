.class public Lorg/dom4j/rule/pattern/NodeTypePattern;
.super Ljava/lang/Object;
.source "NodeTypePattern.java"

# interfaces
.implements Lorg/dom4j/rule/Pattern;


# static fields
.field public static final ANY_ATTRIBUTE:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_COMMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_DOCUMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_ELEMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_PROCESSING_INSTRUCTION:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_TEXT:Lorg/dom4j/rule/pattern/NodeTypePattern;


# instance fields
.field private nodeType:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 25
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_ATTRIBUTE:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 28
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 29
    const/16 v1, 0x8

    .line 28
    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_COMMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 32
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 33
    const/16 v1, 0x9

    .line 32
    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_DOCUMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 36
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 37
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_ELEMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 41
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    .line 40
    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_PROCESSING_INSTRUCTION:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 44
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 45
    const/4 v1, 0x3

    .line 44
    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_TEXT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 22
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .parameter "nodeType"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-short p1, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:S

    .line 51
    return-void
.end method


# virtual methods
.method public getMatchType()S
    .locals 1

    .prologue
    .line 66
    iget-short v0, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:S

    return v0
.end method

.method public getMatchesNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()D
    .locals 2

    .prologue
    .line 58
    const-wide/high16 v0, 0x3fe0

    return-wide v0
.end method

.method public getUnionPatterns()[Lorg/dom4j/rule/Pattern;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 54
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    iget-short v1, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

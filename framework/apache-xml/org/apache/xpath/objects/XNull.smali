.class public Lorg/apache/xpath/objects/XNull;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "XNull.java"


# static fields
.field static final serialVersionUID:J = -0x5ef28b163716bc5dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public bool()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4
    .parameter "obj2"

    .prologue
    .line 128
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, -0x1

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "#CLASS_NULL"

    return-object v0
.end method

.method public num()D
    .registers 3

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .registers 3
    .parameter "support"

    .prologue
    .line 106
    const/4 v0, -0x1

    return v0
.end method

.method public str()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const-string v0, ""

    return-object v0
.end method

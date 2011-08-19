.class public Lorg/htmlparser/filters/HasAttributeFilter;
.super Ljava/lang/Object;
.source "HasAttributeFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mAttribute:Ljava/lang/String;

.field protected mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "attribute"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mAttribute:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mValue:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 6
    .parameter "node"

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, ret:Z
    instance-of v4, p1, Lorg/htmlparser/Tag;

    if-eqz v4, :cond_0

    .line 138
    move-object v0, p1

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v3, v0

    .line 139
    .local v3, tag:Lorg/htmlparser/Tag;
    iget-object v4, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mAttribute:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/htmlparser/Tag;->getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;

    move-result-object v1

    .line 140
    .local v1, attribute:Lorg/htmlparser/Attribute;
    if-eqz v1, :cond_1

    const/4 v4, 0x1

    move v2, v4

    .line 141
    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mValue:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 145
    .end local v1           #attribute:Lorg/htmlparser/Attribute;
    .end local v3           #tag:Lorg/htmlparser/Tag;
    :cond_0
    return v2

    .line 140
    .restart local v1       #attribute:Lorg/htmlparser/Attribute;
    .restart local v3       #tag:Lorg/htmlparser/Tag;
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 100
    iput-object p1, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mAttribute:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 120
    iput-object p1, p0, Lorg/htmlparser/filters/HasAttributeFilter;->mValue:Ljava/lang/String;

    .line 121
    return-void
.end method

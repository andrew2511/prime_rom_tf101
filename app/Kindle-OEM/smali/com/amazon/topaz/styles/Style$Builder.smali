.class public final Lcom/amazon/topaz/styles/Style$Builder;
.super Lcom/amazon/topaz/styles/AbstractStyle;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/styles/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field attribs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractStyle;-><init>()V

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/styles/AbstractStyle;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/amazon/topaz/styles/Style$Builder;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/topaz/styles/AbstractStyle;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    return-void
.end method

.method public build()Lcom/amazon/topaz/styles/Style;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v1, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 104
    :cond_0
    new-instance v0, Lcom/amazon/topaz/styles/Style;

    invoke-direct {v0, p0, v2}, Lcom/amazon/topaz/styles/Style;-><init>(Lcom/amazon/topaz/styles/Style$Builder;Lcom/amazon/topaz/styles/Style$1;)V

    .line 105
    .local v0, retval:Lcom/amazon/topaz/styles/Style;
    iput-object v2, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    .line 107
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getAttribs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractStyle;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/amazon/topaz/styles/AbstractStyle;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractStyle;->hashCode()I

    move-result v0

    return v0
.end method

.method setAttr(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method setAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/styles/Style$Builder;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractStyle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lorg/apache/xml/dtm/ref/ExtendedType;
.super Ljava/lang/Object;
.source "ExtendedType.java"


# instance fields
.field private hash:I

.field private localName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nodetype:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "nodetype"
    .parameter "namespace"
    .parameter "localName"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 45
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "nodetype"
    .parameter "namespace"
    .parameter "localName"
    .parameter "hash"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 62
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 64
    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 111
    :try_start_1
    iget v1, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    if-ne v1, v2, :cond_1d

    iget-object v1, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_1f

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 117
    :goto_1c
    return v1

    :cond_1d
    move v1, v3

    .line 111
    goto :goto_1c

    .line 115
    :catch_1f
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NullPointerException;
    move v1, v3

    .line 117
    goto :goto_1c
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return v0
.end method

.method protected redefine(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "nodetype"
    .parameter "namespace"
    .parameter "localName"

    .prologue
    .line 74
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 75
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    .line 78
    return-void
.end method

.method protected redefine(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "nodetype"
    .parameter "namespace"
    .parameter "localName"
    .parameter "hash"

    .prologue
    .line 87
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 88
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 90
    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    .line 91
    return-void
.end method

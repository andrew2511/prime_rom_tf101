.class public Lorg/apache/xml/serializer/dom3/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;
    }
.end annotation


# static fields
.field static final PREFIX_XML:Ljava/lang/String;

.field static final PREFIX_XMLNS:Ljava/lang/String;

.field public static final XMLNS_URI:Ljava/lang/String;

.field public static final XML_URI:Ljava/lang/String;


# instance fields
.field protected fContext:[I

.field protected fCurrentContext:I

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field protected fPrefixes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "xml"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    .line 43
    const-string v0, "xmlns"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    .line 49
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XML_URI:Ljava/lang/String;

    .line 56
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XMLNS_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    .line 92
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "prefix"
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    if-eq p1, v2, :cond_a

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne p1, v2, :cond_c

    :cond_a
    move v2, v4

    .line 187
    :goto_b
    return v2

    .line 162
    :cond_c
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    .local v0, i:I
    :goto_e
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v2, v2, v3

    if-le v0, v2, :cond_2e

    .line 164
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v3, 0x2

    sub-int v3, v0, v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 171
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    sub-int v3, v0, v5

    aput-object p2, v2, v3

    move v2, v5

    .line 172
    goto :goto_b

    .line 162
    :cond_2b
    add-int/lit8 v0, v0, -0x2

    goto :goto_e

    .line 177
    :cond_2e
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_44

    .line 178
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 179
    .local v1, namespacearray:[Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 184
    .end local v1           #namespacearray:[Ljava/lang/String;
    :cond_44
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput-object p1, v2, v3

    .line 185
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput-object p2, v2, v3

    move v2, v5

    .line 187
    goto :goto_b
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .registers 10

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, count:I
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_11

    .line 252
    iget v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    new-array v5, v7, [Ljava/lang/String;

    .line 253
    .local v5, prefixes:[Ljava/lang/String;
    iput-object v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 255
    .end local v5           #prefixes:[Ljava/lang/String;
    :cond_11
    const/4 v4, 0x0

    .line 256
    .local v4, prefix:Ljava/lang/String;
    const/4 v6, 0x1

    .line 257
    .local v6, unique:Z
    const/4 v2, 0x2

    .local v2, i:I
    :goto_14
    iget v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    if-ge v2, v7, :cond_3a

    .line 258
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v8, v2, 0x2

    aget-object v4, v7, v8

    .line 259
    const/4 v3, 0x0

    .local v3, k:I
    :goto_21
    if-ge v3, v0, :cond_2a

    .line 260
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-ne v7, v4, :cond_37

    .line 261
    const/4 v6, 0x0

    .line 265
    :cond_2a
    if-eqz v6, :cond_33

    .line 266
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aput-object v4, v7, v0

    move v0, v1

    .line 268
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_33
    const/4 v6, 0x1

    .line 257
    add-int/lit8 v2, v2, 0x2

    goto :goto_14

    .line 259
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 270
    .end local v3           #k:I
    :cond_3a
    new-instance v7, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v7, p0, v8, v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;-><init>(Lorg/apache/xml/serializer/dom3/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v7
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .registers 5
    .parameter "index"

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v1, v1, v2

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .registers 4

    .prologue
    .line 235
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x2

    .line 216
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    .local v0, i:I
    :goto_3
    if-lez v0, :cond_2c

    .line 218
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 220
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    sub-int v2, v0, v3

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 221
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    sub-int v2, v0, v3

    aget-object v1, v1, v2

    .line 226
    :goto_28
    return-object v1

    .line 216
    :cond_29
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 226
    :cond_2c
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "prefix"

    .prologue
    .line 197
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    .local v0, i:I
    :goto_2
    if-lez v0, :cond_1c

    .line 199
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v2, 0x2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 200
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    .line 205
    :goto_18
    return-object v1

    .line 197
    :cond_19
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 205
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public popContext()V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    const/4 v2, 0x1

    sub-int v2, v1, v2

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    .line 150
    return-void
.end method

.method public pushContext()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 133
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1b

    .line 134
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 135
    .local v0, contextarray:[I
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    .line 140
    .end local v0           #contextarray:[I
    :cond_1b
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput v3, v1, v2

    .line 142
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    .line 113
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    .line 114
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput v2, v0, v1

    .line 117
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 118
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XML_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 120
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 121
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XMLNS_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 122
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    .line 124
    return-void
.end method

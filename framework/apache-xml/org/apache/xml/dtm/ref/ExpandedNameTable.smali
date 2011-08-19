.class public Lorg/apache/xml/dtm/ref/ExpandedNameTable;
.super Ljava/lang/Object;
.source "ExpandedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE:I = 0x2

.field public static final CDATA_SECTION:I = 0x4

.field public static final COMMENT:I = 0x8

.field public static final DOCUMENT:I = 0x9

.field public static final DOCUMENT_FRAGMENT:I = 0xb

.field public static final DOCUMENT_TYPE:I = 0xa

.field public static final ELEMENT:I = 0x1

.field public static final ENTITY:I = 0x6

.field public static final ENTITY_REFERENCE:I = 0x5

.field public static final NAMESPACE:I = 0xd

.field public static final NOTATION:I = 0xc

.field public static final PROCESSING_INSTRUCTION:I = 0x7

.field public static final TEXT:I = 0x3

.field private static m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private static m_initialCapacity:I

.field private static m_initialSize:I

.field private static m_loadFactor:F


# instance fields
.field hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_capacity:I

.field private m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_nextType:I

.field private m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

.field private m_threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0xe

    .line 44
    const/16 v1, 0x80

    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialSize:I

    .line 77
    const/high16 v1, 0x3f40

    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    .line 83
    const/16 v1, 0xcb

    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialCapacity:I

    .line 108
    new-array v1, v5, [Lorg/apache/xml/dtm/ref/ExtendedType;

    sput-object v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v5, :cond_25

    .line 112
    sget-object v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    new-instance v2, Lorg/apache/xml/dtm/ref/ExtendedType;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 114
    :cond_25
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/xml/dtm/ref/ExtendedType;

    const/4 v1, -0x1

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 121
    sget v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialCapacity:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    .line 122
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    int-to-float v0, v0

    sget v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    .line 123
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    new-array v0, v0, [Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    .line 125
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->initExtendedTypes()V

    .line 126
    return-void
.end method

.method private initExtendedTypes()V
    .registers 7

    .prologue
    const/16 v5, 0xe

    .line 135
    sget v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialSize:I

    new-array v1, v1, [Lorg/apache/xml/dtm/ref/ExtendedType;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v5, :cond_24

    .line 137
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    sget-object v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 138
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    new-instance v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    sget-object v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v0, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V

    aput-object v2, v1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 141
    :cond_24
    iput v5, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    .line 142
    return-void
.end method

.method private rehash()V
    .registers 10

    .prologue
    .line 247
    iget v5, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    .line 248
    .local v5, oldCapacity:I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    .line 250
    .local v6, oldTable:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v2, v7, 0x1

    .line 251
    .local v2, newCapacity:I
    iput v2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    .line 252
    int-to-float v7, v2

    sget v8, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    .line 254
    new-array v7, v2, [Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iput-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    .line 255
    const/4 v7, 0x1

    sub-int v1, v5, v7

    .local v1, i:I
    :goto_18
    if-ltz v1, :cond_36

    .line 257
    aget-object v4, v6, v1

    .local v4, old:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    :goto_1c
    if-eqz v4, :cond_33

    .line 259
    move-object v0, v4

    .line 260
    .local v0, e:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    .line 262
    iget v7, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    rem-int v3, v7, v2

    .line 263
    .local v3, newIndex:I
    if-gez v3, :cond_28

    .line 264
    neg-int v3, v3

    .line 266
    :cond_28
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v7, v7, v3

    iput-object v7, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    .line 267
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aput-object v0, v7, v3

    goto :goto_1c

    .line 255
    .end local v0           #e:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    .end local v3           #newIndex:I
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 270
    .end local v4           #old:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    :cond_36
    return-void
.end method


# virtual methods
.method public getExpandedTypeID(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 280
    return p1
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .parameter "namespace"
    .parameter "localName"
    .parameter "type"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .parameter "namespace"
    .parameter "localName"
    .parameter "type"
    .parameter "searchOnly"

    .prologue
    const/4 v8, 0x0

    .line 181
    if-nez p1, :cond_5

    .line 182
    const-string p1, ""

    .line 183
    :cond_5
    if-nez p2, :cond_9

    .line 184
    const-string p2, ""

    .line 187
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int v2, v6, v7

    .line 190
    .local v2, hash:I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-virtual {v6, p3, p1, p2, v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->redefine(ILjava/lang/String;Ljava/lang/String;I)V

    .line 193
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    rem-int v3, v2, v6

    .line 194
    .local v3, index:I
    if-gez v3, :cond_20

    .line 195
    neg-int v3, v3

    .line 199
    :cond_20
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v0, v6, v3

    .local v0, e:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    :goto_24
    if-eqz v0, :cond_3a

    .line 201
    iget v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    if-ne v6, v2, :cond_37

    iget-object v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->key:Lorg/apache/xml/dtm/ref/ExtendedType;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/ExtendedType;->equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 202
    iget v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    .line 236
    :goto_36
    return v6

    .line 199
    :cond_37
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    goto :goto_24

    .line 205
    :cond_3a
    if-eqz p4, :cond_3e

    .line 207
    const/4 v6, -0x1

    goto :goto_36

    .line 211
    :cond_3e
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    if-le v6, v7, :cond_4e

    .line 212
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->rehash()V

    .line 213
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    rem-int v3, v2, v6

    .line 214
    if-gez v3, :cond_4e

    .line 215
    neg-int v3, v3

    .line 219
    :cond_4e
    new-instance v5, Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-direct {v5, p3, p1, p2, v2}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 222
    .local v5, newET:Lorg/apache/xml/dtm/ref/ExtendedType;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    array-length v6, v6

    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    if-ne v6, v7, :cond_6b

    .line 223
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    new-array v4, v6, [Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 224
    .local v4, newArray:[Lorg/apache/xml/dtm/ref/ExtendedType;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    array-length v7, v7

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iput-object v4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 229
    .end local v4           #newArray:[Lorg/apache/xml/dtm/ref/ExtendedType;
    :cond_6b
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    aput-object v5, v6, v7

    .line 233
    new-instance v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v7, v7, v3

    invoke-direct {v1, v5, v6, v2, v7}, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V

    .line 234
    .local v1, entry:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aput-object v1, v6, v3

    .line 236
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    goto :goto_36
.end method

.method public getExtendedTypes()[Lorg/apache/xml/dtm/ref/ExtendedType;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    return-object v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 3
    .parameter "ExpandedNameID"

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalNameID(I)I
    .registers 4
    .parameter "ExpandedNameID"

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 304
    const/4 v0, 0x0

    .line 306
    :goto_11
    return v0

    :cond_12
    move v0, p1

    goto :goto_11
.end method

.method public getNamespace(I)Ljava/lang/String;
    .registers 4
    .parameter "ExpandedNameID"

    .prologue
    .line 319
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, namespace:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    :goto_11
    return-object v1

    :cond_12
    move-object v1, v0

    goto :goto_11
.end method

.method public final getNamespaceID(I)I
    .registers 4
    .parameter "ExpandedNameID"

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_11
    return v0

    :cond_12
    move v0, p1

    goto :goto_11
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 357
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    return v0
.end method

.method public final getType(I)S
    .registers 3
    .parameter "ExpandedNameID"

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

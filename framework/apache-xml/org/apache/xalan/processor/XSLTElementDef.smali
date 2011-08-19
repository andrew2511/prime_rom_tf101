.class public Lorg/apache/xalan/processor/XSLTElementDef;
.super Ljava/lang/Object;
.source "XSLTElementDef.java"


# static fields
.field static final T_ANY:I = 0x3

.field static final T_ELEMENT:I = 0x1

.field static final T_PCDATA:I = 0x2


# instance fields
.field private m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

.field private m_classObject:Ljava/lang/Class;

.field private m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

.field private m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

.field private m_has_required:Z

.field m_isOrdered:Z

.field private m_lastOrder:I

.field private m_multiAllowed:Z

.field private m_name:Ljava/lang/String;

.field private m_nameAlias:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_order:I

.field private m_required:Z

.field m_requiredFound:Ljava/util/Hashtable;

.field private m_type:I


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    .line 672
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    .line 687
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 746
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    .line 781
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 797
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    .line 822
    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lorg/apache/xalan/processor/XSLTElementProcessor;I)V
    .registers 7
    .parameter "classObject"
    .parameter "contentHandler"
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    .line 672
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    .line 687
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 746
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    .line 781
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 797
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    .line 822
    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 246
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    .line 247
    iput p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    .line 249
    invoke-virtual {p0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    .line 250
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .registers 17
    .parameter "schema"
    .parameter "namespace"
    .parameter "name"
    .parameter "nameAlias"
    .parameter "elements"
    .parameter "attributes"
    .parameter "contentHandler"
    .parameter "classObject"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    .line 781
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 797
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 59
    invoke-virtual/range {v0 .. v7}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    .line 61
    if-eqz p2, :cond_50

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "http://xml.apache.org/xalan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "http://xml.apache.org/xslt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 66
    :cond_3e
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p2, p3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    .line 67
    if-eqz p4, :cond_50

    .line 68
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p2, p4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    .line 70
    :cond_50
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V
    .registers 11
    .parameter "schema"
    .parameter "namespace"
    .parameter "name"
    .parameter "nameAlias"
    .parameter "elements"
    .parameter "attributes"
    .parameter "contentHandler"
    .parameter "classObject"
    .parameter "order"
    .parameter "multiAllowed"

    .prologue
    .line 229
    invoke-direct/range {p0 .. p8}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    .line 231
    iput p9, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 232
    iput-boolean p10, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 233
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V
    .registers 20
    .parameter "schema"
    .parameter "namespace"
    .parameter "name"
    .parameter "nameAlias"
    .parameter "elements"
    .parameter "attributes"
    .parameter "contentHandler"
    .parameter "classObject"
    .parameter "has_required"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    .line 672
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    .line 687
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 746
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    .line 781
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 797
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    .line 822
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 88
    move/from16 v0, p9

    move-object v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 89
    invoke-virtual/range {v2 .. v9}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    .line 91
    if-eqz p2, :cond_57

    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "http://xml.apache.org/xalan"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "http://xml.apache.org/xslt"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 96
    :cond_45
    new-instance v2, Lorg/apache/xml/utils/QName;

    invoke-direct {v2, p2, p3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    .line 97
    if-eqz p4, :cond_57

    .line 98
    new-instance v2, Lorg/apache/xml/utils/QName;

    invoke-direct {v2, p2, p4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    .line 101
    :cond_57
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V
    .registers 25
    .parameter "schema"
    .parameter "namespace"
    .parameter "name"
    .parameter "nameAlias"
    .parameter "elements"
    .parameter "attributes"
    .parameter "contentHandler"
    .parameter "classObject"
    .parameter "has_order"
    .parameter "order"
    .parameter "multiAllowed"

    .prologue
    .line 204
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v2 .. v12}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    .line 208
    move/from16 v0, p9

    move-object v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    .line 209
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V
    .registers 11
    .parameter "schema"
    .parameter "namespace"
    .parameter "name"
    .parameter "nameAlias"
    .parameter "elements"
    .parameter "attributes"
    .parameter "contentHandler"
    .parameter "classObject"
    .parameter "has_required"
    .parameter "required"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p9}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V

    .line 124
    iput-boolean p10, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 125
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V
    .registers 13
    .parameter "schema"
    .parameter "namespace"
    .parameter "name"
    .parameter "nameAlias"
    .parameter "elements"
    .parameter "attributes"
    .parameter "contentHandler"
    .parameter "classObject"
    .parameter "has_required"
    .parameter "required"
    .parameter "order"
    .parameter "multiAllowed"

    .prologue
    .line 148
    invoke-direct/range {p0 .. p10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    .line 151
    iput p11, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 152
    iput-boolean p12, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 153
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V
    .registers 14
    .parameter "schema"
    .parameter "namespace"
    .parameter "name"
    .parameter "nameAlias"
    .parameter "elements"
    .parameter "attributes"
    .parameter "contentHandler"
    .parameter "classObject"
    .parameter "has_required"
    .parameter "required"
    .parameter "has_order"
    .parameter "order"
    .parameter "multiAllowed"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    .line 180
    iput p12, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 181
    iput-boolean p13, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 182
    iput-boolean p11, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    .line 183
    return-void
.end method

.method private QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static equalsMayBeNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 307
    if-eq p1, p0, :cond_c

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v3, 0x0

    .line 329
    if-nez p0, :cond_b

    move v0, v3

    .line 330
    .local v0, len1:I
    :goto_4
    if-nez p1, :cond_11

    move v1, v3

    .line 332
    .local v1, len2:I
    :goto_7
    if-eq v0, v1, :cond_17

    move v2, v3

    :goto_a
    return v2

    .line 329
    .end local v0           #len1:I
    .end local v1           #len2:I
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v2

    goto :goto_4

    .line 330
    .restart local v0       #len1:I
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v2

    goto :goto_7

    .line 332
    .restart local v1       #len2:I
    :cond_17
    if-nez v0, :cond_1b

    const/4 v2, 0x1

    goto :goto_a

    :cond_1b
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_a
.end method


# virtual methods
.method build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .registers 15
    .parameter "namespace"
    .parameter "name"
    .parameter "nameAlias"
    .parameter "elements"
    .parameter "attributes"
    .parameter "contentHandler"
    .parameter "classObject"

    .prologue
    .line 268
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    .line 269
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    .line 272
    iput-object p5, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

    .line 274
    invoke-virtual {p0, p6}, Lorg/apache/xalan/processor/XSLTElementDef;->setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    .line 276
    iput-object p7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    .line 278
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->hasRequired()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    if-eqz v3, :cond_59

    .line 280
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    array-length v2, v3

    .line 281
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v2, :cond_59

    .line 283
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object v0, v3, v1

    .line 285
    .local v0, def:Lorg/apache/xalan/processor/XSLTElementDef;
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequired()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 287
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez v3, :cond_36

    .line 288
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    .line 289
    :cond_36
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xsl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 293
    .end local v0           #def:Lorg/apache/xalan/processor/XSLTElementDef;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_59
    return-void
.end method

.method getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;
    .registers 11
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 579
    const/4 v2, 0x0

    .line 580
    .local v2, defaultDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v1

    .line 581
    .local v1, attrDefs:[Lorg/apache/xalan/processor/XSLTAttributeDef;
    array-length v4, v1

    .line 583
    .local v4, nAttrDefs:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_7
    if-ge v3, v4, :cond_51

    .line 585
    aget-object v0, v1, v3

    .line 586
    .local v0, attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 587
    .local v6, uriDef:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, nameDef:Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-static {p1, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_33

    if-eqz v6, :cond_35

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_35

    :cond_33
    move-object v7, v0

    .line 616
    .end local v0           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v5           #nameDef:Ljava/lang/String;
    .end local v6           #uriDef:Ljava/lang/String;
    :goto_34
    return-object v7

    .line 594
    .restart local v0       #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .restart local v5       #nameDef:Ljava/lang/String;
    .restart local v6       #uriDef:Ljava/lang/String;
    :cond_35
    const-string v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    if-nez v6, :cond_43

    .line 599
    move-object v2, v0

    .line 583
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 601
    :cond_43
    invoke-static {p1, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    move-object v7, v0

    .line 604
    goto :goto_34

    .line 608
    .end local v0           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v5           #nameDef:Ljava/lang/String;
    .end local v6           #uriDef:Ljava/lang/String;
    :cond_51
    if-nez v2, :cond_64

    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_64

    const-string v7, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p1, v7}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 612
    sget-object v7, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    goto :goto_34

    :cond_64
    move-object v7, v2

    .line 616
    goto :goto_34
.end method

.method getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

    return-object v0
.end method

.method getClassObject()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    return-object v0
.end method

.method public getElementProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object v0
.end method

.method public getElements()[Lorg/apache/xalan/processor/XSLTElementDef;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    return-object v0
.end method

.method getLastOrder()I
    .registers 2

    .prologue
    .line 806
    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    return v0
.end method

.method getMultiAllowed()Z
    .registers 2

    .prologue
    .line 831
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method getNameAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method getOrder()I
    .registers 2

    .prologue
    .line 790
    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    return v0
.end method

.method getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 13
    .parameter "uri"
    .parameter "localName"

    .prologue
    const/4 v9, 0x0

    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, elemDef:Lorg/apache/xalan/processor/XSLTElementProcessor;
    iget-object v7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    if-nez v7, :cond_8

    move-object v7, v9

    .line 517
    :goto_7
    return-object v7

    .line 470
    :cond_8
    iget-object v7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    array-length v5, v7

    .line 471
    .local v5, n:I
    const/4 v6, -0x1

    .line 472
    .local v6, order:I
    const/4 v4, 0x1

    .line 473
    .local v4, multiAllowed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v5, :cond_51

    .line 475
    iget-object v7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object v0, v7, v2

    .line 480
    .local v0, def:Lorg/apache/xalan/processor/XSLTElementDef;
    iget-object v7, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 484
    const-string v7, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p1, v7}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 486
    iget-object v1, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 487
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getOrder()I

    move-result v6

    .line 488
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getMultiAllowed()Z

    move-result v4

    .line 473
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 491
    :cond_33
    invoke-direct {v0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 493
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequired()Z

    move-result v7

    if-eqz v7, :cond_47

    .line 494
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lorg/apache/xalan/processor/XSLTElementDef;->setRequiredFound(Ljava/lang/String;Z)V

    .line 495
    :cond_47
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getOrder()I

    move-result v6

    .line 496
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getMultiAllowed()Z

    move-result v4

    .line 497
    iget-object v1, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 502
    .end local v0           #def:Lorg/apache/xalan/processor/XSLTElementDef;
    :cond_51
    if-eqz v1, :cond_62

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->isOrdered()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 504
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getLastOrder()I

    move-result v3

    .line 505
    .local v3, lastOrder:I
    if-le v6, v3, :cond_64

    .line 506
    invoke-virtual {p0, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    .end local v3           #lastOrder:I
    :cond_62
    move-object v7, v1

    .line 517
    goto :goto_7

    .line 507
    .restart local v3       #lastOrder:I
    :cond_64
    if-ne v6, v3, :cond_6a

    if-nez v4, :cond_6a

    move-object v7, v9

    .line 509
    goto :goto_7

    .line 511
    :cond_6a
    if-ge v6, v3, :cond_62

    if-lez v6, :cond_62

    move-object v7, v9

    .line 513
    goto :goto_7
.end method

.method getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 9
    .parameter "uri"
    .parameter "localName"

    .prologue
    const/4 v5, 0x0

    .line 534
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    if-nez v3, :cond_7

    move-object v3, v5

    .line 549
    :goto_6
    return-object v3

    .line 537
    :cond_7
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    array-length v2, v3

    .line 539
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v2, :cond_27

    .line 541
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object v0, v3, v1

    .line 543
    .local v0, def:Lorg/apache/xalan/processor/XSLTElementDef;
    iget-object v3, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    .line 545
    iget-object v3, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    goto :goto_6

    .line 539
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v0           #def:Lorg/apache/xalan/processor/XSLTElementDef;
    :cond_27
    move-object v3, v5

    .line 549
    goto :goto_6
.end method

.method getRequired()Z
    .registers 2

    .prologue
    .line 696
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    return v0
.end method

.method getRequiredElem()Ljava/lang/String;
    .registers 6

    .prologue
    .line 730
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez v3, :cond_6

    .line 731
    const/4 v3, 0x0

    .line 743
    .end local p0
    :goto_5
    return-object v3

    .line 732
    .restart local p0
    :cond_6
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 733
    .local v0, elems:Ljava/util/Enumeration;
    const-string v2, ""

    .line 734
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x1

    .line 735
    .end local p0
    .local v1, first:Z
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 737
    if-eqz v1, :cond_30

    .line 738
    const/4 v1, 0x0

    .line 741
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 740
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_44
    move-object v3, v2

    .line 743
    goto :goto_5
.end method

.method getRequiredFound()Z
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    .line 719
    const/4 v0, 0x1

    .line 720
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method getType()I
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    return v0
.end method

.method hasRequired()Z
    .registers 2

    .prologue
    .line 681
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    return v0
.end method

.method isOrdered()Z
    .registers 2

    .prologue
    .line 775
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    return v0
.end method

.method public setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 644
    if-eqz p1, :cond_9

    .line 646
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 648
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setElemDef(Lorg/apache/xalan/processor/XSLTElementDef;)V

    .line 650
    :cond_9
    return-void
.end method

.method setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V
    .registers 2
    .parameter "defs"

    .prologue
    .line 433
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    .line 434
    return-void
.end method

.method setLastOrder(I)V
    .registers 2
    .parameter "order"

    .prologue
    .line 816
    iput p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    .line 817
    return-void
.end method

.method setRequiredFound(Ljava/lang/String;Z)V
    .registers 4
    .parameter "elem"
    .parameter "found"

    .prologue
    .line 707
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 708
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_d
    return-void
.end method

.method setType(I)V
    .registers 2
    .parameter "t"

    .prologue
    .line 362
    iput p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    .line 363
    return-void
.end method

.class public Lorg/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kxml2/io/KXmlParser$ContentSource;,
        Lorg/kxml2/io/KXmlParser$ValueContext;
    }
.end annotation


# static fields
.field private static final ANY:[C = null

.field private static final ATTLISTDECL:I = 0xd

.field private static final COMMENT_DOUBLE_DASH:[C = null

.field private static final DEFAULT_ENTITIES:Ljava/util/Map; = null
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

.field private static final DOUBLE_QUOTE:[C = null

.field private static final ELEMENTDECL:I = 0xb

.field private static final EMPTY:[C = null

.field private static final END_CDATA:[C = null

.field private static final END_COMMENT:[C = null

.field private static final END_PROCESSING_INSTRUCTION:[C = null

.field private static final ENTITYDECL:I = 0xc

.field private static final FEATURE_RELAXED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#relaxed"

.field private static final FIXED:[C = null

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final IMPLIED:[C = null

.field private static final NDATA:[C = null

.field private static final NOTATION:[C = null

.field private static final NOTATIONDECL:I = 0xe

.field private static final PARAMETER_ENTITY_REF:I = 0xf

.field private static final PUBLIC:[C = null

.field private static final REQUIRED:[C = null

.field private static final SINGLE_QUOTE:[C = null

.field private static final START_ATTLIST:[C = null

.field private static final START_CDATA:[C = null

.field private static final START_COMMENT:[C = null

.field private static final START_DOCTYPE:[C = null

.field private static final START_ELEMENT:[C = null

.field private static final START_ENTITY:[C = null

.field private static final START_NOTATION:[C = null

.field private static final START_PROCESSING_INSTRUCTION:[C = null

.field private static final SYSTEM:[C = null

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECLARATION:I = 0x3e6


# instance fields
.field private final PROPERTY_LOCATION:Ljava/lang/String;

.field private final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String;

.field private final PROPERTY_XMLDECL_VERSION:Ljava/lang/String;

.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private buffer:[C

.field private bufferCapture:Ljava/lang/StringBuilder;

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private defaultAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private degenerated:Z

.field private depth:I

.field private documentEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private keepNamespaceAttributes:Z

.field private limit:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private position:I

.field private prefix:Ljava/lang/String;

.field private processDocDecl:Z

.field private processNsp:Z

.field private publicId:Ljava/lang/String;

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private rootElementName:Ljava/lang/String;

.field private standalone:Ljava/lang/Boolean;

.field public final stringPool:Llibcore/internal/StringPool;

.field private systemId:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x9

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    .line 50
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_ea

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    .line 63
    new-array v0, v5, [C

    fill-array-data v0, :array_f2

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    .line 64
    new-array v0, v4, [C

    fill-array-data v0, :array_fa

    sput-object v0, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    .line 65
    new-array v0, v3, [C

    fill-array-data v0, :array_100

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    .line 66
    new-array v0, v5, [C

    fill-array-data v0, :array_10e

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    .line 67
    new-array v0, v4, [C

    fill-array-data v0, :array_116

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    .line 68
    new-array v0, v4, [C

    fill-array-data v0, :array_11c

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    .line 69
    new-array v0, v3, [C

    fill-array-data v0, :array_122

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_130

    sput-object v0, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_13a

    sput-object v0, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    .line 72
    new-array v0, v3, [C

    fill-array-data v0, :array_144

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    .line 73
    new-array v0, v3, [C

    fill-array-data v0, :array_152

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    .line 74
    new-array v0, v7, [C

    fill-array-data v0, :array_160

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_16c

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    .line 76
    new-array v0, v6, [C

    fill-array-data v0, :array_17a

    sput-object v0, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    .line 77
    new-array v0, v5, [C

    fill-array-data v0, :array_184

    sput-object v0, Lorg/kxml2/io/KXmlParser;->ANY:[C

    .line 78
    new-array v0, v6, [C

    fill-array-data v0, :array_18c

    sput-object v0, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    .line 79
    new-array v0, v7, [C

    fill-array-data v0, :array_196

    sput-object v0, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    .line 80
    new-array v0, v7, [C

    fill-array-data v0, :array_1a2

    sput-object v0, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_1ae

    sput-object v0, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    .line 82
    new-array v0, v6, [C

    fill-array-data v0, :array_1ba

    sput-object v0, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    .line 650
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput-char v2, v0, v1

    sput-object v0, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    .line 651
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput-char v2, v0, v1

    sput-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    return-void

    .line 62
    nop

    :array_ea
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x2dt 0x0t
        0x2dt 0x0t
    .end array-data

    .line 63
    :array_f2
    .array-data 0x2
        0x2dt 0x0t
        0x2dt 0x0t
        0x3et 0x0t
    .end array-data

    .line 64
    nop

    :array_fa
    .array-data 0x2
        0x2dt 0x0t
        0x2dt 0x0t
    .end array-data

    .line 65
    :array_100
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x5bt 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x41t 0x0t
        0x5bt 0x0t
    .end array-data

    .line 66
    nop

    :array_10e
    .array-data 0x2
        0x5dt 0x0t
        0x5dt 0x0t
        0x3et 0x0t
    .end array-data

    .line 67
    nop

    :array_116
    .array-data 0x2
        0x3ct 0x0t
        0x3ft 0x0t
    .end array-data

    .line 68
    :array_11c
    .array-data 0x2
        0x3ft 0x0t
        0x3et 0x0t
    .end array-data

    .line 69
    :array_122
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x44t 0x0t
        0x4ft 0x0t
        0x43t 0x0t
        0x54t 0x0t
        0x59t 0x0t
        0x50t 0x0t
        0x45t 0x0t
    .end array-data

    .line 70
    nop

    :array_130
    .array-data 0x2
        0x53t 0x0t
        0x59t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x45t 0x0t
        0x4dt 0x0t
    .end array-data

    .line 71
    :array_13a
    .array-data 0x2
        0x50t 0x0t
        0x55t 0x0t
        0x42t 0x0t
        0x4ct 0x0t
        0x49t 0x0t
        0x43t 0x0t
    .end array-data

    .line 72
    :array_144
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x45t 0x0t
        0x4ct 0x0t
        0x45t 0x0t
        0x4dt 0x0t
        0x45t 0x0t
        0x4et 0x0t
        0x54t 0x0t
    .end array-data

    .line 73
    nop

    :array_152
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x54t 0x0t
        0x4ct 0x0t
        0x49t 0x0t
        0x53t 0x0t
        0x54t 0x0t
    .end array-data

    .line 74
    nop

    :array_160
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x45t 0x0t
        0x4et 0x0t
        0x54t 0x0t
        0x49t 0x0t
        0x54t 0x0t
        0x59t 0x0t
    .end array-data

    .line 75
    :array_16c
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x54t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x49t 0x0t
        0x4ft 0x0t
        0x4et 0x0t
    .end array-data

    .line 76
    :array_17a
    .array-data 0x2
        0x45t 0x0t
        0x4dt 0x0t
        0x50t 0x0t
        0x54t 0x0t
        0x59t 0x0t
    .end array-data

    .line 77
    nop

    :array_184
    .array-data 0x2
        0x41t 0x0t
        0x4et 0x0t
        0x59t 0x0t
    .end array-data

    .line 78
    nop

    :array_18c
    .array-data 0x2
        0x4et 0x0t
        0x44t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x41t 0x0t
    .end array-data

    .line 79
    nop

    :array_196
    .array-data 0x2
        0x4et 0x0t
        0x4ft 0x0t
        0x54t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x49t 0x0t
        0x4ft 0x0t
        0x4et 0x0t
    .end array-data

    .line 80
    :array_1a2
    .array-data 0x2
        0x52t 0x0t
        0x45t 0x0t
        0x51t 0x0t
        0x55t 0x0t
        0x49t 0x0t
        0x52t 0x0t
        0x45t 0x0t
        0x44t 0x0t
    .end array-data

    .line 81
    :array_1ae
    .array-data 0x2
        0x49t 0x0t
        0x4dt 0x0t
        0x50t 0x0t
        0x4ct 0x0t
        0x49t 0x0t
        0x45t 0x0t
        0x44t 0x0t
    .end array-data

    .line 82
    nop

    :array_1ba
    .array-data 0x2
        0x46t 0x0t
        0x49t 0x0t
        0x58t 0x0t
        0x45t 0x0t
        0x44t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->PROPERTY_XMLDECL_VERSION:Ljava/lang/String;

    .line 43
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String;

    .line 45
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->PROPERTY_LOCATION:Ljava/lang/String;

    .line 133
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 142
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 143
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 144
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 173
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 179
    new-instance v0, Llibcore/internal/StringPool;

    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    .line 2124
    return-void
.end method

.method private adjustNsp()Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, any:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_93

    .line 195
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 196
    .local v1, attrName:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 199
    .local v4, cut:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2e

    .line 200
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, prefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    :goto_22
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    .line 210
    const/4 v0, 0x1

    .line 194
    .end local v7           #prefix:Ljava/lang/String;
    :cond_2b
    :goto_2b
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 202
    :cond_2e
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 203
    move-object v7, v1

    .line 204
    .restart local v7       #prefix:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_22

    .line 212
    :cond_39
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 214
    .local v6, j:I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 215
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 216
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 218
    if-eqz v1, :cond_72

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 219
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 222
    :cond_72
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    if-eqz v8, :cond_7e

    .line 225
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v9, "http://www.w3.org/2000/xmlns/"

    aput-object v9, v8, v5

    .line 226
    const/4 v0, 0x1

    goto :goto_2b

    .line 228
    :cond_7e
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/lit8 v5, v5, -0x4

    goto :goto_2b

    .line 240
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    .end local v6           #j:I
    .end local v7           #prefix:Ljava/lang/String;
    :cond_93
    if-eqz v0, :cond_122

    .line 241
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    const/4 v9, 0x4

    sub-int v5, v8, v9

    :goto_9c
    if-ltz v5, :cond_122

    .line 243
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 244
    .restart local v1       #attrName:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 246
    .restart local v4       #cut:I
    if-nez v4, :cond_d3

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_d3

    .line 247
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal attribute name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 249
    :cond_d3
    const/4 v8, -0x1

    if-eq v4, v8, :cond_11e

    .line 250
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, attrPrefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {p0, v3}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, attrNs:Ljava/lang/String;
    if-nez v2, :cond_10e

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_10e

    .line 257
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 261
    :cond_10e
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 262
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 263
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 241
    .end local v2           #attrNs:Ljava/lang/String;
    .end local v3           #attrPrefix:Ljava/lang/String;
    :cond_11e
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_9c

    .line 268
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    :cond_122
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 270
    .restart local v4       #cut:I
    if-nez v4, :cond_144

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 274
    :cond_144
    const/4 v8, -0x1

    if-eq v4, v8, :cond_15a

    .line 275
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 276
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 279
    :cond_15a
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 281
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_186

    .line 282
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_182

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 285
    :cond_182
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 288
    :cond_186
    return v0
.end method

.method private checkRelaxed(Ljava/lang/String;)V
    .registers 4
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 301
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v0, :cond_b

    .line 302
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 304
    :cond_b
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 307
    :cond_24
    return-void
.end method

.method private defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "elementName"
    .parameter "attributeName"
    .parameter "value"

    .prologue
    .line 867
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-nez v1, :cond_b

    .line 868
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    .line 870
    :cond_b
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 871
    .local v0, elementAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1f

    .line 872
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #elementAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 873
    .restart local v0       #elementAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :cond_1f
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    return-void
.end method

.method private ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .parameter "arr"
    .parameter "required"

    .prologue
    const/4 v2, 0x0

    .line 292
    array-length v1, p1

    if-lt v1, p2, :cond_6

    move-object v1, p1

    .line 297
    :goto_5
    return-object v1

    .line 295
    :cond_6
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 296
    .local v0, bigger:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 297
    goto :goto_5
.end method

.method private fillBuffer(I)Z
    .registers 11
    .parameter "minimum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1463
    :cond_2
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    if-eqz v2, :cond_21

    .line 1464
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-ge v2, v3, :cond_15

    .line 1465
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unbalanced entity!"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1467
    :cond_15
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->popContentSource()V

    .line 1468
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v2, v3

    if-lt v2, p1, :cond_2

    move v2, v8

    .line 1502
    :goto_20
    return v2

    .line 1474
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_40

    .line 1475
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_39

    .line 1476
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1477
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1474
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1479
    :cond_39
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    goto :goto_36

    .line 1483
    :cond_40
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4d

    .line 1484
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v2, v3, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1487
    :cond_4d
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eq v2, v3, :cond_85

    .line 1488
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1489
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-static {v2, v3, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1494
    :goto_65
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1496
    :cond_67
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    array-length v5, v5

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, total:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_88

    .line 1497
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1498
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v2, p1, :cond_67

    move v2, v8

    .line 1499
    goto :goto_20

    .line 1491
    .end local v1           #total:I
    :cond_85
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto :goto_65

    .restart local v1       #total:I
    :cond_88
    move v2, v7

    .line 1502
    goto :goto_20
.end method

.method private next(Z)I
    .registers 14
    .parameter "justOneToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 318
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v5, :cond_11

    .line 319
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "setInput() must be called first."

    invoke-direct {v5, v6, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 322
    :cond_11
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v5, v6, :cond_1a

    .line 323
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    sub-int/2addr v5, v10

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 329
    :cond_1a
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v5, :cond_25

    .line 330
    iput-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 331
    iput v6, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 332
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 445
    :goto_24
    return v5

    .line 335
    :cond_25
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-eqz v5, :cond_3a

    .line 336
    if-eqz p1, :cond_38

    .line 337
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 338
    const/16 v5, 0x9

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 339
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 340
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_24

    .line 342
    :cond_38
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 346
    :cond_3a
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v5

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 348
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/16 v6, 0x3e6

    if-ne v5, v6, :cond_4f

    .line 349
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readXmlDeclaration()V

    .line 350
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v5

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 353
    :cond_4f
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 354
    iput-boolean v10, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 355
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 356
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 357
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 358
    const/4 v5, -0x1

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 359
    if-nez p1, :cond_6c

    move v4, v10

    .line 362
    .local v4, throwOnResolveFailure:Z
    :goto_5f
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    packed-switch v5, :pswitch_data_118

    .line 422
    :pswitch_64
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Unexpected token"

    invoke-direct {v5, v6, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .end local v4           #throwOnResolveFailure:Z
    :cond_6c
    move v4, v9

    .line 359
    goto :goto_5f

    .line 369
    .restart local v4       #throwOnResolveFailure:Z
    :pswitch_6e
    invoke-direct {p0, v9, v4}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    .line 370
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_24

    .line 372
    :pswitch_74
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEndTag()V

    .line 373
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_24

    .line 375
    :pswitch_7a
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_24

    .line 382
    :pswitch_7d
    if-eqz p1, :cond_a9

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v1, entityTextBuilder:Ljava/lang/StringBuilder;
    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v1, v10, v4, v5}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 425
    .end local v1           #entityTextBuilder:Ljava/lang/StringBuilder;
    :cond_8f
    :goto_8f
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v5, :cond_ef

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_a1

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-eq v5, v11, :cond_a1

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_ef

    .line 426
    :cond_a1
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Unexpected token"

    invoke-direct {v5, v6, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 390
    :cond_a9
    :pswitch_a9
    const/16 v5, 0x3c

    if-nez p1, :cond_c2

    move v6, v10

    :goto_ae
    sget-object v7, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v5, v6, v4, v7}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 391
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v5, :cond_8f

    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v5, :cond_8f

    .line 392
    const/4 v5, 0x7

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_8f

    :cond_c2
    move v6, v9

    .line 390
    goto :goto_ae

    .line 396
    :pswitch_c4
    sget-object v5, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 397
    sget-object v5, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    invoke-direct {p0, v5, v10}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_8f

    .line 405
    :pswitch_d2
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, commentText:Ljava/lang/String;
    if-eqz p1, :cond_8f

    .line 407
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_8f

    .line 411
    .end local v0           #commentText:Ljava/lang/String;
    :pswitch_db
    sget-object v5, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 412
    sget-object v5, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v5, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, processingInstruction:Ljava/lang/String;
    if-eqz p1, :cond_8f

    .line 414
    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_8f

    .line 418
    .end local v3           #processingInstruction:Ljava/lang/String;
    :pswitch_eb
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readDoctype(Z)V

    goto :goto_8f

    .line 429
    :cond_ef
    if-eqz p1, :cond_f5

    .line 430
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_24

    .line 433
    :cond_f5
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_fc

    .line 434
    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 442
    :cond_fc
    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v2

    .line 443
    .local v2, peek:I
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v5, :cond_114

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_114

    if-ge v2, v11, :cond_114

    .line 444
    iput v11, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 445
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_24

    .line 448
    :cond_114
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_5f

    .line 362
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_6e
        :pswitch_74
        :pswitch_a9
        :pswitch_c4
        :pswitch_7d
        :pswitch_64
        :pswitch_db
        :pswitch_d2
        :pswitch_eb
    .end packed-switch
.end method

.method private parseStartTag(ZZ)V
    .registers 22
    .parameter "xmldecl"
    .parameter "throwOnResolveFailure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1042
    if-nez p1, :cond_a

    .line 1043
    const/16 v14, 0x3c

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 1045
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1046
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 1049
    :cond_19
    :goto_19
    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1051
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v15, v0

    if-lt v14, v15, :cond_3b

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v14

    if-nez v14, :cond_3b

    .line 1052
    const-string v14, "Unexpected EOF"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1163
    .end local p1
    :goto_3a
    return-void

    .line 1056
    .restart local p1
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v15, v0

    aget-char v7, v14, v15

    .line 1058
    .local v7, c:I
    if-eqz p1, :cond_62

    .line 1059
    const/16 v14, 0x3f

    if-ne v7, v14, :cond_1ba

    .line 1060
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1061
    const/16 v14, 0x3e

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    goto :goto_3a

    .line 1065
    :cond_62
    const/16 v14, 0x2f

    if-ne v7, v14, :cond_1a8

    .line 1066
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 1067
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1068
    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1069
    const/16 v14, 0x3e

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 1123
    :goto_83
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->depth:I

    move v14, v0

    add-int/lit8 v15, v14, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->depth:I

    mul-int/lit8 v13, v14, 0x4

    .line 1124
    .local v13, sp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v13, 0x4

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v13, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 1127
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->depth:I

    move v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    move-object v15, v0

    array-length v15, v15

    if-lt v14, v15, :cond_ec

    .line 1128
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->depth:I

    move v14, v0

    add-int/lit8 v14, v14, 0x4

    new-array v6, v14, [I

    .line 1129
    .local v6, bigger:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v14

    move v1, v15

    move-object v2, v6

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 1133
    .end local v6           #bigger:[I
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->depth:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->depth:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    aget v16, v16, v17

    aput v16, v14, v15

    .line 1135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    move v14, v0

    if-eqz v14, :cond_2fb

    .line 1136
    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->adjustNsp()Z

    .line 1142
    :goto_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    move-object v14, v0

    if-eqz v14, :cond_304

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 1144
    .local v9, elementDefaultAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_304

    .line 1145
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local p1
    .local v12, i$:Ljava/util/Iterator;
    :cond_135
    :goto_135
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_304

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1146
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_135

    .line 1150
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    move v14, v0

    add-int/lit8 v15, v14, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v11, v14, 0x4

    .line 1151
    .local v11, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x4

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    const-string v15, ""

    aput-object v15, v14, v11

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x1

    const/16 v16, 0x0

    aput-object v16, v14, v15

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v14, v15

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x3

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v14, v15

    goto :goto_135

    .line 1071
    .end local v9           #elementDefaultAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #sp:I
    .restart local p1
    :cond_1a8
    const/16 v14, 0x3e

    if-ne v7, v14, :cond_1ba

    .line 1072
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->position:I

    goto/16 :goto_83

    .line 1077
    :cond_1ba
    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v5

    .line 1079
    .local v5, attrName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    move v14, v0

    add-int/lit8 v15, v14, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v11, v14, 0x4

    .line 1080
    .restart local v11       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x4

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    const-string v15, ""

    aput-object v15, v14, v11

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x1

    const/16 v16, 0x0

    aput-object v16, v14, v15

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x2

    aput-object v5, v14, v15

    .line 1085
    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1086
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v15, v0

    if-lt v14, v15, :cond_220

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v14

    if-nez v14, :cond_220

    .line 1087
    const-string v14, "Unexpected EOF"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 1091
    :cond_220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v15, v0

    aget-char v14, v14, v15

    const/16 v15, 0x3d

    if-ne v14, v15, :cond_2c5

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1094
    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1095
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v15, v0

    if-lt v14, v15, :cond_25f

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v14

    if-nez v14, :cond_25f

    .line 1096
    const-string v14, "Unexpected EOF"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 1099
    :cond_25f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v15, v0

    aget-char v8, v14, v15

    .line 1101
    .local v8, delimiter:C
    const/16 v14, 0x27

    if-eq v8, v14, :cond_273

    const/16 v14, 0x22

    if-ne v8, v14, :cond_2ab

    .line 1102
    :cond_273
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1109
    :goto_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x3

    const/16 v16, 0x1

    sget-object v17, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v16

    move/from16 v3, p2

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 1112
    const/16 v14, 0x20

    if-eq v8, v14, :cond_19

    .line 1113
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->position:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->position:I

    goto/16 :goto_19

    .line 1103
    :cond_2ab
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    move v14, v0

    if-eqz v14, :cond_2b5

    .line 1104
    const/16 v8, 0x20

    goto :goto_27f

    .line 1106
    :cond_2b5
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "attr value delimiter missing!"

    const/16 v16, 0x0

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v14

    .line 1115
    .end local v8           #delimiter:C
    :cond_2c5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    move v14, v0

    if-eqz v14, :cond_2d7

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x3

    aput-object v5, v14, v15

    goto/16 :goto_19

    .line 1118
    :cond_2d7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Attr.value missing f. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x3

    aput-object v5, v14, v15

    goto/16 :goto_19

    .line 1138
    .end local v5           #attrName:Ljava/lang/String;
    .end local v11           #i:I
    .restart local v13       #sp:I
    :cond_2fb
    const-string v14, ""

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    goto/16 :goto_114

    .line 1160
    .end local p1
    :cond_304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    move-object v15, v0

    aput-object v15, v14, v13

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v13, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    goto/16 :goto_3a
.end method

.method private peekCharacter()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1450
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1451
    :cond_d
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    .line 1453
    :goto_13
    return v0

    :cond_14
    const/4 v0, -0x1

    goto :goto_13
.end method

.method private peekType(Z)I
    .registers 8
    .parameter "inDeclaration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 979
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v3

    .line 1033
    :goto_11
    return v0

    .line 983
    :cond_12
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_f2

    move v0, v2

    .line 1033
    goto :goto_11

    :sswitch_1d
    move v0, v4

    .line 985
    goto :goto_11

    .line 987
    :sswitch_1f
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_35

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 988
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Dangling <"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 991
    :cond_35
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_100

    .line 1028
    const/4 v0, 0x2

    goto :goto_11

    .line 993
    :sswitch_42
    const/4 v0, 0x3

    goto :goto_11

    .line 996
    :sswitch_44
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_52

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    :cond_52
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_aa

    :cond_6a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_82

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_aa

    :cond_82
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_9a

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_aa

    :cond_9a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x5

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_aa

    .line 1001
    const/16 v0, 0x3e6

    goto/16 :goto_11

    .line 1003
    :cond_aa
    const/16 v0, 0x8

    goto/16 :goto_11

    .line 1006
    :sswitch_ae
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_10e

    .line 1026
    :goto_b9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected <!"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1008
    :sswitch_c1
    const/16 v0, 0xa

    goto/16 :goto_11

    .line 1010
    :sswitch_c5
    const/4 v0, 0x5

    goto/16 :goto_11

    .line 1012
    :sswitch_c8
    const/16 v0, 0x9

    goto/16 :goto_11

    .line 1014
    :sswitch_cc
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_128

    :pswitch_d7
    goto :goto_b9

    .line 1016
    :pswitch_d8
    const/16 v0, 0xb

    goto/16 :goto_11

    .line 1018
    :pswitch_dc
    const/16 v0, 0xc

    goto/16 :goto_11

    .line 1022
    :sswitch_e0
    const/16 v0, 0xd

    goto/16 :goto_11

    .line 1024
    :sswitch_e4
    const/16 v0, 0xe

    goto/16 :goto_11

    .line 1031
    :sswitch_e8
    if-eqz p1, :cond_ee

    const/16 v0, 0xf

    goto/16 :goto_11

    :cond_ee
    move v0, v2

    goto/16 :goto_11

    .line 983
    nop

    :sswitch_data_f2
    .sparse-switch
        0x25 -> :sswitch_e8
        0x26 -> :sswitch_1d
        0x3c -> :sswitch_1f
    .end sparse-switch

    .line 991
    :sswitch_data_100
    .sparse-switch
        0x21 -> :sswitch_ae
        0x2f -> :sswitch_42
        0x3f -> :sswitch_44
    .end sparse-switch

    .line 1006
    :sswitch_data_10e
    .sparse-switch
        0x2d -> :sswitch_c8
        0x41 -> :sswitch_e0
        0x44 -> :sswitch_c1
        0x45 -> :sswitch_cc
        0x4e -> :sswitch_e4
        0x5b -> :sswitch_c5
    .end sparse-switch

    .line 1014
    :pswitch_data_128
    .packed-switch 0x4c
        :pswitch_d8
        :pswitch_d7
        :pswitch_dc
    .end packed-switch
.end method

.method private popContentSource()V
    .registers 2

    .prologue
    .line 2152
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$000(Lorg/kxml2/io/KXmlParser$ContentSource;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 2153
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->position:I
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$100(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 2154
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$200(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 2155
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$300(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    .line 2156
    return-void
.end method

.method private pushContentSource([C)V
    .registers 7
    .parameter "newBuffer"

    .prologue
    .line 2142
    new-instance v0, Lorg/kxml2/io/KXmlParser$ContentSource;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser$ContentSource;-><init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    .line 2143
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 2144
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 2145
    array-length v0, p1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 2146
    return-void
.end method

.method private read(C)V
    .registers 5
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1424
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 1425
    .local v0, c:I
    if-eq v0, p1, :cond_2d

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' actual: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1428
    :cond_2d
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1429
    return-void
.end method

.method private read([C)V
    .registers 8
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1432
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v2, p1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v1, v2, :cond_31

    array-length v1, p1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but was EOF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1447
    :goto_30
    return-void

    .line 1439
    :cond_31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_32
    array-length v1, p1

    if-ge v0, v1, :cond_78

    .line 1440
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_75

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1439
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1446
    :cond_78
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_30
.end method

.method private readAttributeListDeclaration()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 793
    sget-object v4, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 794
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 795
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, elementName:Ljava/lang/String;
    :cond_e
    :goto_e
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 799
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 800
    .local v1, c:I
    const/16 v4, 0x3e

    if-ne v1, v4, :cond_20

    .line 801
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 802
    return-void

    .line 806
    :cond_20
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, attributeName:Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 810
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v4, v5, :cond_3e

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 811
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute list"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 813
    :cond_3e
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v4, v4, v5

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    const/4 v6, 0x0

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_61

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    aget-char v5, v5, v7

    if-ne v4, v5, :cond_61

    .line 814
    sget-object v4, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 815
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 817
    :cond_61
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 818
    const/16 v4, 0x28

    if-ne v1, v4, :cond_de

    .line 819
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 821
    :goto_6f
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 822
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 823
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 824
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 825
    const/16 v4, 0x29

    if-ne v1, v4, :cond_cb

    .line 826
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 839
    :goto_86
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 840
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 841
    const/16 v4, 0x23

    if-ne v1, v4, :cond_ab

    .line 842
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 843
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 844
    const/16 v4, 0x52

    if-ne v1, v4, :cond_e2

    .line 845
    sget-object v4, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 853
    :goto_a4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 854
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 856
    :cond_ab
    const/16 v4, 0x22

    if-eq v1, v4, :cond_b3

    const/16 v4, 0x27

    if-ne v1, v4, :cond_e

    .line 857
    :cond_b3
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 859
    int-to-char v4, v1

    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v7, v7, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, value:Ljava/lang/String;
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 861
    invoke-direct {p0, v2, v0, v3}, Lorg/kxml2/io/KXmlParser;->defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 828
    .end local v3           #value:Ljava/lang/String;
    :cond_cb
    const/16 v4, 0x7c

    if-ne v1, v4, :cond_d6

    .line 829
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_6f

    .line 831
    :cond_d6
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute type"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 835
    :cond_de
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    goto :goto_86

    .line 846
    :cond_e2
    const/16 v4, 0x49

    if-ne v1, v4, :cond_ec

    .line 847
    sget-object v4, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_a4

    .line 848
    :cond_ec
    const/16 v4, 0x46

    if-ne v1, v4, :cond_f6

    .line 849
    sget-object v4, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_a4

    .line 851
    :cond_f6
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute type"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readComment(Z)Ljava/lang/String;
    .registers 6
    .parameter "returnText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 556
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 558
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v1, :cond_10

    .line 559
    sget-object v1, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v1

    .line 567
    :goto_f
    return-object v1

    .line 562
    :cond_10
    sget-object v1, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, commentText:Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_27

    .line 564
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Comments may not contain --"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 566
    :cond_27
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    move-object v1, v0

    .line 567
    goto :goto_f
.end method

.method private readContentSpec()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x0

    .line 750
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 751
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 752
    .local v0, c:I
    if-ne v0, v4, :cond_37

    .line 753
    const/4 v1, 0x0

    .line 755
    .local v1, depth:I
    :cond_d
    if-ne v0, v4, :cond_30

    .line 756
    add-int/lit8 v1, v1, 0x1

    .line 760
    :cond_11
    :goto_11
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 761
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 762
    if-gtz v1, :cond_d

    .line 764
    const/16 v2, 0x2a

    if-eq v0, v2, :cond_29

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_29

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_2f

    .line 765
    :cond_29
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 774
    .end local v1           #depth:I
    :cond_2f
    :goto_2f
    return-void

    .line 757
    .restart local v1       #depth:I
    :cond_30
    const/16 v2, 0x29

    if-ne v0, v2, :cond_11

    .line 758
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 767
    .end local v1           #depth:I
    :cond_37
    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_43

    .line 768
    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_2f

    .line 769
    :cond_43
    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_4f

    .line 770
    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_2f

    .line 772
    :cond_4f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected element content spec"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readDoctype(Z)V
    .registers 9
    .parameter "saveDtdText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 575
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, startPosition:I
    if-eqz p1, :cond_13

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 580
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 583
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 584
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    .line 585
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    .line 586
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 587
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2f

    .line 588
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readInternalSubset()V

    .line 590
    :cond_2f
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_52

    .line 592
    if-eqz p1, :cond_4c

    .line 593
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v1, v2, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 594
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 595
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 596
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 600
    :cond_4c
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 601
    return-void

    .line 592
    :catchall_52
    move-exception v1

    if-eqz p1, :cond_6d

    .line 593
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 594
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 595
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 596
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    :cond_6d
    throw v1
.end method

.method private readElementDeclaration()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 724
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 725
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 726
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 727
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readContentSpec()V

    .line 728
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 729
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 730
    return-void
.end method

.method private readEndTag()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 951
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 952
    const/16 v1, 0x2f

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 953
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 954
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 955
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 957
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x4

    .line 959
    .local v0, sp:I
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v1, :cond_45

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read end tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no tags open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 961
    const/16 v1, 0x9

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 973
    :cond_44
    :goto_44
    return-void

    .line 965
    :cond_45
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 966
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 967
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 968
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    goto :goto_44

    .line 969
    :cond_6a
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v1, :cond_44

    .line 970
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V
    .registers 15
    .parameter "out"
    .parameter "isEntityToken"
    .parameter "throwOnResolveFailure"
    .parameter "valueContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 1174
    .local v6, start:I
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v7, v7, v8

    const/16 v8, 0x26

    if-eq v7, v8, :cond_18

    .line 1175
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1178
    :cond_18
    const/16 v7, 0x26

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    :goto_1d
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 1183
    .local v0, c:I
    const/16 v7, 0x3b

    if-ne v0, v7, :cond_6a

    .line 1184
    const/16 v7, 0x3b

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1185
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1207
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, code:Ljava/lang/String;
    if-eqz p2, :cond_40

    .line 1210
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1213
    :cond_40
    const-string v7, "#"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 1215
    :try_start_48
    const-string v7, "#x"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_aa

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    move v0, v7

    .line 1218
    :goto_5c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1220
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_69} :catch_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_69} :catch_d0

    .line 1270
    .end local v1           #code:Ljava/lang/String;
    :cond_69
    :goto_69
    return-void

    .line 1188
    :cond_6a
    const/16 v7, 0x80

    if-ge v0, v7, :cond_92

    const/16 v7, 0x30

    if-lt v0, v7, :cond_76

    const/16 v7, 0x39

    if-le v0, v7, :cond_92

    :cond_76
    const/16 v7, 0x61

    if-lt v0, v7, :cond_7e

    const/16 v7, 0x7a

    if-le v0, v7, :cond_92

    :cond_7e
    const/16 v7, 0x41

    if-lt v0, v7, :cond_86

    const/16 v7, 0x5a

    if-le v0, v7, :cond_92

    :cond_86
    const/16 v7, 0x5f

    if-eq v0, v7, :cond_92

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_92

    const/16 v7, 0x23

    if-ne v0, v7, :cond_9d

    .line 1195
    :cond_92
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1196
    int-to-char v7, v0

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 1198
    :cond_9d
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v7, :cond_69

    .line 1203
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "unterminated entity ref"

    const/4 v9, 0x0

    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 1215
    .restart local v1       #code:Ljava/lang/String;
    :cond_aa
    const/4 v7, 0x1

    :try_start_ab
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_ab .. :try_end_b2} :catch_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ab .. :try_end_b2} :catch_d0

    move-result v7

    move v0, v7

    goto :goto_5c

    .line 1222
    :catch_b5
    move-exception v7

    move-object v4, v7

    .line 1223
    .local v4, notANumber:Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid character reference: &"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1224
    .end local v4           #notANumber:Ljava/lang/NumberFormatException;
    :catch_d0
    move-exception v7

    move-object v3, v7

    .line 1225
    .local v3, invalidCodePoint:Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid character reference: &"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1229
    .end local v3           #invalidCodePoint:Ljava/lang/IllegalArgumentException;
    :cond_eb
    sget-object v7, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v7, :cond_69

    .line 1234
    sget-object v7, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1235
    .local v2, defaultEntity:Ljava/lang/String;
    if-eqz v2, :cond_108

    .line 1236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1237
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1238
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_69

    .line 1243
    :cond_108
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-eqz v7, :cond_12e

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .local v5, resolved:[C
    if-eqz v5, :cond_12e

    .line 1244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1245
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1246
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v7, :cond_129

    .line 1247
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->pushContentSource([C)V

    goto/16 :goto_69

    .line 1249
    :cond_129
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_69

    .line 1260
    .end local v5           #resolved:[C
    :cond_12e
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    if-eqz v7, :cond_13b

    .line 1261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_69

    .line 1266
    :cond_13b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1267
    if-eqz p3, :cond_69

    .line 1268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unresolved: &"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_69
.end method

.method private readEntityDeclaration()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 892
    sget-object v4, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 893
    const/4 v1, 0x1

    .line 895
    .local v1, generalEntity:Z
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 896
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_1d

    .line 897
    const/4 v1, 0x0

    .line 898
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 899
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 902
    :cond_1d
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 905
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v3

    .line 907
    .local v3, quote:I
    const/16 v4, 0x22

    if-eq v3, v4, :cond_30

    const/16 v4, 0x27

    if-ne v3, v4, :cond_66

    .line 908
    :cond_30
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 909
    int-to-char v4, v3

    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v7, v6, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, entityValue:Ljava/lang/String;
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 927
    :cond_43
    :goto_43
    if-eqz v1, :cond_5d

    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v4, :cond_5d

    .line 928
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v4, :cond_54

    .line 929
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 931
    :cond_54
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_5d
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 935
    const/16 v4, 0x3e

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 936
    return-void

    .line 911
    .end local v0           #entityValue:Ljava/lang/String;
    :cond_66
    invoke-direct {p0, v7, v6}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 916
    const-string v0, ""

    .line 917
    .restart local v0       #entityValue:Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 918
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_43

    .line 919
    sget-object v4, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 920
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 921
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    goto :goto_43

    .line 924
    .end local v0           #entityValue:Ljava/lang/String;
    :cond_87
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Expected entity value or external ID"

    const/4 v6, 0x0

    invoke-direct {v4, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readExternalId(ZZ)Z
    .registers 8
    .parameter "requireSystemName"
    .parameter "assignFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 616
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 617
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 619
    .local v0, c:I
    const/16 v2, 0x53

    if-ne v0, v2, :cond_25

    .line 620
    sget-object v2, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 633
    :goto_12
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 635
    if-nez p1, :cond_40

    .line 636
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 637
    .local v1, delimiter:I
    const/16 v2, 0x22

    if-eq v1, v2, :cond_40

    const/16 v2, 0x27

    if-eq v1, v2, :cond_40

    move v2, v3

    .line 647
    .end local v1           #delimiter:I
    :goto_24
    return v2

    .line 621
    :cond_25
    const/16 v2, 0x50

    if-ne v0, v2, :cond_3e

    .line 622
    sget-object v2, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 623
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 624
    if-eqz p2, :cond_3a

    .line 625
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    goto :goto_12

    .line 627
    :cond_3a
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    goto :goto_12

    :cond_3e
    move v2, v4

    .line 630
    goto :goto_24

    .line 642
    :cond_40
    if-eqz p2, :cond_4a

    .line 643
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    :goto_48
    move v2, v3

    .line 647
    goto :goto_24

    .line 645
    :cond_4a
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    goto :goto_48
.end method

.method private readInternalSubset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 671
    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 674
    :goto_7
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 675
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_19

    .line 676
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 677
    return-void

    .line 680
    :cond_19
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    .line 681
    .local v0, declarationType:I
    packed-switch v0, :pswitch_data_50

    .line 712
    :pswitch_21
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unexpected token"

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 683
    :pswitch_29
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readElementDeclaration()V

    goto :goto_7

    .line 687
    :pswitch_2d
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readAttributeListDeclaration()V

    goto :goto_7

    .line 691
    :pswitch_31
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEntityDeclaration()V

    goto :goto_7

    .line 695
    :pswitch_35
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readNotationDeclaration()V

    goto :goto_7

    .line 699
    :pswitch_39
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 700
    sget-object v1, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v1, v3}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    goto :goto_7

    .line 704
    :pswitch_44
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    goto :goto_7

    .line 708
    :pswitch_48
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Parameter entity references are not supported"

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 681
    :pswitch_data_50
    .packed-switch 0x8
        :pswitch_39
        :pswitch_44
        :pswitch_21
        :pswitch_29
        :pswitch_31
        :pswitch_2d
        :pswitch_35
        :pswitch_48
    .end packed-switch
.end method

.method private readName()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5f

    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/16 v6, 0x3a

    const/4 v5, 0x1

    .line 1510
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_1d

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1511
    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1512
    const-string v3, ""

    .line 1568
    :goto_1c
    return-object v3

    .line 1515
    :cond_1d
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1516
    .local v2, start:I
    const/4 v1, 0x0

    .line 1519
    .local v1, result:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v4

    .line 1520
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2e

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3e

    :cond_2e
    if-lt v0, v7, :cond_32

    if-le v0, v8, :cond_3e

    :cond_32
    if-eq v0, v9, :cond_3e

    if-eq v0, v6, :cond_3e

    const/16 v3, 0xc0

    if-ge v0, v3, :cond_3e

    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v3, :cond_64

    .line 1526
    :cond_3e
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1538
    :goto_44
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_6e

    .line 1539
    if-nez v1, :cond_51

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #result:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1542
    .restart local v1       #result:Ljava/lang/StringBuilder;
    :cond_51
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1543
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1544
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    .line 1528
    :cond_64
    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1529
    const-string v3, ""

    goto :goto_1c

    .line 1546
    :cond_6c
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1550
    :cond_6e
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v4

    .line 1551
    const/16 v3, 0x61

    if-lt v0, v3, :cond_7c

    const/16 v3, 0x7a

    if-le v0, v3, :cond_98

    :cond_7c
    if-lt v0, v7, :cond_80

    if-le v0, v8, :cond_98

    :cond_80
    const/16 v3, 0x30

    if-lt v0, v3, :cond_88

    const/16 v3, 0x39

    if-le v0, v3, :cond_98

    :cond_88
    if-eq v0, v9, :cond_98

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_98

    if-eq v0, v6, :cond_98

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_98

    const/16 v3, 0xb7

    if-lt v0, v3, :cond_9f

    .line 1559
    :cond_98
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_44

    .line 1564
    :cond_9f
    if-nez v1, :cond_ae

    .line 1565
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c

    .line 1567
    :cond_ae
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1568
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c
.end method

.method private readNotationDeclaration()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 939
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 940
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 941
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 942
    invoke-direct {p0, v1, v1}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 943
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Expected external ID or public ID for notation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 946
    :cond_1b
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 947
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 948
    return-void
.end method

.method private readQuotedId(Z)Ljava/lang/String;
    .registers 7
    .parameter "returnText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 659
    .local v1, quote:I
    const/16 v2, 0x22

    if-ne v1, v2, :cond_15

    .line 660
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    .line 666
    .local v0, delimiter:[C
    :goto_a
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 667
    invoke-direct {p0, v0, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 661
    .end local v0           #delimiter:[C
    :cond_15
    const/16 v2, 0x27

    if-ne v1, v2, :cond_1c

    .line 662
    sget-object v0, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    .restart local v0       #delimiter:[C
    goto :goto_a

    .line 664
    .end local v0           #delimiter:[C
    :cond_1c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected a quoted string"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readUntil([CZ)Ljava/lang/String;
    .registers 10
    .parameter "delimiter"
    .parameter "returnText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 461
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 462
    .local v3, start:I
    const/4 v2, 0x0

    .line 464
    .local v2, result:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_14

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #result:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .restart local v2       #result:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_14
    :goto_14
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    add-int/2addr v4, v5

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v4, v5, :cond_45

    .line 472
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v3, v4, :cond_31

    if-eqz p2, :cond_31

    .line 473
    if-nez v2, :cond_29

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #result:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .restart local v2       #result:Ljava/lang/StringBuilder;
    :cond_29
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 478
    :cond_31
    array-length v4, p1

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_43

    .line 479
    const-string v4, "Unexpected EOF"

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 480
    const/16 v4, 0x9

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    move-object v4, v6

    .line 507
    :goto_42
    return-object v4

    .line 483
    :cond_43
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 488
    :cond_45
    const/4 v1, 0x0

    .local v1, i:I
    :goto_46
    array-length v4, p1

    if-ge v1, v4, :cond_5e

    .line 489
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    aget-char v5, p1, v1

    if-eq v4, v5, :cond_5b

    .line 490
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_14

    .line 488
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 498
    :cond_5e
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 499
    .local v0, end:I
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 501
    if-nez p2, :cond_6a

    move-object v4, v6

    .line 502
    goto :goto_42

    .line 503
    :cond_6a
    if-nez v2, :cond_77

    .line 504
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    sub-int v6, v0, v3

    invoke-virtual {v4, v5, v3, v6}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v4

    goto :goto_42

    .line 506
    :cond_77
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    sub-int v5, v0, v3

    invoke-virtual {v2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_42
.end method

.method private readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;
    .registers 15
    .parameter "delimiter"
    .parameter "resolveEntities"
    .parameter "throwOnResolveFailure"
    .parameter "valueContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x26

    const/16 v7, 0x20

    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 1317
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1318
    .local v2, start:I
    const/4 v1, 0x0

    .line 1321
    .local v1, result:Ljava/lang/StringBuilder;
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_1e

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #result:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1323
    .restart local v1       #result:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    :cond_1e
    :goto_1e
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_4a

    .line 1334
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v2, v3, :cond_37

    .line 1335
    if-nez v1, :cond_2f

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #result:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1338
    .restart local v1       #result:Ljava/lang/StringBuilder;
    :cond_2f
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1340
    :cond_37
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1341
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1419
    :goto_44
    return-object v3

    .line 1341
    :cond_45
    const-string v3, ""

    goto :goto_44

    .line 1343
    :cond_48
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1346
    :cond_4a
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v4

    .line 1348
    .local v0, c:C
    if-eq v0, p1, :cond_5e

    if-ne p1, v7, :cond_5a

    if-le v0, v7, :cond_5e

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_5e

    :cond_5a
    if-ne v0, v8, :cond_6c

    if-nez p2, :cond_6c

    .line 1415
    :cond_5e
    if-nez v1, :cond_143

    .line 1416
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_44

    .line 1354
    :cond_6c
    const/16 v3, 0xd

    if-eq v0, v3, :cond_9b

    if-ne v0, v6, :cond_76

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_9b

    :cond_76
    if-eq v0, v8, :cond_9b

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_9b

    if-ne v0, v9, :cond_82

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_9b

    :cond_82
    const/16 v3, 0x25

    if-ne v0, v3, :cond_8a

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_9b

    .line 1360
    :cond_8a
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-gt v0, v7, :cond_99

    const/4 v4, 0x1

    :goto_8f
    and-int/2addr v3, v4

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1361
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_1e

    :cond_99
    move v4, v5

    .line 1360
    goto :goto_8f

    .line 1369
    :cond_9b
    if-nez v1, :cond_a2

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #result:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1372
    .restart local v1       #result:Ljava/lang/StringBuilder;
    :cond_a2
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1374
    const/16 v3, 0xd

    if-ne v0, v3, :cond_e1

    .line 1375
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_bd

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_cd

    :cond_bd
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_cd

    .line 1376
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1378
    :cond_cd
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_df

    move v0, v7

    .line 1410
    :goto_d2
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1411
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1412
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1413
    goto/16 :goto_1e

    :cond_df
    move v0, v6

    .line 1378
    goto :goto_d2

    .line 1380
    :cond_e1
    if-ne v0, v6, :cond_e6

    .line 1381
    const/16 v0, 0x20

    goto :goto_d2

    .line 1383
    :cond_e6
    if-ne v0, v8, :cond_f1

    .line 1384
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1385
    invoke-direct {p0, v1, v5, p3, p4}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    .line 1386
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1387
    goto/16 :goto_1e

    .line 1389
    :cond_f1
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_101

    .line 1390
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_fe

    .line 1391
    const-string v3, "Illegal: \"<\" inside attribute value"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1393
    :cond_fe
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    goto :goto_d2

    .line 1395
    :cond_101
    if-ne v0, v9, :cond_130

    .line 1396
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_112

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_12d

    :cond_112
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    aget-char v3, v3, v4

    if-ne v3, v9, :cond_12d

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x2

    aget-char v3, v3, v4

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_12d

    .line 1398
    const-string v3, "Illegal: \"]]>\" outside CDATA section"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1400
    :cond_12d
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    goto :goto_d2

    .line 1402
    :cond_130
    const/16 v3, 0x25

    if-ne v0, v3, :cond_13d

    .line 1403
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "This parser doesn\'t support parameter entities"

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 1407
    :cond_13d
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1418
    :cond_143
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_44
.end method

.method private readXmlDeclaration()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 515
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    if-nez v2, :cond_d

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    if-nez v2, :cond_d

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eqz v2, :cond_12

    .line 516
    :cond_d
    const-string v2, "processing instructions must not start with xml"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 519
    :cond_12
    sget-object v2, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 520
    invoke-direct {p0, v5, v5}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    .line 522
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt v2, v5, :cond_2b

    const-string v2, "version"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 523
    :cond_2b
    const-string v2, "version expected"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 526
    :cond_30
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 528
    const/4 v0, 0x1

    .line 530
    .local v0, pos:I
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v0, v2, :cond_52

    const-string v2, "encoding"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 531
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 532
    add-int/lit8 v0, v0, 0x1

    .line 535
    :cond_52
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v0, v2, :cond_7c

    const-string v2, "standalone"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 536
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-object v1, v2, v3

    .line 537
    .local v1, st:Ljava/lang/String;
    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 538
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 544
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    .line 547
    .end local v1           #st:Ljava/lang/String;
    :cond_7c
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-eq v0, v2, :cond_85

    .line 548
    const-string v2, "unexpected attributes in XML declaration"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 551
    :cond_85
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 552
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 553
    return-void

    .line 539
    .restart local v1       #st:Ljava/lang/String;
    :cond_8b
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 540
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_7a

    .line 542
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal standalone value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto :goto_7a
.end method

.method private skip()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1574
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1575
    :cond_d
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v1, v2

    .line 1576
    .local v0, c:I
    const/16 v1, 0x20

    if-le v0, v1, :cond_18

    .line 1581
    .end local v0           #c:I
    :cond_17
    return-void

    .line 1579
    .restart local v0       #c:I
    :cond_18
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1735
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_9

    .line 1736
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1738
    :cond_9
    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "entity"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1758
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v0, :cond_c

    .line 1759
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text may not be defined with DOCTYPE processing enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1762
    :cond_c
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v0, :cond_18

    .line 1763
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text must be defined after setInput()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1766
    :cond_18
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v0, :cond_23

    .line 1767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 1769
    :cond_23
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    return-void
.end method

.method public getAttributeCount()I
    .registers 2

    .prologue
    .line 1972
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1991
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_a

    .line 1992
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1994
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1984
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_a

    .line 1985
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1987
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1998
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_a

    .line 1999
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2001
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1976
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 2005
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_a

    .line 2006
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2008
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 2012
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_2b

    .line 2013
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz p1, :cond_21

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2015
    :cond_21
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 2019
    :goto_27
    return-object v1

    .line 2012
    :cond_28
    add-int/lit8 v0, v0, -0x4

    goto :goto_7

    .line 2019
    :cond_2b
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public getColumnNumber()I
    .registers 5

    .prologue
    .line 1911
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1912
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_16

    .line 1913
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_13

    .line 1914
    const/4 v1, 0x0

    .line 1912
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1916
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1919
    :cond_16
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 1844
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2023
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3
    .parameter "feature"

    .prologue
    .line 1741
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1742
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 1748
    :goto_a
    return v0

    .line 1743
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1744
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_a

    .line 1745
    :cond_16
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1746
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    goto :goto_a

    .line 1748
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1753
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .registers 5

    .prologue
    .line 1901
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1902
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_14

    .line 1903
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 1904
    add-int/lit8 v1, v1, 0x1

    .line 1902
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1907
    :cond_14
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1957
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1953
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "prefix"

    .prologue
    .line 1824
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1825
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 1840
    :goto_a
    return-object v1

    .line 1827
    :cond_b
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1828
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_a

    .line 1831
    :cond_16
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_21
    if-ltz v0, :cond_46

    .line 1832
    if-nez p1, :cond_32

    .line 1833
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_43

    .line 1834
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_a

    .line 1836
    :cond_32
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1837
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_a

    .line 1831
    :cond_43
    add-int/lit8 v0, v0, -0x2

    goto :goto_21

    .line 1840
    :cond_46
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getNamespaceCount(I)I
    .registers 3
    .parameter "depth"

    .prologue
    .line 1809
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-le p1, v0, :cond_a

    .line 1810
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1812
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 1816
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 1820
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    sget-object v5, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_de

    sget-object v4, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    aget-object v4, v4, v5

    :goto_14
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1851
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_23

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_122

    .line 1852
    :cond_23
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v4, :cond_2c

    .line 1853
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    :cond_2c
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1856
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_3a

    .line 1857
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1860
    :cond_3a
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_68

    .line 1861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    :cond_68
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v1, v4, 0x4

    .line 1866
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_72
    if-ge v2, v1, :cond_e2

    .line 1867
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1868
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_af

    .line 1869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    :cond_af
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    add-int/lit8 v2, v2, 0x4

    goto :goto_72

    .line 1848
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_de
    const-string v4, "unknown"

    goto/16 :goto_14

    .line 1874
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    .restart local v1       #cnt:I
    .restart local v2       #i:I
    :cond_e2
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1889
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_e7
    :goto_e7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v4, :cond_164

    .line 1891
    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    :cond_11d
    :goto_11d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1875
    :cond_122
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_e7

    .line 1877
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_134

    .line 1878
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    .line 1879
    :cond_134
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v4, :cond_13e

    .line 1880
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    .line 1882
    :cond_13e
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1883
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_160

    .line 1884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1886
    :cond_160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    .line 1893
    .end local v3           #text:Ljava/lang/String;
    :cond_164
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_11d

    .line 1894
    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11d
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1961
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "property"

    .prologue
    .line 1773
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1774
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1780
    :goto_a
    return-object v0

    .line 1775
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1776
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_a

    .line 1777
    :cond_16
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1778
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    goto :goto_a

    :cond_25
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1780
    :cond_2c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1805
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1789
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1797
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1930
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_10

    .line 1931
    :cond_e
    const/4 v0, 0x0

    .line 1935
    :goto_f
    return-object v0

    .line 1932
    :cond_10
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 1933
    const-string v0, ""

    goto :goto_f

    .line 1935
    :cond_17
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_f
.end method

.method public getTextCharacters([I)[C
    .registers 7
    .parameter "poslen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1940
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1941
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_f

    .line 1942
    aput v3, p1, v2

    .line 1943
    aput v3, p1, v4

    .line 1944
    const/4 v2, 0x0

    .line 1949
    :goto_e
    return-object v2

    .line 1946
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1947
    .local v0, result:[C
    aput v2, p1, v2

    .line 1948
    array-length v2, v0

    aput v2, p1, v4

    move-object v2, v0

    .line 1949
    goto :goto_e
.end method

.method public isAttributeDefault(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 1980
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1965
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 1966
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Wrong event type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1968
    :cond_e
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1923
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_18

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    .line 1924
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Wrong event type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1926
    :cond_18
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public keepNamespaceAttributes()V
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    .line 189
    return-void
.end method

.method public next()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2029
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2030
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_f

    .line 2031
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2034
    :cond_f
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    .line 2035
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "unexpected type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2038
    :cond_22
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2052
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    .line 2053
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "precondition: START_TAG"

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2056
    :cond_e
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2059
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    .line 2060
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2061
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2066
    :goto_1d
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2d

    .line 2067
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "END_TAG expected"

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2063
    .end local v0           #result:Ljava/lang/String;
    :cond_2a
    const-string v0, ""

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_1d

    .line 2070
    :cond_2d
    return-object v0
.end method

.method public nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "type"
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2043
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne p1, v0, :cond_1c

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_10
    if-eqz p3, :cond_4e

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 2046
    :cond_1c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2049
    :cond_4e
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 6
    .parameter "feature"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2074
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2075
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 2083
    :goto_a
    return-void

    .line 2076
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2077
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    goto :goto_a

    .line 2078
    :cond_16
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2079
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_a

    .line 2081
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 22
    .parameter "is"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1610
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1611
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1612
    if-nez p2, :cond_18

    const/4 v14, 0x1

    move v5, v14

    .line 1614
    .local v5, detectCharset:Z
    :goto_10
    if-nez p1, :cond_1b

    .line 1615
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 1612
    .end local v5           #detectCharset:Z
    :cond_18
    const/4 v14, 0x0

    move v5, v14

    goto :goto_10

    .line 1619
    .restart local v5       #detectCharset:Z
    :cond_1b
    if-eqz v5, :cond_6c

    .line 1621
    const/4 v7, 0x0

    .line 1622
    .local v7, firstFourBytes:I
    :goto_1e
    :try_start_1e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v14, v0

    const/4 v15, 0x4

    if-ge v14, v15, :cond_2d

    .line 1623
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1624
    .local v8, i:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_bf

    .line 1631
    .end local v8           #i:I
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_6c

    .line 1632
    sparse-switch v7, :sswitch_data_236

    .line 1694
    const/high16 v14, -0x1

    and-int/2addr v14, v7

    const/high16 v15, -0x101

    if-ne v14, v15, :cond_1dc

    .line 1695
    const-string p2, "UTF-16BE"

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-char v16, v16, v17

    shl-int/lit8 v16, v16, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-char v17, v17, v18

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1697
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1711
    .end local v7           #firstFourBytes:I
    :cond_6c
    :goto_6c
    if-nez p2, :cond_70

    .line 1712
    const-string p2, "UTF-8"

    .line 1715
    :cond_70
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v13, v0

    .line 1716
    .local v13, savedLimit:I
    new-instance v14, Ljava/io/InputStreamReader;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    .line 1717
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1718
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1725
    if-nez v5, :cond_be

    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v14

    const v15, 0xfeff

    if-ne v14, v15, :cond_be

    .line 1726
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v14, v0

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move/from16 v18, v0

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1732
    :cond_be
    return-void

    .line 1627
    .end local v13           #savedLimit:I
    .restart local v7       #firstFourBytes:I
    .restart local v8       #i:I
    :cond_bf
    shl-int/lit8 v14, v7, 0x8

    or-int v7, v14, v8

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v15, v0

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    move v0, v8

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_db} :catch_dd

    goto/16 :goto_1e

    .line 1729
    .end local v7           #firstFourBytes:I
    .end local v8           #i:I
    :catch_dd
    move-exception v14

    move-object v6, v14

    .line 1730
    .local v6, e:Ljava/lang/Exception;
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid stream or encoding: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v14

    .line 1634
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #firstFourBytes:I
    :sswitch_fd
    :try_start_fd
    const-string p2, "UTF-32BE"

    .line 1635
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_6c

    .line 1639
    :sswitch_107
    const-string p2, "UTF-32LE"

    .line 1640
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_6c

    .line 1644
    :sswitch_111
    const-string p2, "UTF-32BE"

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1646
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_6c

    .line 1650
    :sswitch_125
    const-string p2, "UTF-32LE"

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1652
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_6c

    .line 1656
    :sswitch_139
    const-string p2, "UTF-16BE"

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x3f

    aput-char v16, v14, v15

    .line 1659
    const/4 v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_6c

    .line 1663
    :sswitch_157
    const-string p2, "UTF-16LE"

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x3f

    aput-char v16, v14, v15

    .line 1666
    const/4 v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_6c

    .line 1671
    :cond_175
    :sswitch_175
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1672
    .restart local v8       #i:I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_6c

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move v15, v0

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    move v0, v8

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1676
    const/16 v14, 0x3e

    if-ne v8, v14, :cond_175

    .line 1677
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move/from16 v16, v0

    move-object v0, v12

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1678
    .local v12, s:Ljava/lang/String;
    const-string v14, "encoding"

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1679
    .local v9, i0:I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_6c

    move v10, v9

    .line 1680
    .end local v9           #i0:I
    .local v10, i0:I
    :goto_1b8
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-eq v14, v15, :cond_1cc

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_1cc

    .line 1681
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i0:I
    .restart local v9       #i0:I
    move v10, v9

    .end local v9           #i0:I
    .restart local v10       #i0:I
    goto :goto_1b8

    .line 1683
    :cond_1cc
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i0:I
    .restart local v9       #i0:I
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1684
    .local v4, deli:C
    invoke-virtual {v12, v4, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1685
    .local v11, i1:I
    invoke-virtual {v12, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1686
    goto/16 :goto_6c

    .line 1698
    .end local v4           #deli:C
    .end local v8           #i:I
    .end local v9           #i0:I
    .end local v11           #i1:I
    .end local v12           #s:Ljava/lang/String;
    :cond_1dc
    const/high16 v14, -0x1

    and-int/2addr v14, v7

    const/high16 v15, -0x2

    if-ne v14, v15, :cond_212

    .line 1699
    const-string p2, "UTF-16LE"

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-char v16, v16, v17

    shl-int/lit8 v16, v16, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-char v17, v17, v18

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1701
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_6c

    .line 1702
    :cond_212
    and-int/lit16 v14, v7, -0x100

    const v15, -0x10444100

    if-ne v14, v15, :cond_6c

    .line 1703
    const-string p2, "UTF-8"

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-char v16, v16, v17

    aput-char v16, v14, v15

    .line 1705
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->limit:I
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_233} :catch_dd

    goto/16 :goto_6c

    .line 1632
    nop

    :sswitch_data_236
    .sparse-switch
        -0x20000 -> :sswitch_107
        0x3c -> :sswitch_111
        0xfeff -> :sswitch_fd
        0x3c003f -> :sswitch_139
        0x3c000000 -> :sswitch_125
        0x3c003f00 -> :sswitch_157
        0x3c3f786d -> :sswitch_175
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1586
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    .line 1588
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1589
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1590
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 1591
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 1592
    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 1593
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1594
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1595
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 1597
    if-nez p1, :cond_18

    .line 1607
    :goto_17
    return-void

    .line 1601
    :cond_18
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1602
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1603
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1604
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1605
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 1606
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    goto :goto_17
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "property"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2086
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2087
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    .line 2091
    return-void

    .line 2089
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

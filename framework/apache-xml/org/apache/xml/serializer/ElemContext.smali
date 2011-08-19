.class final Lorg/apache/xml/serializer/ElemContext;
.super Ljava/lang/Object;
.source "ElemContext.java"


# instance fields
.field final m_currentElemDepth:I

.field m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

.field m_elementLocalName:Ljava/lang/String;

.field m_elementName:Ljava/lang/String;

.field m_elementURI:Ljava/lang/String;

.field m_isCdataSection:Z

.field m_isRaw:Z

.field private m_next:Lorg/apache/xml/serializer/ElemContext;

.field final m_prev:Lorg/apache/xml/serializer/ElemContext;

.field m_startTagOpen:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    .line 68
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    .line 115
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 124
    iput-object p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    .line 126
    iput v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    .line 127
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/serializer/ElemContext;)V
    .registers 4
    .parameter "previous"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    .line 68
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    .line 115
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 141
    iput-object p1, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    .line 142
    iget v0, p1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    .line 143
    return-void
.end method


# virtual methods
.method final pop()Lorg/apache/xml/serializer/ElemContext;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    return-object v0
.end method

.method final push()Lorg/apache/xml/serializer/ElemContext;
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    .line 168
    .local v0, frame:Lorg/apache/xml/serializer/ElemContext;
    if-nez v0, :cond_b

    .line 173
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    .end local v0           #frame:Lorg/apache/xml/serializer/ElemContext;
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ElemContext;-><init>(Lorg/apache/xml/serializer/ElemContext;)V

    .line 174
    .restart local v0       #frame:Lorg/apache/xml/serializer/ElemContext;
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    .line 182
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 183
    return-object v0
.end method

.method final push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    .line 202
    .local v0, frame:Lorg/apache/xml/serializer/ElemContext;
    if-nez v0, :cond_b

    .line 207
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    .end local v0           #frame:Lorg/apache/xml/serializer/ElemContext;
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ElemContext;-><init>(Lorg/apache/xml/serializer/ElemContext;)V

    .line 208
    .restart local v0       #frame:Lorg/apache/xml/serializer/ElemContext;
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    .line 212
    :cond_b
    iput-object p3, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 213
    iput-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 214
    iput-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 220
    return-object v0
.end method

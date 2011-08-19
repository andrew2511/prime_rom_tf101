.class final Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;
.super Ljava/lang/Object;
.source "DOMLocatorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# instance fields
.field private final fByteOffset:I

.field private final fColumnNumber:I

.field private final fLineNumber:I

.field private final fRelatedNode:Lorg/w3c/dom/Node;

.field private final fUri:Ljava/lang/String;

.field private final fUtf16Offset:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 85
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 86
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 87
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 88
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 89
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    .line 90
    return-void
.end method

.method constructor <init>(IIILjava/lang/String;)V
    .registers 6
    .parameter "lineNumber"
    .parameter "columnNumber"
    .parameter "utf16Offset"
    .parameter "uri"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 104
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 105
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 106
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 111
    return-void
.end method

.method constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 7
    .parameter "lineNumber"
    .parameter "columnNumber"
    .parameter "byteoffset"
    .parameter "relatedData"
    .parameter "uri"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 115
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 116
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 117
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 118
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    .line 121
    return-void
.end method

.method constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;I)V
    .registers 7
    .parameter "lineNumber"
    .parameter "columnNumber"
    .parameter "byteoffset"
    .parameter "relatedData"
    .parameter "uri"
    .parameter "utf16Offset"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 125
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 126
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 127
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 128
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 129
    iput p6, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    .line 130
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 6
    .parameter "lineNumber"
    .parameter "columnNumber"
    .parameter "uri"

    .prologue
    const/4 v1, -0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 94
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 95
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 98
    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 99
    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    .line 100
    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    return v0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUtf16Offset()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return v0
.end method

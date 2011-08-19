.class public Lorg/apache/xml/dtm/ref/NodeLocator;
.super Ljava/lang/Object;
.source "NodeLocator.java"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;


# instance fields
.field protected m_columnNumber:I

.field protected m_lineNumber:I

.field protected m_publicId:Ljava/lang/String;

.field protected m_systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .parameter "publicId"
    .parameter "systemId"
    .parameter "lineNumber"
    .parameter "columnNumber"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_publicId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    .line 53
    iput p3, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    .line 54
    iput p4, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    .line 55
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", column #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

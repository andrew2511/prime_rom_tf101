.class public Lorg/xml/sax/SAXException;
.super Ljava/lang/Exception;
.source "SAXException.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "message"
    .parameter "e"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 89
    iput-object p2, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 90
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, message:Ljava/lang/String;
    if-nez v0, :cond_11

    iget-object v1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_11

    .line 107
    iget-object v1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 109
    :goto_10
    return-object v1

    :cond_11
    move-object v1, v0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

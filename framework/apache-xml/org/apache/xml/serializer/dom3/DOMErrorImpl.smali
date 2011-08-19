.class public final Lorg/apache/xml/serializer/dom3/DOMErrorImpl;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMError;


# instance fields
.field private fException:Ljava/lang/Exception;

.field private fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

.field private fMessage:Ljava/lang/String;

.field private fRelatedData:Ljava/lang/Object;

.field private fSeverity:S

.field private fType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 43
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    .line 66
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "severity"
    .parameter "message"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 43
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    .line 74
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 75
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "severity"
    .parameter "message"
    .parameter "type"
    .parameter "exception"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 43
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    .line 87
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 88
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 91
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V
    .registers 9
    .parameter "severity"
    .parameter "message"
    .parameter "type"
    .parameter "exception"
    .parameter "relatedData"
    .parameter "location"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 43
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    .line 103
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 104
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 107
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 108
    iput-object p6, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    .line 109
    return-void
.end method


# virtual methods
.method public getLocation()Lorg/w3c/dom/DOMLocator;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    return-object v0
.end method

.method public getRelatedException()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getSeverity()S
    .registers 2

    .prologue
    .line 119
    iget-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 168
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 169
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 170
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 172
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 173
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    .line 174
    return-void
.end method

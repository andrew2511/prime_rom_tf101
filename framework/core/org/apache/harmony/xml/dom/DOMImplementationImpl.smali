.class public final Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
.super Ljava/lang/Object;
.source "DOMImplementationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# static fields
.field private static instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    .line 84
    :cond_b
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .registers 10
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "doctype"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;-><init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .registers 6
    .parameter "qualifiedName"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "feature"
    .parameter "version"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3b

    :cond_a
    move v0, v3

    .line 54
    .local v0, anyVersion:Z
    :goto_b
    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    :cond_17
    const-string v1, "Core"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 63
    if-nez v0, :cond_39

    const-string v1, "1.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "2.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "3.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_39
    move v1, v3

    .line 69
    :goto_3a
    return v1

    .end local v0           #anyVersion:Z
    :cond_3b
    move v0, v2

    .line 53
    goto :goto_b

    .restart local v0       #anyVersion:Z
    :cond_3d
    move v1, v2

    .line 63
    goto :goto_3a

    .line 64
    :cond_3f
    const-string v1, "XML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 65
    if-nez v0, :cond_61

    const-string v1, "1.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "2.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "3.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    :cond_61
    move v1, v3

    goto :goto_3a

    :cond_63
    move v1, v2

    goto :goto_3a

    .line 66
    :cond_65
    const-string v1, "XMLVersion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 67
    if-nez v0, :cond_7f

    const-string v1, "1.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "1.1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    :cond_7f
    move v1, v3

    goto :goto_3a

    :cond_81
    move v1, v2

    goto :goto_3a

    :cond_83
    move v1, v2

    .line 69
    goto :goto_3a
.end method

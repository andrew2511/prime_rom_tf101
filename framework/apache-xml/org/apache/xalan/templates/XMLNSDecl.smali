.class public Lorg/apache/xalan/templates/XMLNSDecl;
.super Ljava/lang/Object;
.source "XMLNSDecl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x5d1f8d55334acce9L


# instance fields
.field private m_isExcluded:Z

.field private m_prefix:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .parameter "isExcluded"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    .line 43
    iput-boolean p3, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_isExcluded:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getIsExcluded()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_isExcluded:Z

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    return-object v0
.end method

.class public Lorg/apache/xalan/templates/ElemExtensionScript;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemExtensionScript.java"


# static fields
.field static final serialVersionUID:J = -0x6116b52aa7429910L


# instance fields
.field private m_lang:Ljava/lang/String;

.field private m_src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 43
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 101
    const/16 v0, 0x56

    return v0
.end method

.method public setLang(Ljava/lang/String;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    .line 80
    return-void
.end method

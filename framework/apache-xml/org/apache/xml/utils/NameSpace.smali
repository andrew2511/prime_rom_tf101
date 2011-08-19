.class public Lorg/apache/xml/utils/NameSpace;
.super Ljava/lang/Object;
.source "NameSpace.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x146ade9031f800afL


# instance fields
.field public m_next:Lorg/apache/xml/utils/NameSpace;

.field public m_prefix:Ljava/lang/String;

.field public m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/NameSpace;->m_next:Lorg/apache/xml/utils/NameSpace;

    .line 56
    iput-object p1, p0, Lorg/apache/xml/utils/NameSpace;->m_prefix:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/apache/xml/utils/NameSpace;->m_uri:Ljava/lang/String;

    .line 58
    return-void
.end method

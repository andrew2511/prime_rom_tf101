.class public Lorg/apache/xpath/SourceTree;
.super Ljava/lang/Object;
.source "SourceTree.java"


# instance fields
.field public m_root:I

.field public m_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "root"
    .parameter "url"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/apache/xpath/SourceTree;->m_root:I

    .line 43
    iput-object p2, p0, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    .line 44
    return-void
.end method

.class public Lorg/apache/xml/utils/WrappedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "WrappedRuntimeException.java"


# static fields
.field static final serialVersionUID:J = 0x6317d91de98a8119L


# instance fields
.field private m_exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/apache/xml/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lorg/apache/xml/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    .line 63
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/xml/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    return-object v0
.end method

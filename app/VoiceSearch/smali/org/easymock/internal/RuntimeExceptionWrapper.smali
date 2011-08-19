.class public Lorg/easymock/internal/RuntimeExceptionWrapper;
.super Ljava/lang/RuntimeException;
.source "RuntimeExceptionWrapper.java"


# static fields
.field private static final serialVersionUID:J = -0x3057e1183abeb801L


# instance fields
.field private final runtimeException:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Ljava/lang/RuntimeException;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/easymock/internal/RuntimeExceptionWrapper;->runtimeException:Ljava/lang/RuntimeException;

    .line 15
    return-void
.end method


# virtual methods
.method public getRuntimeException()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/easymock/internal/RuntimeExceptionWrapper;->runtimeException:Ljava/lang/RuntimeException;

    return-object v0
.end method

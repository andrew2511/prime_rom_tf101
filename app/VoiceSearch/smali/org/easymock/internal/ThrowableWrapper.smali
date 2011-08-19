.class public Lorg/easymock/internal/ThrowableWrapper;
.super Ljava/lang/Throwable;
.source "ThrowableWrapper.java"


# static fields
.field private static final serialVersionUID:J = -0x3d89e124871e81ebL


# instance fields
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/easymock/internal/ThrowableWrapper;->throwable:Ljava/lang/Throwable;

    .line 15
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/easymock/internal/ThrowableWrapper;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

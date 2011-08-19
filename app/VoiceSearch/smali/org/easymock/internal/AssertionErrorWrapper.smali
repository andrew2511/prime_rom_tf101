.class public Lorg/easymock/internal/AssertionErrorWrapper;
.super Ljava/lang/RuntimeException;
.source "AssertionErrorWrapper.java"


# static fields
.field private static final serialVersionUID:J = -0x1cf7c108a50987d0L


# instance fields
.field private final error:Ljava/lang/AssertionError;


# direct methods
.method public constructor <init>(Ljava/lang/AssertionError;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/easymock/internal/AssertionErrorWrapper;->error:Ljava/lang/AssertionError;

    .line 15
    return-void
.end method


# virtual methods
.method public getAssertionError()Ljava/lang/AssertionError;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/easymock/internal/AssertionErrorWrapper;->error:Ljava/lang/AssertionError;

    return-object v0
.end method

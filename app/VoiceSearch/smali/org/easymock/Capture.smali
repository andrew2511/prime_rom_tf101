.class public Lorg/easymock/Capture;
.super Ljava/lang/Object;
.source "Capture.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3a7c6d731023821dL


# instance fields
.field private captured:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/easymock/Capture;->captured:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/easymock/Capture;->captured:Z

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Nothing captured yet"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/easymock/Capture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasCaptured()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/easymock/Capture;->captured:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/easymock/Capture;->value:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/easymock/Capture;->captured:Z

    .line 29
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lorg/easymock/Capture;->value:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/Capture;->captured:Z

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/easymock/Capture;->captured:Z

    if-nez v0, :cond_0

    .line 63
    const-string v0, "Nothing captured yet"

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/easymock/Capture;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/easymock/Capture;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

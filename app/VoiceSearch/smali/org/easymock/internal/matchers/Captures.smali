.class public Lorg/easymock/internal/matchers/Captures;
.super Ljava/lang/Object;
.source "Captures.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/easymock/IArgumentMatcher;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4a885eb69ffed4c2L


# instance fields
.field private capture:Lorg/easymock/Capture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/easymock/Capture",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/easymock/Capture;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/Capture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/easymock/internal/matchers/Captures;->capture:Lorg/easymock/Capture;

    .line 20
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const-string v0, "capture("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/easymock/internal/matchers/Captures;->capture:Lorg/easymock/Capture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lorg/easymock/internal/matchers/Captures;->capture:Lorg/easymock/Capture;

    invoke-virtual {v0, p1}, Lorg/easymock/Capture;->setValue(Ljava/lang/Object;)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

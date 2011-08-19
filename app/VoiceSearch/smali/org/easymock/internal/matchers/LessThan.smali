.class public Lorg/easymock/internal/matchers/LessThan;
.super Lorg/easymock/internal/matchers/CompareTo;
.source "LessThan.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Lorg/easymock/internal/matchers/CompareTo",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5355a64120d07ce8L


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/easymock/internal/matchers/CompareTo;-><init>(Ljava/lang/Comparable;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "lt"

    return-object v0
.end method

.method protected matchResult(I)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

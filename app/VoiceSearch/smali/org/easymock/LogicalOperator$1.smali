.class final enum Lorg/easymock/LogicalOperator$1;
.super Lorg/easymock/LogicalOperator;
.source "LogicalOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/easymock/LogicalOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/easymock/LogicalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/easymock/LogicalOperator$1;)V

    return-void
.end method


# virtual methods
.method public matchResult(I)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

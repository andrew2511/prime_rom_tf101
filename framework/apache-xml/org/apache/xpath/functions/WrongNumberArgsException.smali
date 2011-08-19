.class public Lorg/apache/xpath/functions/WrongNumberArgsException;
.super Ljava/lang/Exception;
.source "WrongNumberArgsException.java"


# static fields
.field static final serialVersionUID:J = -0x3f2a734144d5dd00L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "argsExpected"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

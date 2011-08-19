.class public Ljava/lang/IllegalAccessError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "IllegalAccessError.java"


# static fields
.field private static final serialVersionUID:J = -0x7cbf00a185fbfc63L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

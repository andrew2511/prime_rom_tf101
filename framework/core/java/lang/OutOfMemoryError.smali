.class public Ljava/lang/OutOfMemoryError;
.super Ljava/lang/VirtualMachineError;
.source "OutOfMemoryError.java"


# static fields
.field private static final serialVersionUID:J = 0x7231bb708888e315L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

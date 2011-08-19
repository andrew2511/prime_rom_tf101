.class public abstract Lnet/yostore/aws/api/exception/APIException;
.super Ljava/lang/Exception;
.source "APIException.java"


# static fields
.field public static final EXC_AAA:I = 0xa

.field public static final EXC_FEX:I = 0x3c

.field public static final EXC_FSX:I = 0x28

.field public static final EXC_PCX:I = 0x14

.field public static final EXC_REG:I = 0x46

.field public static final EXC_RTY:I = 0x1e

.field public static final EXC_XSP:I = 0x32


# instance fields
.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5
    const v0, -0x1869f

    iput v0, p0, Lnet/yostore/aws/api/exception/APIException;->status:I

    .line 19
    return-void
.end method

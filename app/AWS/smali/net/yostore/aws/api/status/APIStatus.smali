.class public Lnet/yostore/aws/api/status/APIStatus;
.super Ljava/lang/Object;
.source "APIStatus.java"


# static fields
.field public static CONNECTION_FAIL:I

.field public static LOGIN_FAIL:I

.field public static SUCCESS:I

.field public static UNKNOW_ERR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput v0, Lnet/yostore/aws/api/status/APIStatus;->SUCCESS:I

    .line 6
    const/4 v0, 0x2

    sput v0, Lnet/yostore/aws/api/status/APIStatus;->LOGIN_FAIL:I

    .line 7
    const/16 v0, -0x3e7

    sput v0, Lnet/yostore/aws/api/status/APIStatus;->UNKNOW_ERR:I

    .line 8
    const/16 v0, -0x270f

    sput v0, Lnet/yostore/aws/api/status/APIStatus;->CONNECTION_FAIL:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

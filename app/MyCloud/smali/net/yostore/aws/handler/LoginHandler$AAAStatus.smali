.class public final enum Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
.super Ljava/lang/Enum;
.source "LoginHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/handler/LoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AAAStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/handler/LoginHandler$AAAStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field public static final enum Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field public static final enum FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field public static final enum GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field public static final enum NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field public static final enum OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field public static final enum OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field public static final enum SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 29
    new-instance v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    const-string v1, "NG"

    invoke-direct {v0, v1, v4}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 30
    new-instance v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    const-string v1, "FREEZE"

    invoke-direct {v0, v1, v5}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 31
    new-instance v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    const-string v1, "Err"

    invoke-direct {v0, v1, v6}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 32
    new-instance v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    const-string v1, "SHOW_OTP"

    invoke-direct {v0, v1, v7}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 33
    new-instance v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    const-string v1, "OTP_LOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 34
    new-instance v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    const-string v1, "GO_CAPTCHA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    aput-object v1, v0, v5

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    aput-object v1, v0, v6

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    aput-object v2, v0, v1

    sput-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ENUM$VALUES:[Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ENUM$VALUES:[Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

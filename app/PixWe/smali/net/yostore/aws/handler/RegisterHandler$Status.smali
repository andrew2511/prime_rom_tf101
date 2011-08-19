.class public final enum Lnet/yostore/aws/handler/RegisterHandler$Status;
.super Ljava/lang/Enum;
.source "RegisterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/handler/RegisterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/handler/RegisterHandler$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/handler/RegisterHandler$Status;

.field public static final enum Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

.field public static final enum NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

.field public static final enum OK:Lnet/yostore/aws/handler/RegisterHandler$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lnet/yostore/aws/handler/RegisterHandler$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/RegisterHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 39
    new-instance v0, Lnet/yostore/aws/handler/RegisterHandler$Status;

    const-string v1, "NG"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/handler/RegisterHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 40
    new-instance v0, Lnet/yostore/aws/handler/RegisterHandler$Status;

    const-string v1, "Dup"

    invoke-direct {v0, v1, v4}, Lnet/yostore/aws/handler/RegisterHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 41
    new-instance v0, Lnet/yostore/aws/handler/RegisterHandler$Status;

    const-string v1, "Err"

    invoke-direct {v0, v1, v5}, Lnet/yostore/aws/handler/RegisterHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/yostore/aws/handler/RegisterHandler$Status;

    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    aput-object v1, v0, v5

    sput-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->ENUM$VALUES:[Lnet/yostore/aws/handler/RegisterHandler$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/handler/RegisterHandler$Status;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/handler/RegisterHandler$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->ENUM$VALUES:[Lnet/yostore/aws/handler/RegisterHandler$Status;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

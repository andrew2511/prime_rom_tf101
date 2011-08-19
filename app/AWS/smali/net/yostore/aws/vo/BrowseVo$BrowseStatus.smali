.class public final enum Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;
.super Ljava/lang/Enum;
.source "BrowseVo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/vo/BrowseVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AccFrozen:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

.field public static final enum AuthFail:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

.field public static final enum GeneralErr:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

.field public static final enum ProcessPwdFail:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

.field public static final enum Success:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;


# instance fields
.field private final key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    const-string v1, "Success"

    invoke-direct {v0, v1, v3, v3}, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->Success:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    .line 29
    new-instance v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    const-string v1, "AuthFail"

    invoke-direct {v0, v1, v5, v4}, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->AuthFail:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    .line 30
    new-instance v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    const-string v1, "AccFrozen"

    const/16 v2, 0xe2

    invoke-direct {v0, v1, v4, v2}, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->AccFrozen:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    .line 31
    new-instance v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    const-string v1, "ProcessPwdFail"

    const/16 v2, 0xe5

    invoke-direct {v0, v1, v6, v2}, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->ProcessPwdFail:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    .line 32
    new-instance v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    const-string v1, "GeneralErr"

    const/16 v2, 0x3e7

    invoke-direct {v0, v1, v7, v2}, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->GeneralErr:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->Success:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->AuthFail:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    aput-object v1, v0, v5

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->AccFrozen:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->ProcessPwdFail:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    aput-object v1, v0, v6

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->GeneralErr:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    aput-object v1, v0, v7

    sput-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->ENUM$VALUES:[Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->key_id:I

    .line 36
    return-void
.end method

.method public static getType(I)Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;
    .locals 1
    .parameter "id"

    .prologue
    .line 39
    sparse-switch p0, :sswitch_data_0

    .line 49
    sget-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->GeneralErr:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    :goto_0
    return-object v0

    .line 41
    :sswitch_0
    sget-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->Success:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    goto :goto_0

    .line 43
    :sswitch_1
    sget-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->AuthFail:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    goto :goto_0

    .line 45
    :sswitch_2
    sget-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->AccFrozen:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    goto :goto_0

    .line 47
    :sswitch_3
    sget-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->ProcessPwdFail:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xe2 -> :sswitch_2
        0xe5 -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->ENUM$VALUES:[Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->key_id:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->key_id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

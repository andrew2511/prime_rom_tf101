.class final enum Lnet/yostore/aws/view/navigate/LibActivity$NAVI;
.super Ljava/lang/Enum;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/LibActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NAVI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/view/navigate/LibActivity$NAVI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

.field public static final enum FLOAT:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

.field public static final enum HERE:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

.field public static final enum SEARCH_DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

.field public static final enum SHARE_DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

.field public static final enum TOP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v4}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->FLOAT:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    const-string v1, "DEEP"

    invoke-direct {v0, v1, v5}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    const-string v1, "HERE"

    invoke-direct {v0, v1, v6}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    const-string v1, "SEARCH_DEEP"

    invoke-direct {v0, v1, v7}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->SEARCH_DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    const-string v1, "SHARE_DEEP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->SHARE_DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    const/4 v0, 0x6

    new-array v0, v0, [Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->FLOAT:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    aput-object v1, v0, v5

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    aput-object v1, v0, v6

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->SEARCH_DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->SHARE_DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    aput-object v2, v0, v1

    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ENUM$VALUES:[Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/view/navigate/LibActivity$NAVI;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/view/navigate/LibActivity$NAVI;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ENUM$VALUES:[Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.class public final enum Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;
.super Ljava/lang/Enum;
.source "OffLinePlayListHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ROOT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

.field public static final enum Lib:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

.field public static final enum PlayList:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

.field public static final enum Search:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    const-string v1, "Lib"

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->Lib:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    .line 69
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    const-string v1, "PlayList"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->PlayList:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    .line 70
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    const-string v1, "Search"

    invoke-direct {v0, v1, v4}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->Search:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->Lib:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->PlayList:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->Search:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    aput-object v1, v0, v4

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->ENUM$VALUES:[Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->ENUM$VALUES:[Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.class public final enum Lnet/yostore/aws/handler/NavigateHandler$ROOT;
.super Ljava/lang/Enum;
.source "NavigateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/handler/NavigateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ROOT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/handler/NavigateHandler$ROOT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/handler/NavigateHandler$ROOT;

.field public static final enum Lib:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

.field public static final enum PlayList:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

.field public static final enum Search:Lnet/yostore/aws/handler/NavigateHandler$ROOT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    const-string v1, "Lib"

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->Lib:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    .line 61
    new-instance v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    const-string v1, "PlayList"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->PlayList:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    .line 62
    new-instance v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    const-string v1, "Search"

    invoke-direct {v0, v1, v4}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->Search:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->Lib:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->PlayList:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->Search:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    aput-object v1, v0, v4

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ENUM$VALUES:[Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/handler/NavigateHandler$ROOT;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/handler/NavigateHandler$ROOT;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ENUM$VALUES:[Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

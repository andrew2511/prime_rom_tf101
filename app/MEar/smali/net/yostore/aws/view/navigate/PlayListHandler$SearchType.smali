.class public final enum Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;
.super Ljava/lang/Enum;
.source "PlayListHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/PlayListHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

.field public static final enum FULL_TEXT:Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

.field public static final enum SQL:Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 668
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    const-string v1, "FULL_TEXT"

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;->FULL_TEXT:Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    .line 669
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    const-string v1, "SQL"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;->SQL:Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    .line 667
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;->FULL_TEXT:Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;->SQL:Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;->ENUM$VALUES:[Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 667
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;->ENUM$VALUES:[Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

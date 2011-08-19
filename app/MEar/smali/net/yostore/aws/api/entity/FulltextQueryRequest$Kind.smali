.class public final enum Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
.super Ljava/lang/Enum;
.source "FulltextQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/api/entity/FulltextQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

.field public static final enum FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

.field public static final enum FOLDER:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 14
    new-instance v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FOLDER:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 15
    new-instance v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v4}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FOLDER:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    aput-object v1, v0, v4

    sput-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ENUM$VALUES:[Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ENUM$VALUES:[Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

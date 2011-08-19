.class public final enum Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;
.super Ljava/lang/Enum;
.source "RecentUploadFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/handler/RecentUploadFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

.field public static final enum FULL_TEXT:Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

.field public static final enum SQL:Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    new-instance v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    const-string v1, "FULL_TEXT"

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;->FULL_TEXT:Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    new-instance v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    const-string v1, "SQL"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;->SQL:Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    sget-object v1, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;->FULL_TEXT:Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;->SQL:Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;->ENUM$VALUES:[Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;->ENUM$VALUES:[Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

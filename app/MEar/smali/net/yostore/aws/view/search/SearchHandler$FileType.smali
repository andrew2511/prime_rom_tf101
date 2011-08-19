.class public final enum Lnet/yostore/aws/view/search/SearchHandler$FileType;
.super Ljava/lang/Enum;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/search/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/view/search/SearchHandler$FileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lnet/yostore/aws/view/search/SearchHandler$FileType;

.field public static final enum DOC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/view/search/SearchHandler$FileType;

.field public static final enum MUSIC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

.field public static final enum PIC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

.field public static final enum VIDEO:Lnet/yostore/aws/view/search/SearchHandler$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 486
    new-instance v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/search/SearchHandler$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ALL:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    .line 487
    new-instance v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;

    const-string v1, "DOC"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/view/search/SearchHandler$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;->DOC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    .line 488
    new-instance v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;

    const-string v1, "PIC"

    invoke-direct {v0, v1, v4}, Lnet/yostore/aws/view/search/SearchHandler$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;->PIC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    .line 489
    new-instance v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lnet/yostore/aws/view/search/SearchHandler$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;->VIDEO:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    .line 490
    new-instance v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v6}, Lnet/yostore/aws/view/search/SearchHandler$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;->MUSIC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    .line 485
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/yostore/aws/view/search/SearchHandler$FileType;

    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ALL:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->DOC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->PIC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->VIDEO:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    aput-object v1, v0, v5

    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->MUSIC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    aput-object v1, v0, v6

    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ENUM$VALUES:[Lnet/yostore/aws/view/search/SearchHandler$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/view/search/SearchHandler$FileType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/view/search/SearchHandler$FileType;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/view/search/SearchHandler$FileType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ENUM$VALUES:[Lnet/yostore/aws/view/search/SearchHandler$FileType;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/view/search/SearchHandler$FileType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

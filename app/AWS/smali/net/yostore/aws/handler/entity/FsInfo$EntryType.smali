.class public final enum Lnet/yostore/aws/handler/entity/FsInfo$EntryType;
.super Ljava/lang/Enum;
.source "FsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/handler/entity/FsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/handler/entity/FsInfo$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

.field public static final enum File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

.field public static final enum Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

.field public static final enum NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

.field public static final enum SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

.field public static final enum SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

.field public static final enum Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;


# instance fields
.field private final key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v1, "File"

    invoke-direct {v0, v1, v4, v4}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 70
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v1, "Folder"

    invoke-direct {v0, v1, v5, v5}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 71
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v1, "SearchMore"

    invoke-direct {v0, v1, v6, v6}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 72
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v1, "BrowseMore"

    invoke-direct {v0, v1, v7, v7}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 73
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v1, "SavedSearch"

    invoke-direct {v0, v1, v8, v8}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 74
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v1, "NUll"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 75
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v1, "Spreate"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    aput-object v1, v0, v5

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    aput-object v1, v0, v6

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    aput-object v1, v0, v7

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->ENUM$VALUES:[Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->key_id:I

    .line 79
    return-void
.end method

.method public static getType(I)Lnet/yostore/aws/handler/entity/FsInfo$EntryType;
    .locals 1
    .parameter "id"

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 98
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_0

    .line 88
    :pswitch_2
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_0

    .line 90
    :pswitch_3
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_0

    .line 92
    :pswitch_4
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_0

    .line 94
    :pswitch_5
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_0

    .line 96
    :pswitch_6
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/handler/entity/FsInfo$EntryType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/handler/entity/FsInfo$EntryType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->ENUM$VALUES:[Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->key_id:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->key_id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

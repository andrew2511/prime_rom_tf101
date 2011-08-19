.class public final enum Lnet/yostore/aws/dto/BrowseToObject$BrowseType;
.super Ljava/lang/Enum;
.source "BrowseToObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/dto/BrowseToObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/dto/BrowseToObject$BrowseType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

.field public static final enum Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

.field public static final enum RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

.field public static final enum RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

.field public static final enum SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

.field public static final enum Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;


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

    .line 77
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    const-string v1, "Browse"

    invoke-direct {v0, v1, v4, v4}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 78
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    const-string v1, "Search"

    invoke-direct {v0, v1, v5, v5}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 79
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    const-string v1, "SavedSearch"

    invoke-direct {v0, v1, v6, v6}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 80
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    const-string v1, "AllShares"

    invoke-direct {v0, v1, v7, v7}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 81
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    const-string v1, "RecentChanges"

    invoke-direct {v0, v1, v8, v8}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 82
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    const-string v1, "RecentUpload"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    aput-object v1, v0, v5

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    aput-object v1, v0, v6

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    aput-object v1, v0, v7

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->key_id:I

    .line 86
    return-void
.end method

.method public static getType(I)Lnet/yostore/aws/dto/BrowseToObject$BrowseType;
    .locals 1
    .parameter "id"

    .prologue
    .line 89
    packed-switch p0, :pswitch_data_0

    .line 103
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    goto :goto_0

    .line 93
    :pswitch_1
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    goto :goto_0

    .line 95
    :pswitch_2
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    goto :goto_0

    .line 97
    :pswitch_3
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    goto :goto_0

    .line 99
    :pswitch_4
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    goto :goto_0

    .line 101
    :pswitch_5
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/dto/BrowseToObject$BrowseType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/dto/BrowseToObject$BrowseType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->key_id:I

    return v0
.end method

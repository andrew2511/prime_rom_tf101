.class public final enum Lnet/yostore/aws/dto/BrowseToObject$SortBy;
.super Ljava/lang/Enum;
.source "BrowseToObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/dto/BrowseToObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/dto/BrowseToObject$SortBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$SortBy;

.field public static final enum LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

.field public static final enum RawEntryName:Lnet/yostore/aws/dto/BrowseToObject$SortBy;


# instance fields
.field private final key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 26
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    const-string v1, "RawEntryName"

    invoke-direct {v0, v1, v3, v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->RawEntryName:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 27
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    const-string v1, "LastChangeTime"

    invoke-direct {v0, v1, v2, v4}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 25
    new-array v0, v4, [Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->RawEntryName:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    aput-object v1, v0, v2

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->key_id:I

    .line 31
    return-void
.end method

.method public static getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;
    .locals 1
    .parameter "id"

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 40
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->RawEntryName:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    goto :goto_0

    .line 38
    :pswitch_1
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/dto/BrowseToObject$SortBy;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/dto/BrowseToObject$SortBy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->key_id:I

    return v0
.end method

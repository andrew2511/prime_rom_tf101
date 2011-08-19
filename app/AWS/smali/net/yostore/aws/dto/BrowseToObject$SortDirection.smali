.class public final enum Lnet/yostore/aws/dto/BrowseToObject$SortDirection;
.super Ljava/lang/Enum;
.source "BrowseToObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/dto/BrowseToObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/dto/BrowseToObject$SortDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

.field public static final enum DESC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$SortDirection;


# instance fields
.field private final key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    const-string v1, "ASC"

    invoke-direct {v0, v1, v2, v2}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 53
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    const-string v1, "DESC"

    invoke-direct {v0, v1, v3, v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->DESC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->DESC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    aput-object v1, v0, v3

    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->key_id:I

    .line 57
    return-void
.end method

.method public static getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;
    .locals 1
    .parameter "id"

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 66
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->DESC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/dto/BrowseToObject$SortDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ENUM$VALUES:[Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->key_id:I

    return v0
.end method

.class public final enum Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;
.super Ljava/lang/Enum;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/sqlite/entity/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

.field public static final enum off_completed:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

.field public static final enum off_incompleted:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

.field public static final enum off_ood:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

.field public static final enum online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;


# instance fields
.field private final key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    const-string v1, "online"

    invoke-direct {v0, v1, v2, v2}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 7
    new-instance v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    const-string v1, "off_incompleted"

    invoke-direct {v0, v1, v3, v3}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_incompleted:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 8
    new-instance v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    const-string v1, "off_completed"

    invoke-direct {v0, v1, v4, v4}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_completed:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 9
    new-instance v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    const-string v1, "off_ood"

    invoke-direct {v0, v1, v5, v5}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_ood:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_incompleted:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_completed:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_ood:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->key_id:I

    .line 13
    return-void
.end method

.method public static getStatus(I)Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;
    .locals 1
    .parameter "id"

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 28
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    goto :goto_0

    .line 22
    :pswitch_1
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_incompleted:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    goto :goto_0

    .line 24
    :pswitch_2
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_completed:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    goto :goto_0

    .line 26
    :pswitch_3
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_ood:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->key_id:I

    return v0
.end method

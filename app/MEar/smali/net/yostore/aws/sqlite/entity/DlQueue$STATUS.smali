.class public final enum Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;
.super Ljava/lang/Enum;
.source "DlQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/sqlite/entity/DlQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

.field public static final enum DOWNLOADING:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

.field public static final enum PAUSED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

.field public static final enum QUEUED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

.field public static final enum SKIPED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;


# instance fields
.field private final key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v2, v2}, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->QUEUED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 6
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3, v3}, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->DOWNLOADING:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 7
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4, v4}, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->COMPLETED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 8
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5, v5}, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->PAUSED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 9
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    const-string v1, "SKIPED"

    invoke-direct {v0, v1, v6, v6}, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->SKIPED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    sget-object v1, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->QUEUED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->DOWNLOADING:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->COMPLETED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->PAUSED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->SKIPED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    aput-object v1, v0, v6

    sput-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

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
    iput p3, p0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->key_id:I

    .line 13
    return-void
.end method

.method public static getStatus(I)Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;
    .locals 1
    .parameter "id"

    .prologue
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 28
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->QUEUED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->QUEUED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    goto :goto_0

    .line 20
    :pswitch_1
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->DOWNLOADING:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    goto :goto_0

    .line 22
    :pswitch_2
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->COMPLETED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    goto :goto_0

    .line 24
    :pswitch_3
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->PAUSED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    goto :goto_0

    .line 26
    :pswitch_4
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->SKIPED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->key_id:I

    return v0
.end method

.class public final enum Lnet/yostore/aws/api/entity/EntryInfo$KIND;
.super Ljava/lang/Enum;
.source "EntryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/api/entity/EntryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KIND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/api/entity/EntryInfo$KIND;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/api/entity/EntryInfo$KIND;

.field public static final enum FILE:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

.field public static final enum FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;


# instance fields
.field private final key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2, v2}, Lnet/yostore/aws/api/entity/EntryInfo$KIND;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 36
    new-instance v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v3, v3}, Lnet/yostore/aws/api/entity/EntryInfo$KIND;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 37
    new-instance v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v4, v4}, Lnet/yostore/aws/api/entity/EntryInfo$KIND;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FILE:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    sget-object v1, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FILE:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    aput-object v1, v0, v4

    sput-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ENUM$VALUES:[Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->key_id:I

    .line 40
    return-void
.end method

.method public static getKind(I)Lnet/yostore/aws/api/entity/EntryInfo$KIND;
    .locals 1
    .parameter "id"

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 51
    sget-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    goto :goto_0

    .line 47
    :pswitch_1
    sget-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    goto :goto_0

    .line 49
    :pswitch_2
    sget-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FILE:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/api/entity/EntryInfo$KIND;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/api/entity/EntryInfo$KIND;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ENUM$VALUES:[Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->key_id:I

    return v0
.end method

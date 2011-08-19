.class public final enum Lcom/ecareme/pixwe/service/UploadService$STATUS;
.super Ljava/lang/Enum;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/service/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ecareme/pixwe/service/UploadService$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLD:Lcom/ecareme/pixwe/service/UploadService$STATUS;

.field public static final enum COOL:Lcom/ecareme/pixwe/service/UploadService$STATUS;

.field private static final synthetic ENUM$VALUES:[Lcom/ecareme/pixwe/service/UploadService$STATUS;

.field public static final enum FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

.field public static final enum HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

.field public static final enum IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

.field public static final enum WARM:Lcom/ecareme/pixwe/service/UploadService$STATUS;


# instance fields
.field private key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 367
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;

    const-string v1, "HOT"

    invoke-direct {v0, v1, v4, v4}, Lcom/ecareme/pixwe/service/UploadService$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 368
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;

    const-string v1, "WARM"

    invoke-direct {v0, v1, v5, v5}, Lcom/ecareme/pixwe/service/UploadService$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->WARM:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 369
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;

    const-string v1, "COOL"

    invoke-direct {v0, v1, v6, v6}, Lcom/ecareme/pixwe/service/UploadService$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->COOL:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 370
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;

    const-string v1, "COLD"

    invoke-direct {v0, v1, v7, v7}, Lcom/ecareme/pixwe/service/UploadService$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->COLD:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 371
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;

    const-string v1, "FREEZE"

    invoke-direct {v0, v1, v8, v8}, Lcom/ecareme/pixwe/service/UploadService$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 372
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;

    const-string v1, "IDLE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/pixwe/service/UploadService$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 366
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->WARM:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->COOL:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->COLD:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ENUM$VALUES:[Lcom/ecareme/pixwe/service/UploadService$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 374
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 375
    iput p3, p0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->key_id:I

    .line 376
    return-void
.end method

.method public static getStatus(I)Lcom/ecareme/pixwe/service/UploadService$STATUS;
    .locals 1
    .parameter "id"

    .prologue
    .line 379
    sparse-switch p0, :sswitch_data_0

    .line 391
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    :goto_0
    return-object v0

    .line 381
    :sswitch_0
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    goto :goto_0

    .line 383
    :sswitch_1
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->WARM:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    goto :goto_0

    .line 385
    :sswitch_2
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->COOL:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    goto :goto_0

    .line 387
    :sswitch_3
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->COLD:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    goto :goto_0

    .line 389
    :sswitch_4
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    goto :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x2710 -> :sswitch_2
        0x186a0 -> :sswitch_3
        0xf4240 -> :sswitch_4
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecareme/pixwe/service/UploadService$STATUS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecareme/pixwe/service/UploadService$STATUS;

    return-object p0
.end method

.method public static values()[Lcom/ecareme/pixwe/service/UploadService$STATUS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ENUM$VALUES:[Lcom/ecareme/pixwe/service/UploadService$STATUS;

    array-length v1, v0

    new-array v2, v1, [Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public cooling()V
    .locals 2

    .prologue
    .line 402
    iget v0, p0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->key_id:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->key_id:I

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 403
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->key_id:I

    .line 404
    :cond_0
    return-void
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->key_id:I

    return v0
.end method

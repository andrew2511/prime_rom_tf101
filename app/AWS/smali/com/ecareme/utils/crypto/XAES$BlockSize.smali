.class final enum Lcom/ecareme/utils/crypto/XAES$BlockSize;
.super Ljava/lang/Enum;
.source "XAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/crypto/XAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BlockSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ecareme/utils/crypto/XAES$BlockSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BlockSize128:Lcom/ecareme/utils/crypto/XAES$BlockSize;

.field public static final enum BlockSize192:Lcom/ecareme/utils/crypto/XAES$BlockSize;

.field public static final enum BlockSize256:Lcom/ecareme/utils/crypto/XAES$BlockSize;

.field private static final synthetic ENUM$VALUES:[Lcom/ecareme/utils/crypto/XAES$BlockSize;


# instance fields
.field private final bit:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;

    const-string v1, "BlockSize128"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/ecareme/utils/crypto/XAES$BlockSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;->BlockSize128:Lcom/ecareme/utils/crypto/XAES$BlockSize;

    .line 65
    new-instance v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;

    const-string v1, "BlockSize192"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/ecareme/utils/crypto/XAES$BlockSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;->BlockSize192:Lcom/ecareme/utils/crypto/XAES$BlockSize;

    .line 66
    new-instance v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;

    const-string v1, "BlockSize256"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v2}, Lcom/ecareme/utils/crypto/XAES$BlockSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;->BlockSize256:Lcom/ecareme/utils/crypto/XAES$BlockSize;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ecareme/utils/crypto/XAES$BlockSize;

    sget-object v1, Lcom/ecareme/utils/crypto/XAES$BlockSize;->BlockSize128:Lcom/ecareme/utils/crypto/XAES$BlockSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ecareme/utils/crypto/XAES$BlockSize;->BlockSize192:Lcom/ecareme/utils/crypto/XAES$BlockSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ecareme/utils/crypto/XAES$BlockSize;->BlockSize256:Lcom/ecareme/utils/crypto/XAES$BlockSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;->ENUM$VALUES:[Lcom/ecareme/utils/crypto/XAES$BlockSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "bit"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/ecareme/utils/crypto/XAES$BlockSize;->bit:I

    .line 73
    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/utils/crypto/XAES$BlockSize;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/ecareme/utils/crypto/XAES$BlockSize;->bit:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecareme/utils/crypto/XAES$BlockSize;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecareme/utils/crypto/XAES$BlockSize;

    return-object p0
.end method

.method public static values()[Lcom/ecareme/utils/crypto/XAES$BlockSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ecareme/utils/crypto/XAES$BlockSize;->ENUM$VALUES:[Lcom/ecareme/utils/crypto/XAES$BlockSize;

    array-length v1, v0

    new-array v2, v1, [Lcom/ecareme/utils/crypto/XAES$BlockSize;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getBit()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ecareme/utils/crypto/XAES$BlockSize;->bit:I

    return v0
.end method

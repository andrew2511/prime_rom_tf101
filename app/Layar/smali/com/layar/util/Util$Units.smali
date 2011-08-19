.class public final enum Lcom/layar/util/Util$Units;
.super Ljava/lang/Enum;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Units"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layar/util/Util$Units;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/layar/util/Util$Units;

.field public static final enum METRIC:Lcom/layar/util/Util$Units;

.field public static final enum US:Lcom/layar/util/Util$Units;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/layar/util/Util$Units;

    const-string v1, "METRIC"

    invoke-direct {v0, v1, v2}, Lcom/layar/util/Util$Units;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/util/Util$Units;->METRIC:Lcom/layar/util/Util$Units;

    new-instance v0, Lcom/layar/util/Util$Units;

    const-string v1, "US"

    invoke-direct {v0, v1, v3}, Lcom/layar/util/Util$Units;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/util/Util$Units;->US:Lcom/layar/util/Util$Units;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layar/util/Util$Units;

    sget-object v1, Lcom/layar/util/Util$Units;->METRIC:Lcom/layar/util/Util$Units;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layar/util/Util$Units;->US:Lcom/layar/util/Util$Units;

    aput-object v1, v0, v3

    sput-object v0, Lcom/layar/util/Util$Units;->ENUM$VALUES:[Lcom/layar/util/Util$Units;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layar/util/Util$Units;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/layar/util/Util$Units;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/layar/util/Util$Units;

    return-object p0
.end method

.method public static values()[Lcom/layar/util/Util$Units;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/layar/util/Util$Units;->ENUM$VALUES:[Lcom/layar/util/Util$Units;

    array-length v1, v0

    new-array v2, v1, [Lcom/layar/util/Util$Units;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

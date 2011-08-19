.class public final enum Lcom/layar/data/user/UserState;
.super Ljava/lang/Enum;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layar/data/user/UserState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVATED:Lcom/layar/data/user/UserState; = null

.field private static final synthetic ENUM$VALUES:[Lcom/layar/data/user/UserState; = null

.field public static final enum NOT_ACTIVATED:Lcom/layar/data/user/UserState; = null

.field public static final TAG:Ljava/lang/String; = "UserState"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/layar/data/user/UserState;

    const-string v1, "NOT_ACTIVATED"

    invoke-direct {v0, v1, v2}, Lcom/layar/data/user/UserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/user/UserState;->NOT_ACTIVATED:Lcom/layar/data/user/UserState;

    new-instance v0, Lcom/layar/data/user/UserState;

    const-string v1, "ACTIVATED"

    invoke-direct {v0, v1, v3}, Lcom/layar/data/user/UserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/user/UserState;->ACTIVATED:Lcom/layar/data/user/UserState;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layar/data/user/UserState;

    sget-object v1, Lcom/layar/data/user/UserState;->NOT_ACTIVATED:Lcom/layar/data/user/UserState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layar/data/user/UserState;->ACTIVATED:Lcom/layar/data/user/UserState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/layar/data/user/UserState;->ENUM$VALUES:[Lcom/layar/data/user/UserState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/layar/data/user/UserState;
    .locals 2
    .parameter "string"

    .prologue
    .line 16
    const-string v0, "not_activated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/layar/data/user/UserState;->NOT_ACTIVATED:Lcom/layar/data/user/UserState;

    .line 22
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const-string v0, "activated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    sget-object v0, Lcom/layar/data/user/UserState;->ACTIVATED:Lcom/layar/data/user/UserState;

    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "UserState"

    const-string v1, "Unrecognized user state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/layar/data/user/UserState;->ACTIVATED:Lcom/layar/data/user/UserState;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layar/data/user/UserState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/layar/data/user/UserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/layar/data/user/UserState;

    return-object p0
.end method

.method public static values()[Lcom/layar/data/user/UserState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/layar/data/user/UserState;->ENUM$VALUES:[Lcom/layar/data/user/UserState;

    array-length v1, v0

    new-array v2, v1, [Lcom/layar/data/user/UserState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

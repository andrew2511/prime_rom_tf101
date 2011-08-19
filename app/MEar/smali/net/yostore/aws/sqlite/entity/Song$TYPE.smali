.class public final enum Lnet/yostore/aws/sqlite/entity/Song$TYPE;
.super Ljava/lang/Enum;
.source "Song.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/sqlite/entity/Song;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/sqlite/entity/Song$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/Song$TYPE;

.field public static final enum Offline:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

.field public static final enum Online:Lnet/yostore/aws/sqlite/entity/Song$TYPE;


# instance fields
.field private final key_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    const-string v1, "Online"

    invoke-direct {v0, v1, v2, v2}, Lnet/yostore/aws/sqlite/entity/Song$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Online:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    .line 7
    new-instance v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    const-string v1, "Offline"

    invoke-direct {v0, v1, v3, v3}, Lnet/yostore/aws/sqlite/entity/Song$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Offline:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    sget-object v1, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Online:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Offline:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "key_id"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->key_id:I

    .line 11
    return-void
.end method

.method public static getType(I)Lnet/yostore/aws/sqlite/entity/Song$TYPE;
    .locals 1
    .parameter "id"

    .prologue
    .line 14
    if-nez p0, :cond_0

    sget-object v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Online:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    .line 15
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Offline:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/Song$TYPE;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/sqlite/entity/Song$TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->ENUM$VALUES:[Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->key_id:I

    return v0
.end method

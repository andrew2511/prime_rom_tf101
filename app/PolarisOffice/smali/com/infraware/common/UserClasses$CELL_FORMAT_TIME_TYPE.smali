.class public final enum Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
.super Ljava/lang/Enum;
.source "UserClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UserClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CELL_FORMAT_TIME_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

.field public static final enum TIME_TYPE_TIME_1:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

.field public static final enum TIME_TYPE_TIME_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

.field public static final enum TIME_TYPE_TIME_3:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

.field public static final enum TIME_TYPE_TIME_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

.field public static final enum TIME_TYPE_TIME_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    new-instance v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    const-string v1, "TIME_TYPE_TIME_1"

    invoke-direct {v0, v1, v2}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_1:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    .line 396
    new-instance v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    const-string v1, "TIME_TYPE_TIME_2"

    invoke-direct {v0, v1, v3}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    .line 397
    new-instance v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    const-string v1, "TIME_TYPE_TIME_3"

    invoke-direct {v0, v1, v4}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_3:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    .line 398
    new-instance v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    const-string v1, "TIME_TYPE_TIME_4"

    invoke-direct {v0, v1, v5}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    .line 399
    new-instance v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    const-string v1, "TIME_TYPE_TIME_COMBINED"

    invoke-direct {v0, v1, v6}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    .line 393
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_1:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_3:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->ENUM$VALUES:[Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->ENUM$VALUES:[Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

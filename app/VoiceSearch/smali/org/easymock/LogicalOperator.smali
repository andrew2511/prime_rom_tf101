.class public abstract enum Lorg/easymock/LogicalOperator;
.super Ljava/lang/Enum;
.source "LogicalOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/easymock/LogicalOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/easymock/LogicalOperator;

.field public static final enum EQUAL:Lorg/easymock/LogicalOperator;

.field public static final enum GREATER:Lorg/easymock/LogicalOperator;

.field public static final enum GREATER_OR_EQUAL:Lorg/easymock/LogicalOperator;

.field public static final enum LESS_OR_EQUAL:Lorg/easymock/LogicalOperator;

.field public static final enum LESS_THAN:Lorg/easymock/LogicalOperator;


# instance fields
.field private symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lorg/easymock/LogicalOperator$1;

    const-string v1, "LESS_THAN"

    const-string v2, "<"

    invoke-direct {v0, v1, v3, v2}, Lorg/easymock/LogicalOperator$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/easymock/LogicalOperator;->LESS_THAN:Lorg/easymock/LogicalOperator;

    .line 16
    new-instance v0, Lorg/easymock/LogicalOperator$2;

    const-string v1, "LESS_OR_EQUAL"

    const-string v2, "<="

    invoke-direct {v0, v1, v4, v2}, Lorg/easymock/LogicalOperator$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/easymock/LogicalOperator;->LESS_OR_EQUAL:Lorg/easymock/LogicalOperator;

    .line 21
    new-instance v0, Lorg/easymock/LogicalOperator$3;

    const-string v1, "EQUAL"

    const-string v2, "=="

    invoke-direct {v0, v1, v5, v2}, Lorg/easymock/LogicalOperator$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/easymock/LogicalOperator;->EQUAL:Lorg/easymock/LogicalOperator;

    .line 26
    new-instance v0, Lorg/easymock/LogicalOperator$4;

    const-string v1, "GREATER_OR_EQUAL"

    const-string v2, ">="

    invoke-direct {v0, v1, v6, v2}, Lorg/easymock/LogicalOperator$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/easymock/LogicalOperator;->GREATER_OR_EQUAL:Lorg/easymock/LogicalOperator;

    .line 31
    new-instance v0, Lorg/easymock/LogicalOperator$5;

    const-string v1, "GREATER"

    const-string v2, ">"

    invoke-direct {v0, v1, v7, v2}, Lorg/easymock/LogicalOperator$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/easymock/LogicalOperator;->GREATER:Lorg/easymock/LogicalOperator;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/easymock/LogicalOperator;

    sget-object v1, Lorg/easymock/LogicalOperator;->LESS_THAN:Lorg/easymock/LogicalOperator;

    aput-object v1, v0, v3

    sget-object v1, Lorg/easymock/LogicalOperator;->LESS_OR_EQUAL:Lorg/easymock/LogicalOperator;

    aput-object v1, v0, v4

    sget-object v1, Lorg/easymock/LogicalOperator;->EQUAL:Lorg/easymock/LogicalOperator;

    aput-object v1, v0, v5

    sget-object v1, Lorg/easymock/LogicalOperator;->GREATER_OR_EQUAL:Lorg/easymock/LogicalOperator;

    aput-object v1, v0, v6

    sget-object v1, Lorg/easymock/LogicalOperator;->GREATER:Lorg/easymock/LogicalOperator;

    aput-object v1, v0, v7

    sput-object v0, Lorg/easymock/LogicalOperator;->$VALUES:[Lorg/easymock/LogicalOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lorg/easymock/LogicalOperator;->symbol:Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/easymock/LogicalOperator$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lorg/easymock/LogicalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/easymock/LogicalOperator;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lorg/easymock/LogicalOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/easymock/LogicalOperator;

    return-object p0
.end method

.method public static values()[Lorg/easymock/LogicalOperator;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/easymock/LogicalOperator;->$VALUES:[Lorg/easymock/LogicalOperator;

    invoke-virtual {v0}, [Lorg/easymock/LogicalOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/easymock/LogicalOperator;

    return-object v0
.end method


# virtual methods
.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/easymock/LogicalOperator;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public abstract matchResult(I)Z
.end method

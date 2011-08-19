.class public final enum Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
.super Ljava/lang/Enum;
.source "StoreUrlBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreUrlBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const-string v1, "LEARN"

    const-string v2, "detail"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 125
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const-string v1, "BUY"

    const-string v2, "buy"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 129
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const-string v1, "STORE"

    const-string v2, "store"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->$VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->code:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
    .locals 1
    .parameter

    .prologue
    .line 115
    const-class v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->$VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->code:Ljava/lang/String;

    return-object v0
.end method

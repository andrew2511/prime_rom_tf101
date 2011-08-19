.class public Lcom/amazon/foundation/internal/performance/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# instance fields
.field private final id:B

.field private final name:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/amazon/foundation/internal/performance/Counter;->value:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/Counter;->name:Ljava/lang/String;

    .line 35
    iput-byte v1, p0, Lcom/amazon/foundation/internal/performance/Counter;->id:B

    .line 37
    return-void
.end method


# virtual methods
.method public final getID()B
    .locals 1

    .prologue
    .line 128
    iget-byte v0, p0, Lcom/amazon/foundation/internal/performance/Counter;->id:B

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/Counter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public final increment()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public final increment(I)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 66
    return-void
.end method

.method public final setValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 81
    return-void
.end method

.method protected updateValue()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

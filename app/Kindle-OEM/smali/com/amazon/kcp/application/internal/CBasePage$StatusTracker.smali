.class Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;
.super Lcom/amazon/foundation/AbstractStatusTracker;
.source "CBasePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CBasePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusTracker"
.end annotation


# instance fields
.field private hasState:Z

.field private state:Ljava/lang/String;

.field private substate:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazon/foundation/AbstractStatusTracker;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->hasState:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/internal/CBasePage$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->hasState:Z

    .line 75
    iput-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->state:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->substate:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getSubstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->substate:Ljava/lang/String;

    return-object v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->hasState:Z

    return v0
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->state:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->substate:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->hasState:Z

    .line 55
    return-void
.end method

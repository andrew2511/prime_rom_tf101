.class Lcom/infraware/evengine/EvSetViewModeObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eViewMode:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;I)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eViewMode"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 337
    iput p2, p0, Lcom/infraware/evengine/EvSetViewModeObj;->m_eViewMode:I

    .line 338
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/infraware/evengine/EvSetViewModeObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvSetViewModeObj;->m_eViewMode:I

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->ISetViewMode(I)V

    .line 343
    return-void
.end method

.class Lcom/infraware/evengine/EvFlickObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_nVelocityX:I

.field private m_nVelocityY:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;II)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_nVelocityX"
    .parameter "a_nVelocityY"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 208
    iput p2, p0, Lcom/infraware/evengine/EvFlickObj;->m_nVelocityX:I

    .line 209
    iput p3, p0, Lcom/infraware/evengine/EvFlickObj;->m_nVelocityY:I

    .line 210
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/infraware/evengine/EvFlickObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvFlickObj;->m_nVelocityX:I

    iget v2, p0, Lcom/infraware/evengine/EvFlickObj;->m_nVelocityY:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/EvNative;->IFlick(II)V

    .line 215
    return-void
.end method

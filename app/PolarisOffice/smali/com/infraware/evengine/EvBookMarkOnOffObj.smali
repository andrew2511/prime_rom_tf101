.class Lcom/infraware/evengine/EvBookMarkOnOffObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bOn:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;I)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_bOn"

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 474
    iput p2, p0, Lcom/infraware/evengine/EvBookMarkOnOffObj;->m_bOn:I

    .line 475
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/infraware/evengine/EvBookMarkOnOffObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvBookMarkOnOffObj;->m_bOn:I

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IBookMarkOnOff(I)V

    .line 480
    return-void
.end method

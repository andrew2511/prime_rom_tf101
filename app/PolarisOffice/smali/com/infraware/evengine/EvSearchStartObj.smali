.class Lcom/infraware/evengine/EvSearchStartObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bCase:I

.field private m_bDirUp:I

.field private m_bFixedZoom:I

.field private m_bMatchWord:I

.field private m_sFind:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;Ljava/lang/String;IIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_sFind"
    .parameter "a_bMatchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_bFixedZoom"

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 582
    iput-object p2, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_sFind:Ljava/lang/String;

    .line 583
    iput p3, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_bMatchWord:I

    .line 584
    iput p4, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_bCase:I

    .line 585
    iput p5, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_bDirUp:I

    .line 586
    iput p6, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_bFixedZoom:I

    .line 587
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 6

    .prologue
    .line 591
    iget-object v0, p0, Lcom/infraware/evengine/EvSearchStartObj;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_sFind:Ljava/lang/String;

    iget v2, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_bMatchWord:I

    iget v3, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_bCase:I

    iget v4, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_bDirUp:I

    iget v5, p0, Lcom/infraware/evengine/EvSearchStartObj;->m_bFixedZoom:I

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISearchStart(Ljava/lang/String;IIII)V

    .line 592
    return-void
.end method

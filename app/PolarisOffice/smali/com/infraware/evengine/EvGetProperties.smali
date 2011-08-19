.class Lcom/infraware/evengine/EvGetProperties;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field m_Properties:Lcom/infraware/evengine/EV$PROPERTIES;


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;Lcom/infraware/evengine/EV$PROPERTIES;)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_Properties"

    .prologue
    .line 805
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 806
    iput-object p2, p0, Lcom/infraware/evengine/EvGetProperties;->m_Properties:Lcom/infraware/evengine/EV$PROPERTIES;

    .line 807
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/infraware/evengine/EvGetProperties;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvGetProperties;->m_Properties:Lcom/infraware/evengine/EV$PROPERTIES;

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V

    .line 812
    return-void
.end method

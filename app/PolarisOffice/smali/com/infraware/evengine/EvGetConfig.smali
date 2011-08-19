.class Lcom/infraware/evengine/EvGetConfig;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_ConfigInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;Lcom/infraware/evengine/EV$CONFIG_INFO;)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_ConfigInfo"

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 790
    iput-object p2, p0, Lcom/infraware/evengine/EvGetConfig;->m_ConfigInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;

    .line 791
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/infraware/evengine/EvGetConfig;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvGetConfig;->m_ConfigInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetConfig(Lcom/infraware/evengine/EV$CONFIG_INFO;)V

    .line 796
    return-void
.end method

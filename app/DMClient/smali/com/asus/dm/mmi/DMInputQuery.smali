.class public Lcom/asus/dm/mmi/DMInputQuery;
.super Lcom/asus/dm/mmi/DMMMIView;
.source "DMInputQuery.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiInputQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/mmi/DMInputQuery$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter "pObserver"
    .parameter "pService"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/mmi/DMMMIView;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/dm/DMService;)V

    .line 15
    return-void
.end method


# virtual methods
.method public display(Lcom/asus/dmlib/vdm/MmiViewContext;Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;ILjava/lang/String;)Lcom/asus/dmlib/vdm/MmiResult;
    .locals 4
    .parameter "pContext"
    .parameter "pInputType"
    .parameter "pEchoType"
    .parameter "pMaxLength"
    .parameter "pDefaultInput"

    .prologue
    .line 20
    const-string v1, "vDM Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========================================\nMyInputQuery.display\t input type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " echo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " default text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n========================================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/asus/dm/mmi/DMInputQuery;->setupUIAlertParaDescriptor(Lcom/asus/dmlib/vdm/MmiViewContext;)Lcom/asus/dm/UIAlertParaDescriptor;

    move-result-object v0

    .line 28
    .local v0, paraDescriptor:Lcom/asus/dm/UIAlertParaDescriptor;
    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/asus/dm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    .line 29
    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/asus/dm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    .line 30
    iput-object p5, v0, Lcom/asus/dm/UIAlertParaDescriptor;->mDefaultInput:Ljava/lang/String;

    .line 32
    sget-object v1, Lcom/asus/dm/mmi/DMInputQuery$1;->$SwitchMap$com$asus$dmlib$vdm$MmiInputQuery$InputType:[I

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_0
    sget-object v1, Lcom/asus/dmlib/vdm/MmiResult;->OK:Lcom/asus/dmlib/vdm/MmiResult;

    return-object v1

    .line 38
    :pswitch_0
    sget-object v1, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_INPUT:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {p0, v0, v1}, Lcom/asus/dm/mmi/DMInputQuery;->notifyDMServiceShowUIAlertDialog(Lcom/asus/dm/UIAlertParaDescriptor;Lcom/asus/dm/DMService$DialogId;)V

    goto :goto_0

    .line 41
    :pswitch_1
    sget-object v1, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_DATE_INPUT:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {p0, v0, v1}, Lcom/asus/dm/mmi/DMInputQuery;->notifyDMServiceShowUIAlertDialog(Lcom/asus/dm/UIAlertParaDescriptor;Lcom/asus/dm/DMService$DialogId;)V

    goto :goto_0

    .line 44
    :pswitch_2
    sget-object v1, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_TIME_INPUT:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {p0, v0, v1}, Lcom/asus/dm/mmi/DMInputQuery;->notifyDMServiceShowUIAlertDialog(Lcom/asus/dm/UIAlertParaDescriptor;Lcom/asus/dm/DMService$DialogId;)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

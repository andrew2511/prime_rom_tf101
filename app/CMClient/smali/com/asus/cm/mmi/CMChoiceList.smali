.class public Lcom/asus/cm/mmi/CMChoiceList;
.super Lcom/asus/cm/mmi/CMMMIView;
.source "CMChoiceList.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiChoiceList;


# instance fields
.field protected mMMIContext:Lcom/asus/dmlib/vdm/MmiViewContext;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "pObserver"
    .parameter "pService"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/asus/cm/mmi/CMMMIView;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V

    .line 16
    return-void
.end method


# virtual methods
.method public display(Lcom/asus/dmlib/vdm/MmiViewContext;[Ljava/lang/String;IZ)Lcom/asus/dmlib/vdm/MmiResult;
    .locals 6
    .parameter "pContext"
    .parameter "pItems"
    .parameter "pBitflags"
    .parameter "pIsMultipleSelection"

    .prologue
    .line 20
    const-string v3, "vDM Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MyChoiceList.display\t mulitple = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 23
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p3

    if-eqz v3, :cond_0

    .line 24
    const-string v0, "*"

    .line 28
    .local v0, box:Ljava/lang/String;
    :goto_1
    const-string v3, "vDM Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "| "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    .end local v0           #box:Ljava/lang/String;
    :cond_0
    const-string v0, " "

    .restart local v0       #box:Ljava/lang/String;
    goto :goto_1

    .line 31
    .end local v0           #box:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/asus/cm/mmi/CMChoiceList;->setupUIAlertParaDescriptor(Lcom/asus/dmlib/vdm/MmiViewContext;)Lcom/asus/cm/UIAlertParaDescriptor;

    move-result-object v2

    .line 32
    .local v2, paraDescriptor:Lcom/asus/cm/UIAlertParaDescriptor;
    iput-object p2, v2, Lcom/asus/cm/UIAlertParaDescriptor;->mChoiceOptions:[Ljava/lang/String;

    .line 33
    iput p3, v2, Lcom/asus/cm/UIAlertParaDescriptor;->mChoicedFlag:I

    .line 35
    if-eqz p4, :cond_2

    .line 36
    sget-object v3, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_MULTIPLE_CHOICE:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {p0, v2, v3}, Lcom/asus/cm/mmi/CMChoiceList;->notifyDMServiceShowUIAlertDialog(Lcom/asus/cm/UIAlertParaDescriptor;Lcom/asus/cm/CMService$DialogId;)V

    .line 42
    :goto_2
    sget-object v3, Lcom/asus/dmlib/vdm/MmiResult;->OK:Lcom/asus/dmlib/vdm/MmiResult;

    return-object v3

    .line 39
    :cond_2
    sget-object v3, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_SINGLE_CHOICE:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {p0, v2, v3}, Lcom/asus/cm/mmi/CMChoiceList;->notifyDMServiceShowUIAlertDialog(Lcom/asus/cm/UIAlertParaDescriptor;Lcom/asus/cm/CMService$DialogId;)V

    goto :goto_2
.end method

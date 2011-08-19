.class public Lcom/asus/cm/handler/LocationHandler;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeExecuteHandler;


# static fields
.field public static final CONTINUE:I = 0x1

.field public static final MODE_CONTINUE:Ljava/lang/String; = "com.asus.cm.location.continue"

.field public static final MODE_ONESHOT:Ljava/lang/String; = "com.asus.cm.location.oneshot"

.field public static final ONE_SHOT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVerType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "pContext"
    .parameter "handleType"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/cm/handler/LocationHandler;->mVerType:I

    .line 24
    iput p2, p0, Lcom/asus/cm/handler/LocationHandler;->mVerType:I

    .line 25
    iput-object p1, p0, Lcom/asus/cm/handler/LocationHandler;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public execute(Lcom/asus/dmlib/syncml/message/management/Status;Ljava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "correlator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/asus/cm/handler/LocationHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/location/LocationService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    iget v1, p0, Lcom/asus/cm/handler/LocationHandler;->mVerType:I

    packed-switch v1, :pswitch_data_0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/handler/LocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    sget-object v1, Lcom/asus/cm/location/LocmoStatus;->Operation_Succeeded:Lcom/asus/cm/location/LocmoStatus;

    invoke-virtual {v1}, Lcom/asus/cm/location/LocmoStatus;->getResultCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 44
    return-void

    .line 35
    :pswitch_0
    const-string v1, "com.asus.cm.location.oneshot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 38
    :pswitch_1
    const-string v1, "com.asus.cm.location.continue"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

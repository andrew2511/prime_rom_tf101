.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.super Lcom/android/internal/util/HierarchicalState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorState"
.end annotation


# instance fields
.field mErrorNotification:I

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2
    .parameter

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method notify(I)V
    .registers 7
    .parameter "msgType"

    .prologue
    .line 1459
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    .line 1460
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1461
    .local v2, o:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v3, v0

    .line 1462
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    goto :goto_c

    .line 1464
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_1e
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "message"

    .prologue
    .line 1447
    const/4 v0, 0x1

    .line 1448
    .local v0, retValue:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_12

    .line 1454
    const/4 v0, 0x0

    .line 1456
    :goto_7
    return v0

    .line 1450
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1451
    .local v1, who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    goto :goto_7

    .line 1448
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

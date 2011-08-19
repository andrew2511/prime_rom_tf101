.class Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;
.super Lcom/asus/dm/IDMServiceStateCallback$Stub;
.source "SystemUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/SystemUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMServStateCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/asus/dm/SystemUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-direct {p0}, Lcom/asus/dm/IDMServiceStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method public stateChange(II)V
    .locals 1
    .parameter "type"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v0, p1, p2}, Lcom/asus/dm/SystemUpdateActivity;->access$300(Lcom/asus/dm/SystemUpdateActivity;II)V

    .line 172
    return-void
.end method

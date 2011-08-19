.class Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "WirelessStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;->this$0:Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;

    iput-boolean p2, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 297
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "args"

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;->this$0:Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;

    invoke-static {v0}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->access$200(Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 305
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;->this$0:Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;

    invoke-static {v0}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->access$200(Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

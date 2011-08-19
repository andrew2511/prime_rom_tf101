.class Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;
.super Ljava/lang/Object;
.source "BluetoothPbapActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 188
    if-eqz p2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->access$102(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;Z)Z

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->access$102(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;Z)Z

    goto :goto_0
.end method

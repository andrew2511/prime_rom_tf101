.class Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
.super Ljava/lang/Object;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppParamValue"
.end annotation


# instance fields
.field public listStartOffset:I

.field public maxListCount:I

.field public needTag:I

.field public order:Ljava/lang/String;

.field public searchAttr:Ljava/lang/String;

.field public searchValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field public vcard21:Z


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 452
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const v0, 0xffff

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    .line 454
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 455
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 457
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 458
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 460
    return-void
.end method

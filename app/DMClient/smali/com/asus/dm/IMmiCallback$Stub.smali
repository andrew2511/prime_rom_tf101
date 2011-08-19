.class public abstract Lcom/asus/dm/IMmiCallback$Stub;
.super Landroid/os/Binder;
.source "IMmiCallback.java"

# interfaces
.implements Lcom/asus/dm/IMmiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/IMmiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/IMmiCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.asus.dm.IMmiCallback"

.field static final TRANSACTION_doCancelDMSession:I = 0x4

.field static final TRANSACTION_doDownload:I = 0x3

.field static final TRANSACTION_doInstall:I = 0x6

.field static final TRANSACTION_doPostpone:I = 0x7

.field static final TRANSACTION_getDLDescriptor:I = 0x2

.field static final TRANSACTION_getPostQuota:I = 0x9

.field static final TRANSACTION_getUIAlertParaDescriptor:I = 0x8

.field static final TRANSACTION_notifyUIAlertDialogResult:I = 0x1

.field static final TRANSACTION_prepareDLNotification:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.asus.dm.IMmiCallback"

    invoke-virtual {p0, p0, v0}, Lcom/asus/dm/IMmiCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IMmiCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.asus.dm.IMmiCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/asus/dm/IMmiCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/asus/dm/IMmiCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/asus/dm/IMmiCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/asus/dm/IMmiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v6

    .line 55
    .local v2, _arg2:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/asus/dm/IMmiCallback$Stub;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 58
    goto :goto_0

    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Ljava/lang/String;
    :cond_0
    move v2, v7

    .line 53
    goto :goto_1

    .line 62
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_2
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/asus/dm/IMmiCallback$Stub;->getDLDescriptor()Lcom/asus/dm/RBDownloadDescriptor;

    move-result-object v4

    .line 64
    .local v4, _result:Lcom/asus/dm/RBDownloadDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {v4, p3, v6}, Lcom/asus/dm/RBDownloadDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v5, v6

    .line 72
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 76
    .end local v4           #_result:Lcom/asus/dm/RBDownloadDescriptor;
    :sswitch_3
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/asus/dm/IMmiCallback$Stub;->doDownload()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 79
    goto :goto_0

    .line 83
    :sswitch_4
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/asus/dm/IMmiCallback$Stub;->doCancelDMSession(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 88
    goto :goto_0

    .line 92
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v6

    .line 95
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/asus/dm/IMmiCallback$Stub;->prepareDLNotification(Z)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 97
    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v7

    .line 94
    goto :goto_3

    .line 101
    :sswitch_6
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/asus/dm/IMmiCallback$Stub;->doInstall()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 104
    goto/16 :goto_0

    .line 108
    :sswitch_7
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/asus/dm/IMmiCallback$Stub;->doPostpone()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 111
    goto/16 :goto_0

    .line 115
    :sswitch_8
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/asus/dm/IMmiCallback$Stub;->getUIAlertParaDescriptor()Lcom/asus/dm/UIAlertParaDescriptor;

    move-result-object v4

    .line 117
    .local v4, _result:Lcom/asus/dm/UIAlertParaDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v4, p3, v6}, Lcom/asus/dm/UIAlertParaDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v5, v6

    .line 125
    goto/16 :goto_0

    .line 123
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 129
    .end local v4           #_result:Lcom/asus/dm/UIAlertParaDescriptor;
    :sswitch_9
    const-string v5, "com.asus.dm.IMmiCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/asus/dm/IMmiCallback$Stub;->getPostQuota()I

    move-result v4

    .line 131
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 133
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

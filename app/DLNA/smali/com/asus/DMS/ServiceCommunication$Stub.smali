.class public abstract Lcom/asus/DMS/ServiceCommunication$Stub;
.super Landroid/os/Binder;
.source "ServiceCommunication.java"

# interfaces
.implements Lcom/asus/DMS/ServiceCommunication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DMS/ServiceCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DMS/ServiceCommunication$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.asus.DMS.ServiceCommunication"

.field static final TRANSACTION_ClearDatabase:I = 0xc

.field static final TRANSACTION_DisableDMS:I = 0x2

.field static final TRANSACTION_EnableDMS:I = 0x1

.field static final TRANSACTION_ForceUpdate:I = 0x9

.field static final TRANSACTION_IsDMSRunning:I = 0x3

.field static final TRANSACTION_IsUpdating:I = 0xa

.field static final TRANSACTION_RemoveSharedFolder:I = 0x8

.field static final TRANSACTION_Restart:I = 0xb

.field static final TRANSACTION_SetMediaType:I = 0x5

.field static final TRANSACTION_UpdateConfiguration:I = 0x4

.field static final TRANSACTION_addSharedFolder:I = 0x7

.field static final TRANSACTION_setFriendlyName:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p0, p0, v0}, Lcom/asus/DMS/ServiceCommunication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/asus/DMS/ServiceCommunication;
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
    const-string v1, "com.asus.DMS.ServiceCommunication"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/asus/DMS/ServiceCommunication;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/asus/DMS/ServiceCommunication;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/asus/DMS/ServiceCommunication$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/asus/DMS/ServiceCommunication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;->EnableDMS()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 50
    goto :goto_0

    .line 54
    :sswitch_2
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;->DisableDMS()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 57
    goto :goto_0

    .line 61
    :sswitch_3
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;->IsDMSRunning()Z

    move-result v3

    .line 63
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v3, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 65
    goto :goto_0

    :cond_0
    move v4, v6

    .line 64
    goto :goto_1

    .line 69
    .end local v3           #_result:Z
    :sswitch_4
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;->UpdateConfiguration()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 72
    goto :goto_0

    .line 76
    :sswitch_5
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v5

    .line 80
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v5

    .line 82
    .local v1, _arg1:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v2, v5

    .line 83
    .local v2, _arg2:Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/DMS/ServiceCommunication$Stub;->SetMediaType(ZZZ)Z

    move-result v3

    .line 84
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_4

    move v4, v5

    :goto_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 86
    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v3           #_result:Z
    :cond_1
    move v0, v6

    .line 78
    goto :goto_2

    .restart local v0       #_arg0:Z
    :cond_2
    move v1, v6

    .line 80
    goto :goto_3

    .restart local v1       #_arg1:Z
    :cond_3
    move v2, v6

    .line 82
    goto :goto_4

    .restart local v2       #_arg2:Z
    .restart local v3       #_result:Z
    :cond_4
    move v4, v6

    .line 85
    goto :goto_5

    .line 90
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v3           #_result:Z
    :sswitch_6
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/DMS/ServiceCommunication$Stub;->setFriendlyName(Ljava/lang/String;)Z

    move-result v3

    .line 94
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 96
    goto/16 :goto_0

    :cond_5
    move v4, v6

    .line 95
    goto :goto_6

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_7
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/DMS/ServiceCommunication$Stub;->addSharedFolder(Ljava/lang/String;)Z

    move-result v3

    .line 104
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v3, :cond_6

    move v4, v5

    :goto_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 106
    goto/16 :goto_0

    :cond_6
    move v4, v6

    .line 105
    goto :goto_7

    .line 110
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_8
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/DMS/ServiceCommunication$Stub;->RemoveSharedFolder(Ljava/lang/String;)Z

    move-result v3

    .line 114
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_7

    move v4, v5

    :goto_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 116
    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 115
    goto :goto_8

    .line 120
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_9
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;->ForceUpdate()Z

    move-result v3

    .line 122
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_8

    move v4, v5

    :goto_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 124
    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 123
    goto :goto_9

    .line 128
    .end local v3           #_result:Z
    :sswitch_a
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;->IsUpdating()Z

    move-result v3

    .line 130
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v3, :cond_9

    move v4, v5

    :goto_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 132
    goto/16 :goto_0

    :cond_9
    move v4, v6

    .line 131
    goto :goto_a

    .line 136
    .end local v3           #_result:Z
    :sswitch_b
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;->Restart()Z

    move-result v3

    .line 138
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v3, :cond_a

    move v4, v5

    :goto_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 140
    goto/16 :goto_0

    :cond_a
    move v4, v6

    .line 139
    goto :goto_b

    .line 144
    .end local v3           #_result:Z
    :sswitch_c
    const-string v4, "com.asus.DMS.ServiceCommunication"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;->ClearDatabase()Z

    move-result v3

    .line 146
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v3, :cond_b

    move v4, v5

    :goto_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 148
    goto/16 :goto_0

    :cond_b
    move v4, v6

    .line 147
    goto :goto_c

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

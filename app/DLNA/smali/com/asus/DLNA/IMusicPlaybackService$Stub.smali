.class public abstract Lcom/asus/DLNA/IMusicPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMusicPlaybackService.java"

# interfaces
.implements Lcom/asus/DLNA/IMusicPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/IMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DLNA/IMusicPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.asus.DLNA.IMusicPlaybackService"

.field static final TRANSACTION_duration:I = 0x6

.field static final TRANSACTION_isPlaying:I = 0x2

.field static final TRANSACTION_pause:I = 0x4

.field static final TRANSACTION_play:I = 0x5

.field static final TRANSACTION_position:I = 0x7

.field static final TRANSACTION_seek:I = 0x8

.field static final TRANSACTION_setDataSource:I = 0x1

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/asus/DLNA/IMusicPlaybackService;
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
    const-string v1, "com.asus.DLNA.IMusicPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/asus/DLNA/IMusicPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/asus/DLNA/IMusicPlaybackService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/asus/DLNA/IMusicPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->setDataSource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 53
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 55
    goto :goto_0

    :cond_0
    move v3, v5

    .line 54
    goto :goto_1

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_2
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->isPlaying()Z

    move-result v2

    .line 61
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 63
    goto :goto_0

    :cond_1
    move v3, v5

    .line 62
    goto :goto_2

    .line 67
    .end local v2           #_result:Z
    :sswitch_3
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->stop()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 70
    goto :goto_0

    .line 74
    :sswitch_4
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->pause()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 77
    goto :goto_0

    .line 81
    :sswitch_5
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->play()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 84
    goto :goto_0

    .line 88
    :sswitch_6
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->duration()I

    move-result v2

    .line 90
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 92
    goto :goto_0

    .line 96
    .end local v2           #_result:I
    :sswitch_7
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->position()I

    move-result v2

    .line 98
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 100
    goto/16 :goto_0

    .line 104
    .end local v2           #_result:I
    :sswitch_8
    const-string v3, "com.asus.DLNA.IMusicPlaybackService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;->seek(I)I

    move-result v2

    .line 108
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 110
    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

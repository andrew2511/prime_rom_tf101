.class public abstract Lcom/google/android/gtalkservice/IChatSession$Stub;
.super Landroid/os/Binder;
.source "IChatSession.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IChatSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IChatSession"

.field static final TRANSACTION_addRemoteChatListener:I = 0x9

.field static final TRANSACTION_getLightweightNotify:I = 0xc

.field static final TRANSACTION_getParticipants:I = 0x3

.field static final TRANSACTION_getUnsentComposedMessage:I = 0x8

.field static final TRANSACTION_inviteContact:I = 0x4

.field static final TRANSACTION_isGroupChat:I = 0x1

.field static final TRANSACTION_isOffTheRecord:I = 0xb

.field static final TRANSACTION_leave:I = 0x5

.field static final TRANSACTION_markAsRead:I = 0x2

.field static final TRANSACTION_removeRemoteChatListener:I = 0xa

.field static final TRANSACTION_reportEndCause:I = 0xd

.field static final TRANSACTION_reportMissedCall:I = 0xe

.field static final TRANSACTION_saveUnsentComposedMessage:I = 0x7

.field static final TRANSACTION_sendChatMessage:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "com.google.android.gtalkservice.IChatSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/android/gtalkservice/IChatSession;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->isGroupChat()Z

    move-result v4

    .line 55
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v4, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 57
    goto :goto_0

    :cond_0
    move v5, v7

    .line 56
    goto :goto_1

    .line 61
    .end local v4           #_result:Z
    :sswitch_2
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->markAsRead()V

    move v5, v6

    .line 63
    goto :goto_0

    .line 67
    :sswitch_3
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getParticipants()[Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 71
    goto :goto_0

    .line 75
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->inviteContact(Ljava/lang/String;)V

    move v5, v6

    .line 79
    goto :goto_0

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->leave()V

    move v5, v6

    .line 85
    goto :goto_0

    .line 89
    :sswitch_6
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->sendChatMessage(Ljava/lang/String;)V

    move v5, v6

    .line 93
    goto :goto_0

    .line 97
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->saveUnsentComposedMessage(Ljava/lang/String;)V

    move v5, v6

    .line 101
    goto :goto_0

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getUnsentComposedMessage()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 109
    goto :goto_0

    .line 113
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 116
    .local v0, _arg0:Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 118
    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_a
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 125
    .restart local v0       #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 127
    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_b
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->isOffTheRecord()Z

    move-result v4

    .line 133
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 135
    goto/16 :goto_0

    :cond_1
    move v5, v7

    .line 134
    goto :goto_2

    .line 139
    .end local v4           #_result:Z
    :sswitch_c
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getLightweightNotify()Z

    move-result v4

    .line 141
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v4, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 143
    goto/16 :goto_0

    :cond_2
    move v5, v7

    .line 142
    goto :goto_3

    .line 147
    .end local v4           #_result:Z
    :sswitch_d
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v6

    .line 153
    .local v1, _arg1:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/IChatSession$Stub;->reportEndCause(Ljava/lang/String;ZI)V

    move v5, v6

    .line 155
    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    :cond_3
    move v1, v7

    .line 151
    goto :goto_4

    .line 159
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_e
    const-string v5, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v2, v6

    .line 167
    .local v2, _arg2:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v3, v6

    .line 168
    .local v3, _arg3:Z
    :goto_6
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gtalkservice/IChatSession$Stub;->reportMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V

    move v5, v6

    .line 169
    goto/16 :goto_0

    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Z
    :cond_4
    move v2, v7

    .line 165
    goto :goto_5

    .restart local v2       #_arg2:Z
    :cond_5
    move v3, v7

    .line 167
    goto :goto_6

    .line 44
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

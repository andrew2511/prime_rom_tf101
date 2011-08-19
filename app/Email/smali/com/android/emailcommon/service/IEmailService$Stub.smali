.class public abstract Lcom/android/emailcommon/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;
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
    const-string v1, "com.android.emailcommon.service.IEmailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 236
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v5, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 59
    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v11, v5

    .line 61
    .local v11, _arg5:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v12, v5

    .local v12, _arg6:Z
    :goto_2
    move-object/from16 v5, p0

    .line 62
    invoke-virtual/range {v5 .. v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;

    move-result-object v17

    .line 63
    .local v17, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v17, :cond_2

    .line 65
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_3
    const/4 v5, 0x1

    goto :goto_0

    .line 59
    .end local v11           #_arg5:Z
    .end local v12           #_arg6:Z
    .end local v17           #_result:Landroid/os/Bundle;
    :cond_0
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    .line 61
    .restart local v11       #_arg5:Z
    :cond_1
    const/4 v5, 0x0

    move v12, v5

    goto :goto_2

    .line 69
    .restart local v12       #_arg6:Z
    .restart local v17       #_result:Landroid/os/Bundle;
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 75
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:I
    .end local v11           #_arg5:Z
    .end local v12           #_arg6:Z
    .end local v17           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 79
    .local v13, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move v7, v5

    .line 80
    .local v7, _arg1:Z
    :goto_4
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->startSync(JZ)V

    .line 81
    const/4 v5, 0x1

    goto :goto_0

    .line 79
    .end local v7           #_arg1:Z
    :cond_3
    const/4 v5, 0x0

    move v7, v5

    goto :goto_4

    .line 85
    .end local v13           #_arg0:J
    :sswitch_3
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 88
    .restart local v13       #_arg0:J
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->stopSync(J)V

    .line 89
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 93
    .end local v13           #_arg0:J
    :sswitch_4
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 96
    .restart local v13       #_arg0:J
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMore(J)V

    .line 97
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 101
    .end local v13           #_arg0:J
    :sswitch_5
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 105
    .restart local v13       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move v7, v5

    .line 106
    .restart local v7       #_arg1:Z
    :goto_5
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadAttachment(JZ)V

    .line 107
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 105
    .end local v7           #_arg1:Z
    :cond_4
    const/4 v5, 0x0

    move v7, v5

    goto :goto_5

    .line 111
    .end local v13           #_arg0:J
    :sswitch_6
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 114
    .restart local v13       #_arg0:J
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->updateFolderList(J)V

    .line 115
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 119
    .end local v13           #_arg0:J
    :sswitch_7
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 123
    .restart local v13       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide v1, v13

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->createFolder(JLjava/lang/String;)Z

    move-result v17

    .line 125
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v17, :cond_5

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 126
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 131
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v13           #_arg0:J
    .end local v17           #_result:Z
    :sswitch_8
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 135
    .restart local v13       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 136
    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide v1, v13

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteFolder(JLjava/lang/String;)Z

    move-result v17

    .line 137
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v17, :cond_6

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 138
    :cond_6
    const/4 v5, 0x0

    goto :goto_7

    .line 143
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v13           #_arg0:J
    .end local v17           #_result:Z
    :sswitch_9
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 147
    .restart local v13       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 149
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 150
    .restart local v8       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide v1, v13

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->renameFolder(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 151
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v17, :cond_7

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 152
    :cond_7
    const/4 v5, 0x0

    goto :goto_8

    .line 157
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v13           #_arg0:J
    .end local v17           #_result:Z
    :sswitch_a
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v6

    .line 160
    .local v6, _arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 166
    .end local v6           #_arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    :sswitch_b
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 169
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->setLogging(I)V

    .line 170
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 174
    .end local v6           #_arg0:I
    :sswitch_c
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 177
    .restart local v13       #_arg0:J
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->hostChanged(J)V

    .line 178
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 182
    .end local v13           #_arg0:J
    :sswitch_d
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 187
    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 188
    .local v17, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v17, :cond_8

    .line 190
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 196
    :goto_9
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 194
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 200
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v17           #_result:Landroid/os/Bundle;
    :sswitch_e
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 204
    .restart local v13       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 205
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    .line 206
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 210
    .end local v7           #_arg1:I
    .end local v13           #_arg0:J
    :sswitch_f
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 214
    .restart local v13       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 215
    .local v15, _arg1:J
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->moveMessage(JJ)V

    .line 216
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 220
    .end local v13           #_arg0:J
    .end local v15           #_arg1:J
    :sswitch_10
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 223
    .restart local v13       #_arg0:J
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteAccountPIMData(J)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 229
    .end local v13           #_arg0:J
    :sswitch_11
    const-string v5, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->getApiLevel()I

    move-result v17

    .line 231
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v5, 0x1

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

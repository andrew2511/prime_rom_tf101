.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 1489
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v1, 0x0

    .line 66
    :goto_3
    return-object v1

    .line 60
    :cond_4
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 62
    .local v0, in:Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 63
    goto :goto_3

    .line 66
    :cond_10
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 13
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 98
    :goto_11
    return-void

    .line 96
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .registers 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_e

    .line 81
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 83
    :cond_e
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .registers 3
    .parameter "ps"

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 105
    :goto_b
    return-void

    .line 103
    :catch_c
    move-exception v0

    goto :goto_b
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 1486
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 168
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
    .line 113
    packed-switch p1, :pswitch_data_1570

    .line 1482
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .end local p1
    :goto_7
    return v5

    .line 116
    .restart local p1
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 118
    .local v84, b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 119
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 120
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 122
    .local v9, grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 123
    .local v10, grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 124
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 126
    .local v13, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_64

    const/4 v5, 0x1

    move v14, v5

    .line 127
    .local v14, onlyIfNeeded:Z
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/4 v5, 0x1

    move v15, v5

    .local v15, debug:Z
    :goto_52
    move-object/from16 v5, p0

    .line 128
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v149

    .line 131
    .local v149, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    move-object/from16 v0, p3

    move/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v5, 0x1

    goto :goto_7

    .line 126
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v149           #result:I
    :cond_64
    const/4 v5, 0x0

    move v14, v5

    goto :goto_4a

    .line 127
    .restart local v14       #onlyIfNeeded:Z
    :cond_67
    const/4 v5, 0x0

    move v15, v5

    goto :goto_52

    .line 138
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v84           #b:Landroid/os/IBinder;
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 140
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 141
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 142
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 143
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 144
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 145
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 146
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 147
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 148
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c9

    const/4 v5, 0x1

    move v14, v5

    .line 149
    .restart local v14       #onlyIfNeeded:Z
    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_cc

    const/4 v5, 0x1

    move v15, v5

    .restart local v15       #debug:Z
    :goto_b4
    move-object/from16 v5, p0

    .line 150
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)Landroid/app/IActivityManager$WaitResult;

    move-result-object v149

    .line 153
    .local v149, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v5, 0x0

    move-object/from16 v0, v149

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 148
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v149           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_c9
    const/4 v5, 0x0

    move v14, v5

    goto :goto_ac

    .line 149
    .restart local v14       #onlyIfNeeded:Z
    :cond_cc
    const/4 v5, 0x0

    move v15, v5

    goto :goto_b4

    .line 160
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v84           #b:Landroid/os/IBinder;
    :pswitch_cf
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 162
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 163
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 164
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 165
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 166
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 167
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 168
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 169
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 170
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_137

    const/4 v5, 0x1

    move v14, v5

    .line 171
    .restart local v14       #onlyIfNeeded:Z
    :goto_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13a

    const/4 v5, 0x1

    move v15, v5

    .line 172
    .restart local v15       #debug:Z
    :goto_119
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .local v16, config:Landroid/content/res/Configuration;
    move-object/from16 v5, p0

    .line 173
    invoke-virtual/range {v5 .. v16}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    move-result v149

    .line 176
    .local v149, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 170
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #config:Landroid/content/res/Configuration;
    .end local v149           #result:I
    :cond_137
    const/4 v5, 0x0

    move v14, v5

    goto :goto_111

    .line 171
    .restart local v14       #onlyIfNeeded:Z
    :cond_13a
    const/4 v5, 0x0

    move v15, v5

    goto :goto_119

    .line 183
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v84           #b:Landroid/os/IBinder;
    :pswitch_13d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 185
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 186
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 187
    .local v7, intent:Landroid/content/IntentSender;
    const/16 v20, 0x0

    .line 188
    .local v20, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16b

    .line 189
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #fillInIntent:Landroid/content/Intent;
    check-cast v20, Landroid/content/Intent;

    .line 191
    .restart local v20       #fillInIntent:Landroid/content/Intent;
    :cond_16b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 192
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 193
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 194
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 195
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 196
    .local v25, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, flagsValues:I
    move-object/from16 v17, p0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v24, v13

    .line 197
    invoke-virtual/range {v17 .. v26}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v149

    .line 200
    .restart local v149       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 207
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/IntentSender;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v20           #fillInIntent:Landroid/content/Intent;
    .end local v25           #flagsMask:I
    .end local v26           #flagsValues:I
    .end local v84           #b:Landroid/os/IBinder;
    .end local v149           #result:I
    :pswitch_1a2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v88

    .line 209
    .local v88, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 210
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v149

    .line 211
    .local v149, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v149, :cond_1d1

    const/4 v5, 0x1

    :goto_1c8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 212
    :cond_1d1
    const/4 v5, 0x0

    goto :goto_1c8

    .line 217
    .end local v7           #intent:Landroid/content/Intent;
    .end local v88           #callingActivity:Landroid/os/IBinder;
    .end local v149           #result:Z
    :pswitch_1d3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 219
    .local v46, token:Landroid/os/IBinder;
    const/16 v33, 0x0

    .line 220
    .local v33, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 221
    .local v32, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f6

    .line 222
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    .end local v33           #resultData:Landroid/content/Intent;
    check-cast v33, Landroid/content/Intent;

    .line 224
    .restart local v33       #resultData:Landroid/content/Intent;
    :cond_1f6
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v147

    .line 225
    .local v147, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v147, :cond_211

    const/4 v5, 0x1

    :goto_208
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 226
    :cond_211
    const/4 v5, 0x0

    goto :goto_208

    .line 231
    .end local v32           #resultCode:I
    .end local v33           #resultData:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v147           #res:Z
    :pswitch_213
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 233
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 234
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 235
    .restart local v13       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 241
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_236
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 243
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v147

    .line 244
    .restart local v147       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v147, :cond_259

    const/4 v5, 0x1

    :goto_250
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 245
    :cond_259
    const/4 v5, 0x0

    goto :goto_250

    .line 251
    .end local v46           #token:Landroid/os/IBinder;
    .end local v147           #res:Z
    :pswitch_25b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 253
    .restart local v84       #b:Landroid/os/IBinder;
    if-eqz v84, :cond_2ad

    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 255
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_26e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 256
    if-eqz v84, :cond_2b0

    invoke-static/range {v84 .. v84}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    move-object/from16 v142, v5

    .line 258
    .local v142, rec:Landroid/content/IIntentReceiver;
    :goto_27a
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/IntentFilter;

    .line 259
    .local v101, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 260
    .local v35, perm:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v142

    move-object/from16 v3, v101

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 261
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v7, :cond_2b4

    .line 263
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 268
    :goto_2aa
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 253
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #perm:Ljava/lang/String;
    .end local v101           #filter:Landroid/content/IntentFilter;
    .end local v142           #rec:Landroid/content/IIntentReceiver;
    :cond_2ad
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_26e

    .line 256
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :cond_2b0
    const/4 v5, 0x0

    move-object/from16 v142, v5

    goto :goto_27a

    .line 266
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v35       #perm:Ljava/lang/String;
    .restart local v101       #filter:Landroid/content/IntentFilter;
    .restart local v142       #rec:Landroid/content/IIntentReceiver;
    :cond_2b4
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2aa

    .line 273
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #perm:Ljava/lang/String;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v101           #filter:Landroid/content/IntentFilter;
    .end local v142           #rec:Landroid/content/IIntentReceiver;
    :pswitch_2bc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 275
    .restart local v84       #b:Landroid/os/IBinder;
    if-nez v84, :cond_2cd

    .line 276
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 278
    :cond_2cd
    invoke-static/range {v84 .. v84}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v142

    .line 279
    .restart local v142       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 286
    .end local v84           #b:Landroid/os/IBinder;
    .end local v142           #rec:Landroid/content/IIntentReceiver;
    :pswitch_2de
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 288
    .restart local v84       #b:Landroid/os/IBinder;
    if-eqz v84, :cond_348

    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 290
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_2f1
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 291
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 292
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 293
    if-eqz v84, :cond_34b

    invoke-static/range {v84 .. v84}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    move-object v11, v5

    .line 295
    .local v11, resultTo:Landroid/content/IIntentReceiver;
    :goto_30b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 296
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 297
    .local v33, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .line 298
    .local v34, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 299
    .restart local v35       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34e

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 300
    .local v36, serialized:Z
    :goto_324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_352

    const/4 v5, 0x1

    move/from16 v37, v5

    .local v37, sticky:Z
    :goto_32d
    move-object/from16 v27, p0

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v11

    .line 301
    invoke-virtual/range {v27 .. v37}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    move-result v147

    .line 304
    .local v147, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 288
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v35           #perm:Ljava/lang/String;
    .end local v36           #serialized:Z
    .end local v37           #sticky:Z
    .end local v147           #res:I
    :cond_348
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_2f1

    .line 293
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_34b
    const/4 v5, 0x0

    move-object v11, v5

    goto :goto_30b

    .line 299
    .restart local v11       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v32       #resultCode:I
    .restart local v33       #resultData:Ljava/lang/String;
    .restart local v34       #resultExtras:Landroid/os/Bundle;
    .restart local v35       #perm:Ljava/lang/String;
    :cond_34e
    const/4 v5, 0x0

    move/from16 v36, v5

    goto :goto_324

    .line 300
    .restart local v36       #serialized:Z
    :cond_352
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_32d

    .line 311
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v35           #perm:Ljava/lang/String;
    .end local v36           #serialized:Z
    .end local v84           #b:Landroid/os/IBinder;
    :pswitch_356
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 313
    .restart local v84       #b:Landroid/os/IBinder;
    if-eqz v84, :cond_381

    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 314
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_369
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 315
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 313
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_381
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_369

    .line 321
    .end local v84           #b:Landroid/os/IBinder;
    :pswitch_384
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 323
    .local v39, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 324
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 325
    .restart local v33       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .line 326
    .restart local v34       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b8

    const/4 v5, 0x1

    move/from16 v43, v5

    .line 327
    .local v43, resultAbort:Z
    :goto_3a5
    if-eqz v39, :cond_3b2

    move-object/from16 v38, p0

    move/from16 v40, v32

    move-object/from16 v41, v33

    move-object/from16 v42, v34

    .line 328
    invoke-virtual/range {v38 .. v43}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 330
    :cond_3b2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 326
    .end local v43           #resultAbort:Z
    :cond_3b8
    const/4 v5, 0x0

    move/from16 v43, v5

    goto :goto_3a5

    .line 335
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v39           #who:Landroid/os/IBinder;
    :pswitch_3bc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 338
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_3d4

    .line 339
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 341
    :cond_3d4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 346
    .end local v6           #app:Landroid/app/IApplicationThread;
    :pswitch_3da
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 348
    .restart local v46       #token:Landroid/os/IBinder;
    const/16 v16, 0x0

    .line 349
    .restart local v16       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f9

    .line 350
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #config:Landroid/content/res/Configuration;
    check-cast v16, Landroid/content/res/Configuration;

    .line 352
    .restart local v16       #config:Landroid/content/res/Configuration;
    :cond_3f9
    if-eqz v46, :cond_404

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 355
    :cond_404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 360
    .end local v16           #config:Landroid/content/res/Configuration;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_40a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 362
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 368
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_423
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 370
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v119

    .line 371
    .local v119, map:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_464

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v158, p1

    .line 373
    .local v158, thumbnail:Landroid/graphics/Bitmap;
    :goto_446
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/CharSequence;

    .line 374
    .local v95, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v119

    move-object/from16 v3, v158

    move-object/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 371
    .end local v95           #description:Ljava/lang/CharSequence;
    .end local v158           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_464
    const/4 v5, 0x0

    move-object/from16 v158, v5

    goto :goto_446

    .line 380
    .end local v46           #token:Landroid/os/IBinder;
    .end local v119           #map:Landroid/os/Bundle;
    :pswitch_468
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 382
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 388
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_481
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 390
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 396
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_49a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 398
    .restart local v46       #token:Landroid/os/IBinder;
    if-eqz v46, :cond_4bf

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v147, v5

    .line 399
    .local v147, res:Ljava/lang/String;
    :goto_4b2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    move-object/from16 v0, p3

    move-object/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 398
    .end local v147           #res:Ljava/lang/String;
    :cond_4bf
    const/4 v5, 0x0

    move-object/from16 v147, v5

    goto :goto_4b2

    .line 405
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_4c3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 407
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v92

    .line 408
    .local v92, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, v92

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 410
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 414
    .end local v46           #token:Landroid/os/IBinder;
    .end local v92           #cn:Landroid/content/ComponentName;
    :pswitch_4e4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v121

    .line 416
    .local v121, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 417
    .local v56, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v144

    .line 418
    .local v144, receiverBinder:Landroid/os/IBinder;
    if-eqz v144, :cond_53c

    invoke-static/range {v144 .. v144}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v5

    move-object/from16 v143, v5

    .line 421
    .local v143, receiver:Landroid/app/IThumbnailReceiver;
    :goto_500
    move-object/from16 v0, p0

    move/from16 v1, v121

    move/from16 v2, v56

    move-object/from16 v3, v143

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v113

    .line 422
    .local v113, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v113, :cond_540

    invoke-interface/range {v113 .. v113}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v79, v5

    .line 424
    .local v79, N:I
    :goto_517
    move-object/from16 v0, p3

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/16 v102, 0x0

    .local v102, i:I
    :goto_520
    move/from16 v0, v102

    move/from16 v1, v79

    if-ge v0, v1, :cond_544

    .line 427
    move-object/from16 v0, v113

    move/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 429
    .local v105, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v105

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 426
    add-int/lit8 v102, v102, 0x1

    goto :goto_520

    .line 418
    .end local v79           #N:I
    .end local v102           #i:I
    .end local v105           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v113           #list:Ljava/util/List;
    .end local v143           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_53c
    const/4 v5, 0x0

    move-object/from16 v143, v5

    goto :goto_500

    .line 423
    .restart local v113       #list:Ljava/util/List;
    .restart local v143       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_540
    const/4 v5, -0x1

    move/from16 v79, v5

    goto :goto_517

    .line 431
    .restart local v79       #N:I
    .restart local v102       #i:I
    :cond_544
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 435
    .end local v56           #fl:I
    .end local v79           #N:I
    .end local v102           #i:I
    .end local v113           #list:Ljava/util/List;
    .end local v121           #maxNum:I
    .end local v143           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v144           #receiverBinder:Landroid/os/IBinder;
    :pswitch_547
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v121

    .line 437
    .restart local v121       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 438
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v121

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v115

    .line 440
    .local v115, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    move-object/from16 v0, p3

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 442
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 446
    .end local v56           #fl:I
    .end local v115           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v121           #maxNum:I
    :pswitch_56e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 448
    .local v47, id:I
    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v87

    .line 449
    .local v87, bm:Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v87, :cond_59a

    .line 451
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/4 v5, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 456
    :goto_597
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 454
    :cond_59a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_597

    .line 460
    .end local v47           #id:I
    .end local v87           #bm:Landroid/graphics/Bitmap;
    :pswitch_5a2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v121

    .line 462
    .restart local v121       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 463
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v121

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v113

    .line 464
    .restart local v113       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v113, :cond_5ec

    invoke-interface/range {v113 .. v113}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v79, v5

    .line 466
    .restart local v79       #N:I
    :goto_5c7
    move-object/from16 v0, p3

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/16 v102, 0x0

    .restart local v102       #i:I
    :goto_5d0
    move/from16 v0, v102

    move/from16 v1, v79

    if-ge v0, v1, :cond_5f0

    .line 469
    move-object/from16 v0, v113

    move/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 471
    .local v105, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v105

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 468
    add-int/lit8 v102, v102, 0x1

    goto :goto_5d0

    .line 465
    .end local v79           #N:I
    .end local v102           #i:I
    .end local v105           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_5ec
    const/4 v5, -0x1

    move/from16 v79, v5

    goto :goto_5c7

    .line 473
    .restart local v79       #N:I
    .restart local v102       #i:I
    :cond_5f0
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 477
    .end local v56           #fl:I
    .end local v79           #N:I
    .end local v102           #i:I
    .end local v113           #list:Ljava/util/List;
    .end local v121           #maxNum:I
    :pswitch_5f3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v114

    .line 479
    .local v114, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    move-object/from16 v0, p3

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 481
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 485
    .end local v114           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_60c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v116

    .line 487
    .local v116, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    move-object/from16 v0, p3

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 489
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 493
    .end local v116           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_625
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v117

    .line 495
    .local v117, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object/from16 v0, p3

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 497
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 501
    .end local v117           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_63e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 503
    .local v157, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 504
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v157

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTaskToFront(II)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 510
    .end local v56           #fl:I
    .end local v157           #task:I
    :pswitch_65d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 512
    .restart local v157       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 518
    .end local v157           #task:I
    :pswitch_676
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 520
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6a4

    const/4 v5, 0x1

    move/from16 v126, v5

    .line 521
    .local v126, nonRoot:Z
    :goto_68b
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v126

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v147

    .line 522
    .local v147, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    if-eqz v147, :cond_6a8

    const/4 v5, 0x1

    :goto_69b
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 520
    .end local v126           #nonRoot:Z
    .end local v147           #res:Z
    :cond_6a4
    const/4 v5, 0x0

    move/from16 v126, v5

    goto :goto_68b

    .line 523
    .restart local v126       #nonRoot:Z
    .restart local v147       #res:Z
    :cond_6a8
    const/4 v5, 0x0

    goto :goto_69b

    .line 528
    .end local v46           #token:Landroid/os/IBinder;
    .end local v126           #nonRoot:Z
    .end local v147           #res:Z
    :pswitch_6aa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 530
    .restart local v157       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 536
    .end local v157           #task:I
    :pswitch_6c3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 538
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6f3

    const/4 v5, 0x1

    move/from16 v128, v5

    .line 539
    .local v128, onlyRoot:Z
    :goto_6d8
    if-eqz v46, :cond_6f7

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v128

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v5

    move/from16 v147, v5

    .line 541
    .local v147, res:I
    :goto_6e6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    move-object/from16 v0, p3

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 538
    .end local v128           #onlyRoot:Z
    .end local v147           #res:I
    :cond_6f3
    const/4 v5, 0x0

    move/from16 v128, v5

    goto :goto_6d8

    .line 539
    .restart local v128       #onlyRoot:Z
    :cond_6f7
    const/4 v5, -0x1

    move/from16 v147, v5

    goto :goto_6e6

    .line 547
    .end local v46           #token:Landroid/os/IBinder;
    .end local v128           #onlyRoot:Z
    :pswitch_6fb
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 549
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 550
    .local v45, className:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 556
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_71a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 558
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_755

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v158, p1

    .line 560
    .restart local v158       #thumbnail:Landroid/graphics/Bitmap;
    :goto_739
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/CharSequence;

    .line 561
    .restart local v95       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v158

    move-object/from16 v3, v95

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 558
    .end local v95           #description:Ljava/lang/CharSequence;
    .end local v158           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_755
    const/4 v5, 0x0

    move-object/from16 v158, v5

    goto :goto_739

    .line 567
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_759
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 569
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 570
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v125

    .line 571
    .local v125, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v125

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v94

    .line 572
    .local v94, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v94, :cond_78e

    .line 574
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v5, 0x0

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 579
    :goto_78b
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 577
    :cond_78e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_78b

    .line 583
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v94           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v125           #name:Ljava/lang/String;
    :pswitch_796
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 585
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 586
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v139

    .line 588
    .local v139, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v139

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 594
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v139           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_7bd
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 596
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 597
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v125

    .line 598
    .restart local v125       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v125

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 604
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v125           #name:Ljava/lang/String;
    :pswitch_7df
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/ComponentName;

    .line 606
    .local v93, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v132

    .line 607
    .local v132, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    move-object/from16 v0, v132

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 609
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 613
    .end local v93           #comp:Landroid/content/ComponentName;
    .end local v132           #pi:Landroid/app/PendingIntent;
    :pswitch_807
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 615
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 616
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 617
    .local v53, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 618
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v53

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v92

    .line 619
    .restart local v92       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    move-object/from16 v0, v92

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 621
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 625
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v92           #cn:Landroid/content/ComponentName;
    :pswitch_83d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 627
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 628
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 629
    .restart local v53       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 630
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v53

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v147

    .line 631
    .restart local v147       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 637
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v147           #res:I
    :pswitch_873
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 639
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 640
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 641
    .local v154, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move/from16 v3, v154

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v147

    .line 642
    .local v147, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v147, :cond_8a2

    const/4 v5, 0x1

    :goto_899
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 643
    :cond_8a2
    const/4 v5, 0x0

    goto :goto_899

    .line 648
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v147           #res:Z
    .end local v154           #startId:I
    :pswitch_8a4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 650
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 651
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 652
    .restart local v47       #id:I
    const/16 v48, 0x0

    .line 653
    .local v48, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8cb

    .line 654
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    .end local v48           #notification:Landroid/app/Notification;
    check-cast v48, Landroid/app/Notification;

    .line 656
    .restart local v48       #notification:Landroid/app/Notification;
    :cond_8cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8df

    const/4 v5, 0x1

    move/from16 v49, v5

    .local v49, removeNotification:Z
    :goto_8d4
    move-object/from16 v44, p0

    .line 657
    invoke-virtual/range {v44 .. v49}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 656
    .end local v49           #removeNotification:Z
    :cond_8df
    const/4 v5, 0x0

    move/from16 v49, v5

    goto :goto_8d4

    .line 663
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v47           #id:I
    .end local v48           #notification:Landroid/app/Notification;
    :pswitch_8e3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 665
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 666
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 667
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 668
    .restart local v53       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 669
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 671
    .restart local v56       #fl:I
    invoke-static/range {v84 .. v84}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v55

    .local v55, conn:Landroid/app/IServiceConnection;
    move-object/from16 v50, p0

    move-object/from16 v51, v6

    move-object/from16 v52, v46

    move-object/from16 v54, v8

    .line 672
    invoke-virtual/range {v50 .. v56}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v147

    .line 673
    .local v147, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    move-object/from16 v0, p3

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 679
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v53           #service:Landroid/content/Intent;
    .end local v55           #conn:Landroid/app/IServiceConnection;
    .end local v56           #fl:I
    .end local v84           #b:Landroid/os/IBinder;
    .end local v147           #res:I
    :pswitch_92b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 681
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v55

    .line 682
    .restart local v55       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v147

    .line 683
    .local v147, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    if-eqz v147, :cond_952

    const/4 v5, 0x1

    :goto_949
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 684
    :cond_952
    const/4 v5, 0x0

    goto :goto_949

    .line 689
    .end local v55           #conn:Landroid/app/IServiceConnection;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v147           #res:Z
    :pswitch_954
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 691
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 692
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v53

    .line 693
    .local v53, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v7

    move-object/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 699
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v53           #service:Landroid/os/IBinder;
    :pswitch_97f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 701
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 702
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9af

    const/4 v5, 0x1

    move/from16 v96, v5

    .line 703
    .local v96, doRebind:Z
    :goto_99f
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v7

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 702
    .end local v96           #doRebind:Z
    :cond_9af
    const/4 v5, 0x0

    move/from16 v96, v5

    goto :goto_99f

    .line 709
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_9b3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 711
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 712
    .local v64, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 713
    .restart local v154       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 714
    .local v147, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v64

    move/from16 v3, v154

    move/from16 v4, v147

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 720
    .end local v46           #token:Landroid/os/IBinder;
    .end local v64           #type:I
    .end local v147           #res:I
    .end local v154           #startId:I
    :pswitch_9de
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 722
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v59

    .line 723
    .local v59, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 724
    .restart local v56       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v61

    .line 725
    .local v61, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 726
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v62

    .local v62, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v57, p0

    move-object/from16 v58, v45

    move/from16 v60, v56

    .line 727
    invoke-virtual/range {v57 .. v62}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v147

    .line 728
    .local v147, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v147, :cond_a17

    const/4 v5, 0x1

    :goto_a0e
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 729
    :cond_a17
    const/4 v5, 0x0

    goto :goto_a0e

    .line 735
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v56           #fl:I
    .end local v59           #profileFile:Ljava/lang/String;
    .end local v61           #arguments:Landroid/os/Bundle;
    .end local v62           #w:Landroid/app/IInstrumentationWatcher;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v147           #res:Z
    :pswitch_a19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 737
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 738
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 739
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v150

    .line 740
    .local v150, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v32

    move-object/from16 v3, v150

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 746
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v32           #resultCode:I
    .end local v84           #b:Landroid/os/IBinder;
    .end local v150           #results:Landroid/os/Bundle;
    :pswitch_a41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    .line 748
    .restart local v16       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 750
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 754
    .end local v16           #config:Landroid/content/res/Configuration;
    :pswitch_a5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 756
    .restart local v16       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 762
    .end local v16           #config:Landroid/content/res/Configuration;
    :pswitch_a7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 764
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v146

    .line 765
    .local v146, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v146

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 771
    .end local v46           #token:Landroid/os/IBinder;
    .end local v146           #requestedOrientation:I
    :pswitch_a9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 773
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v145

    .line 774
    .local v145, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    move-object/from16 v0, p3

    move/from16 v1, v145

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 780
    .end local v46           #token:Landroid/os/IBinder;
    .end local v145           #req:I
    :pswitch_abc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 782
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v92

    .line 783
    .restart local v92       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    move-object/from16 v0, v92

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 785
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 789
    .end local v46           #token:Landroid/os/IBinder;
    .end local v92           #cn:Landroid/content/ComponentName;
    :pswitch_add
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 791
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 793
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 797
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_afd
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 799
    .restart local v64       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 800
    .local v65, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 801
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 802
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 805
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b52

    .line 806
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v69

    check-cast v69, [Landroid/content/Intent;

    .line 807
    .local v69, requestIntents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v70

    .line 812
    .local v70, requestResolvedTypes:[Ljava/lang/String;
    :goto_b2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .restart local v56       #fl:I
    move-object/from16 v63, p0

    move-object/from16 v66, v46

    move-object/from16 v67, v12

    move/from16 v68, v13

    move/from16 v71, v56

    .line 813
    invoke-virtual/range {v63 .. v71}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v147

    .line 816
    .local v147, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v147, :cond_b57

    invoke-interface/range {v147 .. v147}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_b49
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 818
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 809
    .end local v56           #fl:I
    .end local v69           #requestIntents:[Landroid/content/Intent;
    .end local v70           #requestResolvedTypes:[Ljava/lang/String;
    .end local v147           #res:Landroid/content/IIntentSender;
    :cond_b52
    const/16 v69, 0x0

    .line 810
    .restart local v69       #requestIntents:[Landroid/content/Intent;
    const/16 v70, 0x0

    .restart local v70       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_b2e

    .line 817
    .restart local v56       #fl:I
    .restart local v147       #res:Landroid/content/IIntentSender;
    :cond_b57
    const/4 v5, 0x0

    goto :goto_b49

    .line 822
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v46           #token:Landroid/os/IBinder;
    .end local v56           #fl:I
    .end local v64           #type:I
    .end local v65           #packageName:Ljava/lang/String;
    .end local v69           #requestIntents:[Landroid/content/Intent;
    .end local v70           #requestResolvedTypes:[Ljava/lang/String;
    .end local v147           #res:Landroid/content/IIntentSender;
    :pswitch_b59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v140

    .line 825
    .local v140, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 831
    .end local v140           #r:Landroid/content/IIntentSender;
    :pswitch_b76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v140

    .line 834
    .restart local v140       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v147

    .line 835
    .local v147, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    move-object/from16 v0, p3

    move-object/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 837
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 841
    .end local v140           #r:Landroid/content/IIntentSender;
    .end local v147           #res:Ljava/lang/String;
    :pswitch_b9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v120

    .line 843
    .local v120, max:I
    move-object/from16 v0, p0

    move/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 849
    .end local v120           #max:I
    :pswitch_bb4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v112

    .line 851
    .local v112, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    move-object/from16 v0, p3

    move/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 857
    .end local v112           #limit:I
    :pswitch_bcd
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 859
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 860
    .local v133, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bf7

    const/4 v5, 0x1

    move/from16 v110, v5

    .line 861
    .local v110, isForeground:Z
    :goto_be6
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v133

    move/from16 v3, v110

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 860
    .end local v110           #isForeground:Z
    :cond_bf7
    const/4 v5, 0x0

    move/from16 v110, v5

    goto :goto_be6

    .line 867
    .end local v46           #token:Landroid/os/IBinder;
    .end local v133           #pid:I
    :pswitch_bfb
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 869
    .restart local v35       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 870
    .restart local v133       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 871
    .local v72, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v133

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v147

    .line 872
    .local v147, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    move-object/from16 v0, p3

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 878
    .end local v35           #perm:Ljava/lang/String;
    .end local v72           #uid:I
    .end local v133           #pid:I
    .end local v147           #res:I
    :pswitch_c28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 880
    .local v77, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 881
    .restart local v133       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 882
    .restart local v72       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 883
    .local v78, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move/from16 v2, v133

    move/from16 v3, v72

    move/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v147

    .line 884
    .restart local v147       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    move-object/from16 v0, p3

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 890
    .end local v72           #uid:I
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v133           #pid:I
    .end local v147           #res:I
    :pswitch_c62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 892
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v127

    .line 894
    .local v127, observer:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v127

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v147

    .line 895
    .local v147, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v147, :cond_c8f

    const/4 v5, 0x1

    :goto_c86
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 896
    :cond_c8f
    const/4 v5, 0x0

    goto :goto_c86

    .line 901
    .end local v65           #packageName:Ljava/lang/String;
    .end local v127           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v147           #res:Z
    :pswitch_c91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 903
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 904
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 905
    .local v76, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 906
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 907
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v76

    move-object/from16 v3, v77

    move/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 913
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v84           #b:Landroid/os/IBinder;
    :pswitch_cc6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 915
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 916
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 917
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 918
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v77

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 919
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 924
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v84           #b:Landroid/os/IBinder;
    :pswitch_cf5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 926
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 927
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d1c

    const/4 v5, 0x1

    move/from16 v160, v5

    .line 928
    .local v160, waiting:Z
    :goto_d0e
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v160

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 927
    .end local v160           #waiting:Z
    :cond_d1c
    const/4 v5, 0x0

    move/from16 v160, v5

    goto :goto_d0e

    .line 934
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v84           #b:Landroid/os/IBinder;
    :pswitch_d20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    new-instance v123, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v123 .. v123}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 936
    .local v123, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 939
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 943
    .end local v123           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_d43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 951
    :pswitch_d54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 953
    .local v135, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isPkgInResolutionBackwardPkgs(Ljava/lang/String;)Z

    move-result v109

    .line 954
    .local v109, isAdd:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    if-eqz v109, :cond_d77

    const/4 v5, 0x1

    :goto_d6e
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 955
    :cond_d77
    const/4 v5, 0x0

    goto :goto_d6e

    .line 960
    .end local v109           #isAdd:Z
    .end local v135           #pkg:Ljava/lang/String;
    :pswitch_d79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 962
    .restart local v135       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d9d

    const/4 v5, 0x1

    move/from16 v109, v5

    .line 963
    .restart local v109       #isAdd:Z
    :goto_d8e
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->writeResolutionBackwardPackages(Ljava/lang/String;Z)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 962
    .end local v109           #isAdd:Z
    :cond_d9d
    const/4 v5, 0x0

    move/from16 v109, v5

    goto :goto_d8e

    .line 970
    .end local v135           #pkg:Ljava/lang/String;
    :pswitch_da1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v77

    .line 972
    .restart local v77       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v131

    .line 973
    .local v131, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v131, :cond_dd1

    .line 975
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    const/4 v5, 0x1

    move-object/from16 v0, v131

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 980
    :goto_dce
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 978
    :cond_dd1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_dce

    .line 984
    .end local v77           #uri:Landroid/net/Uri;
    .end local v131           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_dd9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 991
    :pswitch_dea
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 998
    :pswitch_dfb
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v136

    .line 1000
    .local v136, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e2a

    const/4 v5, 0x1

    move/from16 v162, v5

    .line 1001
    .local v162, wfd:Z
    :goto_e10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e2e

    const/4 v5, 0x1

    move/from16 v130, v5

    .line 1002
    .local v130, per:Z
    :goto_e19
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    move/from16 v2, v162

    move/from16 v3, v130

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1000
    .end local v130           #per:Z
    .end local v162           #wfd:Z
    :cond_e2a
    const/4 v5, 0x0

    move/from16 v162, v5

    goto :goto_e10

    .line 1001
    .restart local v162       #wfd:Z
    :cond_e2e
    const/4 v5, 0x0

    move/from16 v130, v5

    goto :goto_e19

    .line 1008
    .end local v136           #pn:Ljava/lang/String;
    .end local v162           #wfd:Z
    :pswitch_e32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e50

    const/4 v5, 0x1

    move/from16 v97, v5

    .line 1010
    .local v97, enabled:Z
    :goto_e43
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1009
    .end local v97           #enabled:Z
    :cond_e50
    const/4 v5, 0x0

    move/from16 v97, v5

    goto :goto_e43

    .line 1016
    :pswitch_e54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v161

    .line 1019
    .local v161, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1020
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1024
    .end local v161           #watcher:Landroid/app/IActivityController;
    :pswitch_e6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1031
    :pswitch_e7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v108

    .line 1034
    .local v108, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1040
    .end local v108           #is:Landroid/content/IIntentSender;
    :pswitch_e9c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v134

    .line 1042
    .local v134, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 1043
    .local v141, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ed0

    const/4 v5, 0x1

    move/from16 v151, v5

    .line 1044
    .local v151, secure:Z
    :goto_eb5
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move-object/from16 v2, v141

    move/from16 v3, v151

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v147

    .line 1045
    .restart local v147       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    if-eqz v147, :cond_ed4

    const/4 v5, 0x1

    :goto_ec7
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1043
    .end local v147           #res:Z
    .end local v151           #secure:Z
    :cond_ed0
    const/4 v5, 0x0

    move/from16 v151, v5

    goto :goto_eb5

    .line 1046
    .restart local v147       #res:Z
    .restart local v151       #secure:Z
    :cond_ed4
    const/4 v5, 0x0

    goto :goto_ec7

    .line 1051
    .end local v134           #pids:[I
    .end local v141           #reason:Ljava/lang/String;
    .end local v147           #res:Z
    .end local v151           #secure:Z
    :pswitch_ed6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 1053
    .restart local v135       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 1054
    .local v91, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v80

    .line 1055
    .local v80, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v104

    .line 1056
    .local v104, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    move-object/from16 v2, v91

    move-object/from16 v3, v80

    move-object/from16 v4, v104

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1062
    .end local v80           #action:Ljava/lang/String;
    .end local v91           #cls:Ljava/lang/String;
    .end local v104           #indata:Ljava/lang/String;
    .end local v135           #pkg:Ljava/lang/String;
    :pswitch_f01
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1064
    .local v6, app:Landroid/os/IBinder;
    new-instance v90, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v90

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1065
    .local v90, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1071
    .end local v6           #app:Landroid/os/IBinder;
    .end local v90           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_f24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1073
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v156

    .line 1074
    .local v156, tag:Ljava/lang/String;
    new-instance v90, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v90

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1075
    .restart local v90       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v156

    move-object/from16 v3, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v147

    .line 1076
    .restart local v147       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    if-eqz v147, :cond_f57

    const/4 v5, 0x1

    :goto_f4e
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1077
    :cond_f57
    const/4 v5, 0x0

    goto :goto_f4e

    .line 1082
    .end local v6           #app:Landroid/os/IBinder;
    .end local v90           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v147           #res:Z
    .end local v156           #tag:Ljava/lang/String;
    :pswitch_f59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1084
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 1085
    .local v159, violationMask:I
    new-instance v105, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v105

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1086
    .local v105, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v159

    move-object/from16 v3, v105

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1092
    .end local v6           #app:Landroid/os/IBinder;
    .end local v105           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v159           #violationMask:I
    :pswitch_f82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v152

    .line 1094
    .local v152, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1100
    .end local v152           #sig:I
    :pswitch_f9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1102
    .restart local v65       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1108
    .end local v65           #packageName:Ljava/lang/String;
    :pswitch_fb4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1110
    .restart local v65       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1116
    .end local v65           #packageName:Ljava/lang/String;
    :pswitch_fcd
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v16

    .line 1118
    .local v16, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1120
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1124
    .end local v16           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_fe8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v137

    .line 1126
    .local v137, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_102a

    const/4 v5, 0x1

    move/from16 v153, v5

    .line 1127
    .local v153, start:Z
    :goto_ffd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .line 1128
    .local v129, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_102e

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v100, v5

    .line 1130
    .local v100, fd:Landroid/os/ParcelFileDescriptor;
    :goto_100d
    move-object/from16 v0, p0

    move-object/from16 v1, v137

    move/from16 v2, v153

    move-object/from16 v3, v129

    move-object/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v147

    .line 1131
    .restart local v147       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    if-eqz v147, :cond_1032

    const/4 v5, 0x1

    :goto_1021
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1126
    .end local v100           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v129           #path:Ljava/lang/String;
    .end local v147           #res:Z
    .end local v153           #start:Z
    :cond_102a
    const/4 v5, 0x0

    move/from16 v153, v5

    goto :goto_ffd

    .line 1128
    .restart local v129       #path:Ljava/lang/String;
    .restart local v153       #start:Z
    :cond_102e
    const/4 v5, 0x0

    move-object/from16 v100, v5

    goto :goto_100d

    .line 1132
    .restart local v100       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v147       #res:Z
    :cond_1032
    const/4 v5, 0x0

    goto :goto_1021

    .line 1137
    .end local v100           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v129           #path:Ljava/lang/String;
    .end local v137           #process:Ljava/lang/String;
    .end local v147           #res:Z
    .end local v153           #start:Z
    :pswitch_1034
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v147

    .line 1139
    .restart local v147       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    if-eqz v147, :cond_1056

    const/4 v5, 0x1

    :goto_104d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1140
    :cond_1056
    const/4 v5, 0x0

    goto :goto_104d

    .line 1145
    .end local v147           #res:Z
    :pswitch_1058
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1152
    :pswitch_1069
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1159
    :pswitch_107a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 1161
    .local v53, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1162
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v86

    .line 1163
    .local v86, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    move-object/from16 v0, p3

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1165
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1169
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v86           #binder:Landroid/os/IBinder;
    :pswitch_10a7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/content/pm/ApplicationInfo;

    .line 1171
    .local v105, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 1172
    .local v85, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v155

    .line 1173
    .local v155, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    if-eqz v155, :cond_10d7

    const/4 v5, 0x1

    :goto_10ce
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1174
    :cond_10d7
    const/4 v5, 0x0

    goto :goto_10ce

    .line 1179
    .end local v85           #backupRestoreMode:I
    .end local v105           #info:Landroid/content/pm/ApplicationInfo;
    .end local v155           #success:Z
    :pswitch_10d9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1181
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v81

    .line 1182
    .local v81, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1188
    .end local v65           #packageName:Ljava/lang/String;
    .end local v81           #agent:Landroid/os/IBinder;
    :pswitch_10f8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/content/pm/ApplicationInfo;

    .line 1190
    .restart local v105       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1196
    .end local v105           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_1118
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v161

    .line 1199
    .local v161, watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1200
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1204
    .end local v161           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_1132
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v161

    .line 1207
    .restart local v161       #watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1208
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1213
    .end local v161           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_114c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1215
    .restart local v72       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1216
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1217
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1218
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1219
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1220
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_119a

    const/4 v5, 0x1

    move v14, v5

    .restart local v14       #onlyIfNeeded:Z
    :goto_117b
    move-object/from16 v71, p0

    move-object/from16 v73, v7

    move-object/from16 v74, v8

    move-object/from16 v75, v11

    move-object/from16 v76, v12

    move/from16 v77, v13

    move/from16 v78, v14

    .line 1221
    invoke-virtual/range {v71 .. v78}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v149

    .line 1223
    .local v149, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    move-object/from16 v0, p3

    move/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1220
    .end local v14           #onlyIfNeeded:Z
    .end local v149           #result:I
    :cond_119a
    const/4 v5, 0x0

    move v14, v5

    goto :goto_117b

    .line 1229
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v72           #uid:I
    :pswitch_119d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 1231
    .restart local v135       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1232
    .restart local v72       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1238
    .end local v72           #uid:I
    .end local v135           #pkg:Ljava/lang/String;
    :pswitch_11bc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 1240
    .restart local v141       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1246
    .end local v141           #reason:Ljava/lang/String;
    :pswitch_11d5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v134

    .line 1248
    .restart local v134       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v147

    .line 1249
    .local v147, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v147

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1251
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1255
    .end local v134           #pids:[I
    .end local v147           #res:[Landroid/os/Debug$MemoryInfo;
    :pswitch_11f8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v138

    .line 1257
    .local v138, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1258
    .restart local v72       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1264
    .end local v72           #uid:I
    .end local v138           #processName:Ljava/lang/String;
    :pswitch_1217
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 1266
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1267
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1268
    .local v98, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1269
    .local v99, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v65

    move/from16 v3, v98

    move/from16 v4, v99

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1275
    .end local v46           #token:Landroid/os/IBinder;
    .end local v65           #packageName:Ljava/lang/String;
    .end local v98           #enterAnim:I
    .end local v99           #exitAnim:I
    :pswitch_1242
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v82

    .line 1277
    .local v82, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    if-eqz v82, :cond_125d

    const/4 v5, 0x1

    :goto_1254
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1278
    :cond_125d
    const/4 v5, 0x0

    goto :goto_1254

    .line 1283
    .end local v82           #areThey:Z
    :pswitch_125f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1290
    :pswitch_1270
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 1292
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v111

    .line 1293
    .local v111, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    if-eqz v111, :cond_1293

    const/4 v5, 0x1

    :goto_128a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1294
    :cond_1293
    const/4 v5, 0x0

    goto :goto_128a

    .line 1299
    .end local v46           #token:Landroid/os/IBinder;
    .end local v111           #isit:Z
    :pswitch_1295
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 1301
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12ba

    const/4 v5, 0x1

    move/from16 v103, v5

    .line 1302
    .local v103, imm:Z
    :goto_12ab
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1301
    .end local v103           #imm:Z
    :cond_12ba
    const/4 v5, 0x0

    move/from16 v103, v5

    goto :goto_12ab

    .line 1308
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_12be
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v111

    .line 1310
    .restart local v111       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    if-eqz v111, :cond_12d9

    const/4 v5, 0x1

    :goto_12d0
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1311
    :cond_12d9
    const/4 v5, 0x0

    goto :goto_12d0

    .line 1316
    .end local v111           #isit:Z
    :pswitch_12db
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1318
    .restart local v72       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 1319
    .local v106, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1320
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v122

    .line 1321
    .local v122, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v106

    move-object/from16 v3, v65

    move-object/from16 v4, v122

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1327
    .end local v65           #packageName:Ljava/lang/String;
    .end local v72           #uid:I
    .end local v106           #initialPid:I
    .end local v122           #message:Ljava/lang/String;
    :pswitch_1306
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1329
    .restart local v77       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v64

    .line 1330
    .local v64, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1332
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1336
    .end local v64           #type:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    :pswitch_132e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v125

    .line 1338
    .restart local v125       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    .line 1339
    .local v35, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1341
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1345
    .end local v35           #perm:Landroid/os/IBinder;
    .end local v125           #name:Ljava/lang/String;
    :pswitch_134f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 1347
    .local v74, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .line 1348
    .local v75, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1349
    .restart local v76       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1350
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .restart local v78       #mode:I
    move-object/from16 v73, p0

    .line 1351
    invoke-virtual/range {v73 .. v78}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1357
    .end local v74           #owner:Landroid/os/IBinder;
    .end local v75           #fromUid:I
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    :pswitch_137d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 1359
    .restart local v74       #owner:Landroid/os/IBinder;
    const/16 v77, 0x0

    .line 1360
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1399

    .line 1361
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1363
    :cond_1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1364
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v77

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1370
    .end local v74           #owner:Landroid/os/IBinder;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    :pswitch_13ae
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v89

    .line 1372
    .local v89, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1373
    .restart local v76       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1374
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 1375
    .local v124, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v89

    move-object/from16 v2, v76

    move-object/from16 v3, v77

    move/from16 v4, v124

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v147

    .line 1376
    .local v147, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    move-object/from16 v0, p3

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1382
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v89           #callingUid:I
    .end local v124           #modeFlags:I
    .end local v147           #res:I
    :pswitch_13e8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v137

    .line 1384
    .restart local v137       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_142a

    const/4 v5, 0x1

    move/from16 v118, v5

    .line 1385
    .local v118, managed:Z
    :goto_13fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .line 1386
    .restart local v129       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_142e

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v100, v5

    .line 1388
    .restart local v100       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_140d
    move-object/from16 v0, p0

    move-object/from16 v1, v137

    move/from16 v2, v118

    move-object/from16 v3, v129

    move-object/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v147

    .line 1389
    .local v147, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    if-eqz v147, :cond_1432

    const/4 v5, 0x1

    :goto_1421
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1384
    .end local v100           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v118           #managed:Z
    .end local v129           #path:Ljava/lang/String;
    .end local v147           #res:Z
    :cond_142a
    const/4 v5, 0x0

    move/from16 v118, v5

    goto :goto_13fd

    .line 1386
    .restart local v118       #managed:Z
    .restart local v129       #path:Ljava/lang/String;
    :cond_142e
    const/4 v5, 0x0

    move-object/from16 v100, v5

    goto :goto_140d

    .line 1390
    .restart local v100       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v147       #res:Z
    :cond_1432
    const/4 v5, 0x0

    goto :goto_1421

    .line 1396
    .end local v100           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v118           #managed:Z
    .end local v129           #path:Ljava/lang/String;
    .end local v137           #process:Ljava/lang/String;
    .end local v147           #res:Z
    :pswitch_1434
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1398
    .restart local v72       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v107

    check-cast v107, [Landroid/content/Intent;

    .line 1399
    .local v107, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v148

    .line 1400
    .local v148, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1401
    .restart local v11       #resultTo:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v72

    move-object/from16 v2, v107

    move-object/from16 v3, v148

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v149

    .line 1402
    .restart local v149       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    move-object/from16 v0, p3

    move/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1409
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v72           #uid:I
    .end local v107           #intents:[Landroid/content/Intent;
    .end local v148           #resolvedTypes:[Ljava/lang/String;
    .end local v149           #result:I
    :pswitch_146d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 1411
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1412
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v107

    check-cast v107, [Landroid/content/Intent;

    .line 1413
    .restart local v107       #intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v148

    .line 1414
    .restart local v148       #resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1415
    .restart local v11       #resultTo:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v107

    move-object/from16 v3, v148

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v149

    .line 1416
    .restart local v149       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    move-object/from16 v0, p3

    move/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1423
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v107           #intents:[Landroid/content/Intent;
    .end local v148           #resolvedTypes:[Ljava/lang/String;
    .end local v149           #result:I
    :pswitch_14a9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v78

    .line 1425
    .restart local v78       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    move-object/from16 v0, p3

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1432
    .end local v78           #mode:I
    :pswitch_14c2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1434
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    move-object/from16 v0, p3

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1442
    .end local v78           #mode:I
    :pswitch_14e2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 1444
    .restart local v135       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v78

    .line 1445
    .restart local v78       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    move-object/from16 v0, p3

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1452
    .end local v78           #mode:I
    .end local v135           #pkg:Ljava/lang/String;
    :pswitch_1503
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 1454
    .restart local v135       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1455
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    move/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1462
    .end local v78           #mode:I
    .end local v135           #pkg:Ljava/lang/String;
    :pswitch_1522
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 1464
    .restart local v135       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v83

    .line 1465
    .local v83, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    if-eqz v83, :cond_1545

    const/4 v5, 0x1

    :goto_153c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1466
    :cond_1545
    const/4 v5, 0x0

    goto :goto_153c

    .line 1472
    .end local v83           #ask:Z
    .end local v135           #pkg:Ljava/lang/String;
    :pswitch_1547
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 1474
    .restart local v135       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_156b

    const/4 v5, 0x1

    move/from16 v83, v5

    .line 1475
    .restart local v83       #ask:Z
    :goto_155c
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    move/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1474
    .end local v83           #ask:Z
    :cond_156b
    const/4 v5, 0x0

    move/from16 v83, v5

    goto :goto_155c

    .line 113
    nop

    :pswitch_data_1570
    .packed-switch 0x1
        :pswitch_ed6
        :pswitch_f01
        :pswitch_8
        :pswitch_d43
        :pswitch_da1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1d3
        :pswitch_25b
        :pswitch_2bc
        :pswitch_2de
        :pswitch_356
        :pswitch_384
        :pswitch_3bc
        :pswitch_3da
        :pswitch_40a
        :pswitch_423
        :pswitch_49a
        :pswitch_4c3
        :pswitch_4e4
        :pswitch_63e
        :pswitch_65d
        :pswitch_6aa
        :pswitch_6c3
        :pswitch_71a
        :pswitch_759
        :pswitch_796
        :pswitch_3
        :pswitch_213
        :pswitch_7df
        :pswitch_807
        :pswitch_83d
        :pswitch_8e3
        :pswitch_92b
        :pswitch_954
        :pswitch_6fb
        :pswitch_dd9
        :pswitch_dea
        :pswitch_dfb
        :pswitch_e32
        :pswitch_9de
        :pswitch_a19
        :pswitch_a41
        :pswitch_a5c
        :pswitch_873
        :pswitch_abc
        :pswitch_add
        :pswitch_b9b
        :pswitch_bb4
        :pswitch_bfb
        :pswitch_c28
        :pswitch_c91
        :pswitch_cc6
        :pswitch_e54
        :pswitch_cf5
        :pswitch_f82
        :pswitch_547
        :pswitch_9b3
        :pswitch_481
        :pswitch_afd
        :pswitch_b59
        :pswitch_b76
        :pswitch_e6e
        :pswitch_1a2
        :pswitch_e7f
        :pswitch_7bd
        :pswitch_a7c
        :pswitch_a9b
        :pswitch_97f
        :pswitch_bcd
        :pswitch_8a4
        :pswitch_676
        :pswitch_d20
        :pswitch_5f3
        :pswitch_c62
        :pswitch_fb4
        :pswitch_e9c
        :pswitch_5a2
        :pswitch_56e
        :pswitch_60c
        :pswitch_fcd
        :pswitch_107a
        :pswitch_fe8
        :pswitch_1034
        :pswitch_1058
        :pswitch_1069
        :pswitch_10a7
        :pswitch_10d9
        :pswitch_10f8
        :pswitch_1118
        :pswitch_1132
        :pswitch_114c
        :pswitch_119d
        :pswitch_11bc
        :pswitch_11d5
        :pswitch_11f8
        :pswitch_13d
        :pswitch_1217
        :pswitch_f24
        :pswitch_f9b
        :pswitch_1242
        :pswitch_6a
        :pswitch_236
        :pswitch_cf
        :pswitch_625
        :pswitch_125f
        :pswitch_f59
        :pswitch_1270
        :pswitch_1295
        :pswitch_12be
        :pswitch_12db
        :pswitch_1306
        :pswitch_132e
        :pswitch_134f
        :pswitch_137d
        :pswitch_13ae
        :pswitch_13e8
        :pswitch_146d
        :pswitch_1434
        :pswitch_468
        :pswitch_14a9
        :pswitch_14c2
        :pswitch_14e2
        :pswitch_1503
        :pswitch_1522
        :pswitch_1547
        :pswitch_3
        :pswitch_d54
        :pswitch_d79
    .end packed-switch
.end method

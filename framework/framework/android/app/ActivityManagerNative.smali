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

    .line 1469
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
    .line 1466
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 167
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
    packed-switch p1, :pswitch_data_1522

    .line 1462
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

    move-result v148

    .line 131
    .local v148, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    move-object/from16 v0, p3

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v5, 0x1

    goto :goto_7

    .line 126
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v148           #result:I
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

    move-result-object v148

    .line 153
    .local v148, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v5, 0x0

    move-object/from16 v0, v148

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 148
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v148           #result:Landroid/app/IActivityManager$WaitResult;
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

    move-result v148

    .line 176
    .local v148, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 170
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #config:Landroid/content/res/Configuration;
    .end local v148           #result:I
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

    move-result v148

    .line 200
    .restart local v148       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move/from16 v1, v148

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
    .end local v148           #result:I
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

    move-result v148

    .line 211
    .local v148, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v148, :cond_1d1

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
    .end local v148           #result:Z
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

    move-result v146

    .line 225
    .local v146, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v146, :cond_211

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
    .end local v146           #res:Z
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

    move-result v146

    .line 244
    .restart local v146       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v146, :cond_259

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
    .end local v146           #res:Z
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

    move-object/from16 v141, v5

    .line 258
    .local v141, rec:Landroid/content/IIntentReceiver;
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

    move-object/from16 v2, v141

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
    .end local v141           #rec:Landroid/content/IIntentReceiver;
    :cond_2ad
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_26e

    .line 256
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :cond_2b0
    const/4 v5, 0x0

    move-object/from16 v141, v5

    goto :goto_27a

    .line 266
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v35       #perm:Ljava/lang/String;
    .restart local v101       #filter:Landroid/content/IntentFilter;
    .restart local v141       #rec:Landroid/content/IIntentReceiver;
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
    .end local v141           #rec:Landroid/content/IIntentReceiver;
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

    move-result-object v141

    .line 279
    .restart local v141       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 286
    .end local v84           #b:Landroid/os/IBinder;
    .end local v141           #rec:Landroid/content/IIntentReceiver;
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

    move-result v146

    .line 304
    .local v146, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    move/from16 v1, v146

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
    .end local v146           #res:I
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

    move-result-object v118

    .line 371
    .local v118, map:Landroid/os/Bundle;
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

    move-object/from16 v157, p1

    .line 373
    .local v157, thumbnail:Landroid/graphics/Bitmap;
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

    move-object/from16 v2, v118

    move-object/from16 v3, v157

    move-object/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 371
    .end local v95           #description:Ljava/lang/CharSequence;
    .end local v157           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_464
    const/4 v5, 0x0

    move-object/from16 v157, v5

    goto :goto_446

    .line 380
    .end local v46           #token:Landroid/os/IBinder;
    .end local v118           #map:Landroid/os/Bundle;
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

    move-object/from16 v146, v5

    .line 399
    .local v146, res:Ljava/lang/String;
    :goto_4b2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    move-object/from16 v0, p3

    move-object/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 398
    .end local v146           #res:Ljava/lang/String;
    :cond_4bf
    const/4 v5, 0x0

    move-object/from16 v146, v5

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

    move-result v120

    .line 416
    .local v120, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 417
    .local v56, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v143

    .line 418
    .local v143, receiverBinder:Landroid/os/IBinder;
    if-eqz v143, :cond_53c

    invoke-static/range {v143 .. v143}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v5

    move-object/from16 v142, v5

    .line 421
    .local v142, receiver:Landroid/app/IThumbnailReceiver;
    :goto_500
    move-object/from16 v0, p0

    move/from16 v1, v120

    move/from16 v2, v56

    move-object/from16 v3, v142

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v112

    .line 422
    .local v112, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v112, :cond_540

    invoke-interface/range {v112 .. v112}, Ljava/util/List;->size()I

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
    move-object/from16 v0, v112

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
    .end local v112           #list:Ljava/util/List;
    .end local v142           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_53c
    const/4 v5, 0x0

    move-object/from16 v142, v5

    goto :goto_500

    .line 423
    .restart local v112       #list:Ljava/util/List;
    .restart local v142       #receiver:Landroid/app/IThumbnailReceiver;
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
    .end local v112           #list:Ljava/util/List;
    .end local v120           #maxNum:I
    .end local v142           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v143           #receiverBinder:Landroid/os/IBinder;
    :pswitch_547
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v120

    .line 437
    .restart local v120       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 438
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v120

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v114

    .line 440
    .local v114, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    move-object/from16 v0, p3

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 442
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 446
    .end local v56           #fl:I
    .end local v114           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v120           #maxNum:I
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

    move-result v120

    .line 462
    .restart local v120       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 463
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v120

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v112

    .line 464
    .restart local v112       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v112, :cond_5ec

    invoke-interface/range {v112 .. v112}, Ljava/util/List;->size()I

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
    move-object/from16 v0, v112

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
    .end local v112           #list:Ljava/util/List;
    .end local v120           #maxNum:I
    :pswitch_5f3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v113

    .line 479
    .local v113, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    move-object/from16 v0, p3

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 481
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 485
    .end local v113           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_60c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v115

    .line 487
    .local v115, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    move-object/from16 v0, p3

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 489
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 493
    .end local v115           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_625
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v116

    .line 495
    .local v116, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object/from16 v0, p3

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 497
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 501
    .end local v116           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_63e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v156

    .line 503
    .local v156, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 504
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v156

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTaskToFront(II)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 510
    .end local v56           #fl:I
    .end local v156           #task:I
    :pswitch_65d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v156

    .line 512
    .restart local v156       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 518
    .end local v156           #task:I
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

    move/from16 v125, v5

    .line 521
    .local v125, nonRoot:Z
    :goto_68b
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v125

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v146

    .line 522
    .local v146, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    if-eqz v146, :cond_6a8

    const/4 v5, 0x1

    :goto_69b
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 520
    .end local v125           #nonRoot:Z
    .end local v146           #res:Z
    :cond_6a4
    const/4 v5, 0x0

    move/from16 v125, v5

    goto :goto_68b

    .line 523
    .restart local v125       #nonRoot:Z
    .restart local v146       #res:Z
    :cond_6a8
    const/4 v5, 0x0

    goto :goto_69b

    .line 528
    .end local v46           #token:Landroid/os/IBinder;
    .end local v125           #nonRoot:Z
    .end local v146           #res:Z
    :pswitch_6aa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v156

    .line 530
    .restart local v156       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 536
    .end local v156           #task:I
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

    move/from16 v127, v5

    .line 539
    .local v127, onlyRoot:Z
    :goto_6d8
    if-eqz v46, :cond_6f7

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v127

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v5

    move/from16 v146, v5

    .line 541
    .local v146, res:I
    :goto_6e6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    move-object/from16 v0, p3

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 538
    .end local v127           #onlyRoot:Z
    .end local v146           #res:I
    :cond_6f3
    const/4 v5, 0x0

    move/from16 v127, v5

    goto :goto_6d8

    .line 539
    .restart local v127       #onlyRoot:Z
    :cond_6f7
    const/4 v5, -0x1

    move/from16 v146, v5

    goto :goto_6e6

    .line 547
    .end local v46           #token:Landroid/os/IBinder;
    .end local v127           #onlyRoot:Z
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

    move-object/from16 v157, p1

    .line 560
    .restart local v157       #thumbnail:Landroid/graphics/Bitmap;
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

    move-object/from16 v2, v157

    move-object/from16 v3, v95

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 558
    .end local v95           #description:Ljava/lang/CharSequence;
    .end local v157           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_755
    const/4 v5, 0x0

    move-object/from16 v157, v5

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

    move-result-object v124

    .line 571
    .local v124, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v124

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
    .end local v124           #name:Ljava/lang/String;
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

    move-result-object v138

    .line 588
    .local v138, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v138

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 594
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v138           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
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

    move-result-object v124

    .line 598
    .restart local v124       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v124

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 604
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v124           #name:Ljava/lang/String;
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

    move-result-object v131

    .line 607
    .local v131, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    move-object/from16 v0, v131

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 609
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 613
    .end local v93           #comp:Landroid/content/ComponentName;
    .end local v131           #pi:Landroid/app/PendingIntent;
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

    move-result v146

    .line 631
    .restart local v146       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 637
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v146           #res:I
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

    move-result v153

    .line 641
    .local v153, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move/from16 v3, v153

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v146

    .line 642
    .local v146, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v146, :cond_8a2

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
    .end local v146           #res:Z
    .end local v153           #startId:I
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

    move-result v146

    .line 673
    .local v146, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    move-object/from16 v0, p3

    move/from16 v1, v146

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
    .end local v146           #res:I
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

    move-result v146

    .line 683
    .local v146, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    if-eqz v146, :cond_952

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
    .end local v146           #res:Z
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

    move-result v153

    .line 713
    .restart local v153       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v146

    .line 714
    .local v146, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v64

    move/from16 v3, v153

    move/from16 v4, v146

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 720
    .end local v46           #token:Landroid/os/IBinder;
    .end local v64           #type:I
    .end local v146           #res:I
    .end local v153           #startId:I
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

    move-result v146

    .line 728
    .local v146, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v146, :cond_a17

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
    .end local v146           #res:Z
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

    move-result-object v149

    .line 740
    .local v149, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v32

    move-object/from16 v3, v149

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
    .end local v149           #results:Landroid/os/Bundle;
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

    move-result v145

    .line 765
    .local v145, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v145

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 771
    .end local v46           #token:Landroid/os/IBinder;
    .end local v145           #requestedOrientation:I
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

    move-result v144

    .line 774
    .local v144, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    move-object/from16 v0, p3

    move/from16 v1, v144

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 780
    .end local v46           #token:Landroid/os/IBinder;
    .end local v144           #req:I
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

    move-result-object v146

    .line 816
    .local v146, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v146, :cond_b57

    invoke-interface/range {v146 .. v146}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

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
    .end local v146           #res:Landroid/content/IIntentSender;
    :cond_b52
    const/16 v69, 0x0

    .line 810
    .restart local v69       #requestIntents:[Landroid/content/Intent;
    const/16 v70, 0x0

    .restart local v70       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_b2e

    .line 817
    .restart local v56       #fl:I
    .restart local v146       #res:Landroid/content/IIntentSender;
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
    .end local v146           #res:Landroid/content/IIntentSender;
    :pswitch_b59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v139

    .line 825
    .local v139, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 831
    .end local v139           #r:Landroid/content/IIntentSender;
    :pswitch_b76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v139

    .line 834
    .restart local v139       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v146

    .line 835
    .local v146, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    move-object/from16 v0, p3

    move-object/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 837
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 841
    .end local v139           #r:Landroid/content/IIntentSender;
    .end local v146           #res:Ljava/lang/String;
    :pswitch_b9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v119

    .line 843
    .local v119, max:I
    move-object/from16 v0, p0

    move/from16 v1, v119

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 849
    .end local v119           #max:I
    :pswitch_bb4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v111

    .line 851
    .local v111, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 857
    .end local v111           #limit:I
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

    move-result v132

    .line 860
    .local v132, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bf7

    const/4 v5, 0x1

    move/from16 v109, v5

    .line 861
    .local v109, isForeground:Z
    :goto_be6
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v132

    move/from16 v3, v109

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 860
    .end local v109           #isForeground:Z
    :cond_bf7
    const/4 v5, 0x0

    move/from16 v109, v5

    goto :goto_be6

    .line 867
    .end local v46           #token:Landroid/os/IBinder;
    .end local v132           #pid:I
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

    move-result v132

    .line 870
    .restart local v132       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 871
    .local v72, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v132

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v146

    .line 872
    .local v146, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    move-object/from16 v0, p3

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 878
    .end local v35           #perm:Ljava/lang/String;
    .end local v72           #uid:I
    .end local v132           #pid:I
    .end local v146           #res:I
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

    move-result v132

    .line 881
    .restart local v132       #pid:I
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

    move/from16 v2, v132

    move/from16 v3, v72

    move/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v146

    .line 884
    .restart local v146       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    move-object/from16 v0, p3

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 890
    .end local v72           #uid:I
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v132           #pid:I
    .end local v146           #res:I
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

    move-result-object v126

    .line 894
    .local v126, observer:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v126

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v146

    .line 895
    .local v146, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v146, :cond_c8f

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
    .end local v126           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v146           #res:Z
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

    move/from16 v159, v5

    .line 928
    .local v159, waiting:Z
    :goto_d0e
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v159

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 927
    .end local v159           #waiting:Z
    :cond_d1c
    const/4 v5, 0x0

    move/from16 v159, v5

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
    new-instance v122, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v122 .. v122}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 936
    .local v122, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    const/4 v5, 0x0

    move-object/from16 v0, v122

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 939
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 943
    .end local v122           #mi:Landroid/app/ActivityManager$MemoryInfo;
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

    .line 950
    :pswitch_d54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v77

    .line 952
    .restart local v77       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v130

    .line 953
    .local v130, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    if-eqz v130, :cond_d84

    .line 955
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    const/4 v5, 0x1

    move-object/from16 v0, v130

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 960
    :goto_d81
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 958
    :cond_d84
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d81

    .line 964
    .end local v77           #uri:Landroid/net/Uri;
    .end local v130           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_d8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 971
    :pswitch_d9d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 978
    :pswitch_dae
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 980
    .local v135, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ddd

    const/4 v5, 0x1

    move/from16 v161, v5

    .line 981
    .local v161, wfd:Z
    :goto_dc3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_de1

    const/4 v5, 0x1

    move/from16 v129, v5

    .line 982
    .local v129, per:Z
    :goto_dcc
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    move/from16 v2, v161

    move/from16 v3, v129

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 980
    .end local v129           #per:Z
    .end local v161           #wfd:Z
    :cond_ddd
    const/4 v5, 0x0

    move/from16 v161, v5

    goto :goto_dc3

    .line 981
    .restart local v161       #wfd:Z
    :cond_de1
    const/4 v5, 0x0

    move/from16 v129, v5

    goto :goto_dcc

    .line 988
    .end local v135           #pn:Ljava/lang/String;
    .end local v161           #wfd:Z
    :pswitch_de5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e03

    const/4 v5, 0x1

    move/from16 v97, v5

    .line 990
    .local v97, enabled:Z
    :goto_df6
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 989
    .end local v97           #enabled:Z
    :cond_e03
    const/4 v5, 0x0

    move/from16 v97, v5

    goto :goto_df6

    .line 996
    :pswitch_e07
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v160

    .line 999
    .local v160, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v160

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1000
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1004
    .end local v160           #watcher:Landroid/app/IActivityController;
    :pswitch_e21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1011
    :pswitch_e32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v108

    .line 1014
    .local v108, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1020
    .end local v108           #is:Landroid/content/IIntentSender;
    :pswitch_e4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v133

    .line 1022
    .local v133, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 1023
    .local v140, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e83

    const/4 v5, 0x1

    move/from16 v150, v5

    .line 1024
    .local v150, secure:Z
    :goto_e68
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move-object/from16 v2, v140

    move/from16 v3, v150

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v146

    .line 1025
    .restart local v146       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    if-eqz v146, :cond_e87

    const/4 v5, 0x1

    :goto_e7a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1023
    .end local v146           #res:Z
    .end local v150           #secure:Z
    :cond_e83
    const/4 v5, 0x0

    move/from16 v150, v5

    goto :goto_e68

    .line 1026
    .restart local v146       #res:Z
    .restart local v150       #secure:Z
    :cond_e87
    const/4 v5, 0x0

    goto :goto_e7a

    .line 1031
    .end local v133           #pids:[I
    .end local v140           #reason:Ljava/lang/String;
    .end local v146           #res:Z
    .end local v150           #secure:Z
    :pswitch_e89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1033
    .local v134, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 1034
    .local v91, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v80

    .line 1035
    .local v80, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v104

    .line 1036
    .local v104, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move-object/from16 v2, v91

    move-object/from16 v3, v80

    move-object/from16 v4, v104

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1042
    .end local v80           #action:Ljava/lang/String;
    .end local v91           #cls:Ljava/lang/String;
    .end local v104           #indata:Ljava/lang/String;
    .end local v134           #pkg:Ljava/lang/String;
    :pswitch_eb4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1044
    .local v6, app:Landroid/os/IBinder;
    new-instance v90, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v90

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1045
    .local v90, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1046
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1051
    .end local v6           #app:Landroid/os/IBinder;
    .end local v90           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_ed7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1053
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v155

    .line 1054
    .local v155, tag:Ljava/lang/String;
    new-instance v90, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v90

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1055
    .restart local v90       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v155

    move-object/from16 v3, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v146

    .line 1056
    .restart local v146       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    if-eqz v146, :cond_f0a

    const/4 v5, 0x1

    :goto_f01
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1057
    :cond_f0a
    const/4 v5, 0x0

    goto :goto_f01

    .line 1062
    .end local v6           #app:Landroid/os/IBinder;
    .end local v90           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v146           #res:Z
    .end local v155           #tag:Ljava/lang/String;
    :pswitch_f0c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1064
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v158

    .line 1065
    .local v158, violationMask:I
    new-instance v105, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v105

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1066
    .local v105, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v158

    move-object/from16 v3, v105

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1072
    .end local v6           #app:Landroid/os/IBinder;
    .end local v105           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v158           #violationMask:I
    :pswitch_f35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v151

    .line 1074
    .local v151, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1080
    .end local v151           #sig:I
    :pswitch_f4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1082
    .restart local v65       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1088
    .end local v65           #packageName:Ljava/lang/String;
    :pswitch_f67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1090
    .restart local v65       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1096
    .end local v65           #packageName:Ljava/lang/String;
    :pswitch_f80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v16

    .line 1098
    .local v16, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1100
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1104
    .end local v16           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_f9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v136

    .line 1106
    .local v136, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_fdd

    const/4 v5, 0x1

    move/from16 v152, v5

    .line 1107
    .local v152, start:Z
    :goto_fb0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v128

    .line 1108
    .local v128, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_fe1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v100, v5

    .line 1110
    .local v100, fd:Landroid/os/ParcelFileDescriptor;
    :goto_fc0
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    move/from16 v2, v152

    move-object/from16 v3, v128

    move-object/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v146

    .line 1111
    .restart local v146       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    if-eqz v146, :cond_fe5

    const/4 v5, 0x1

    :goto_fd4
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1106
    .end local v100           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v128           #path:Ljava/lang/String;
    .end local v146           #res:Z
    .end local v152           #start:Z
    :cond_fdd
    const/4 v5, 0x0

    move/from16 v152, v5

    goto :goto_fb0

    .line 1108
    .restart local v128       #path:Ljava/lang/String;
    .restart local v152       #start:Z
    :cond_fe1
    const/4 v5, 0x0

    move-object/from16 v100, v5

    goto :goto_fc0

    .line 1112
    .restart local v100       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v146       #res:Z
    :cond_fe5
    const/4 v5, 0x0

    goto :goto_fd4

    .line 1117
    .end local v100           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v128           #path:Ljava/lang/String;
    .end local v136           #process:Ljava/lang/String;
    .end local v146           #res:Z
    .end local v152           #start:Z
    :pswitch_fe7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v146

    .line 1119
    .restart local v146       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    if-eqz v146, :cond_1009

    const/4 v5, 0x1

    :goto_1000
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1120
    :cond_1009
    const/4 v5, 0x0

    goto :goto_1000

    .line 1125
    .end local v146           #res:Z
    :pswitch_100b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1132
    :pswitch_101c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1139
    :pswitch_102d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 1141
    .local v53, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1142
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v86

    .line 1143
    .local v86, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    move-object/from16 v0, p3

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1145
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1149
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v86           #binder:Landroid/os/IBinder;
    :pswitch_105a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/content/pm/ApplicationInfo;

    .line 1151
    .local v105, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 1152
    .local v85, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v154

    .line 1153
    .local v154, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    if-eqz v154, :cond_108a

    const/4 v5, 0x1

    :goto_1081
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1154
    :cond_108a
    const/4 v5, 0x0

    goto :goto_1081

    .line 1159
    .end local v85           #backupRestoreMode:I
    .end local v105           #info:Landroid/content/pm/ApplicationInfo;
    .end local v154           #success:Z
    :pswitch_108c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1161
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v81

    .line 1162
    .local v81, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1168
    .end local v65           #packageName:Ljava/lang/String;
    .end local v81           #agent:Landroid/os/IBinder;
    :pswitch_10ab
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/content/pm/ApplicationInfo;

    .line 1170
    .restart local v105       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1176
    .end local v105           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_10cb
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v160

    .line 1179
    .local v160, watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v160

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1180
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1184
    .end local v160           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_10e5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v160

    .line 1187
    .restart local v160       #watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v160

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1188
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1193
    .end local v160           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_10ff
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1195
    .restart local v72       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1196
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1197
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1198
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1199
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1200
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_114d

    const/4 v5, 0x1

    move v14, v5

    .restart local v14       #onlyIfNeeded:Z
    :goto_112e
    move-object/from16 v71, p0

    move-object/from16 v73, v7

    move-object/from16 v74, v8

    move-object/from16 v75, v11

    move-object/from16 v76, v12

    move/from16 v77, v13

    move/from16 v78, v14

    .line 1201
    invoke-virtual/range {v71 .. v78}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v148

    .line 1203
    .local v148, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    move-object/from16 v0, p3

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1200
    .end local v14           #onlyIfNeeded:Z
    .end local v148           #result:I
    :cond_114d
    const/4 v5, 0x0

    move v14, v5

    goto :goto_112e

    .line 1209
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v72           #uid:I
    :pswitch_1150
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1211
    .restart local v134       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1212
    .restart local v72       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1218
    .end local v72           #uid:I
    .end local v134           #pkg:Ljava/lang/String;
    :pswitch_116f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 1220
    .restart local v140       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1226
    .end local v140           #reason:Ljava/lang/String;
    :pswitch_1188
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v133

    .line 1228
    .restart local v133       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v146

    .line 1229
    .local v146, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v146

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1231
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1235
    .end local v133           #pids:[I
    .end local v146           #res:[Landroid/os/Debug$MemoryInfo;
    :pswitch_11ab
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v137

    .line 1237
    .local v137, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1238
    .restart local v72       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v137

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1244
    .end local v72           #uid:I
    .end local v137           #processName:Ljava/lang/String;
    :pswitch_11ca
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 1246
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1247
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1248
    .local v98, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1249
    .local v99, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v65

    move/from16 v3, v98

    move/from16 v4, v99

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1255
    .end local v46           #token:Landroid/os/IBinder;
    .end local v65           #packageName:Ljava/lang/String;
    .end local v98           #enterAnim:I
    .end local v99           #exitAnim:I
    :pswitch_11f5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v82

    .line 1257
    .local v82, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    if-eqz v82, :cond_1210

    const/4 v5, 0x1

    :goto_1207
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1258
    :cond_1210
    const/4 v5, 0x0

    goto :goto_1207

    .line 1263
    .end local v82           #areThey:Z
    :pswitch_1212
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1270
    :pswitch_1223
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 1272
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v110

    .line 1273
    .local v110, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    if-eqz v110, :cond_1246

    const/4 v5, 0x1

    :goto_123d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1275
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1274
    :cond_1246
    const/4 v5, 0x0

    goto :goto_123d

    .line 1279
    .end local v46           #token:Landroid/os/IBinder;
    .end local v110           #isit:Z
    :pswitch_1248
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 1281
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_126d

    const/4 v5, 0x1

    move/from16 v103, v5

    .line 1282
    .local v103, imm:Z
    :goto_125e
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1281
    .end local v103           #imm:Z
    :cond_126d
    const/4 v5, 0x0

    move/from16 v103, v5

    goto :goto_125e

    .line 1288
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_1271
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v110

    .line 1290
    .restart local v110       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    if-eqz v110, :cond_128c

    const/4 v5, 0x1

    :goto_1283
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1291
    :cond_128c
    const/4 v5, 0x0

    goto :goto_1283

    .line 1296
    .end local v110           #isit:Z
    :pswitch_128e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1298
    .restart local v72       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 1299
    .local v106, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1300
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 1301
    .local v121, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v106

    move-object/from16 v3, v65

    move-object/from16 v4, v121

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1307
    .end local v65           #packageName:Ljava/lang/String;
    .end local v72           #uid:I
    .end local v106           #initialPid:I
    .end local v121           #message:Ljava/lang/String;
    :pswitch_12b9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1309
    .restart local v77       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v64

    .line 1310
    .local v64, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1312
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1316
    .end local v64           #type:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    :pswitch_12e1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v124

    .line 1318
    .restart local v124       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    .line 1319
    .local v35, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1325
    .end local v35           #perm:Landroid/os/IBinder;
    .end local v124           #name:Ljava/lang/String;
    :pswitch_1302
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 1327
    .local v74, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .line 1328
    .local v75, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1329
    .restart local v76       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1330
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .restart local v78       #mode:I
    move-object/from16 v73, p0

    .line 1331
    invoke-virtual/range {v73 .. v78}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1337
    .end local v74           #owner:Landroid/os/IBinder;
    .end local v75           #fromUid:I
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    :pswitch_1330
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 1339
    .restart local v74       #owner:Landroid/os/IBinder;
    const/16 v77, 0x0

    .line 1340
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_134c

    .line 1341
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1343
    :cond_134c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1344
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v77

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1350
    .end local v74           #owner:Landroid/os/IBinder;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    :pswitch_1361
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v89

    .line 1352
    .local v89, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1353
    .restart local v76       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1354
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v123

    .line 1355
    .local v123, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v89

    move-object/from16 v2, v76

    move-object/from16 v3, v77

    move/from16 v4, v123

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v146

    .line 1356
    .local v146, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move-object/from16 v0, p3

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1362
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v89           #callingUid:I
    .end local v123           #modeFlags:I
    .end local v146           #res:I
    :pswitch_139b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v136

    .line 1364
    .restart local v136       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13dd

    const/4 v5, 0x1

    move/from16 v117, v5

    .line 1365
    .local v117, managed:Z
    :goto_13b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v128

    .line 1366
    .restart local v128       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13e1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v100, v5

    .line 1368
    .restart local v100       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_13c0
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    move/from16 v2, v117

    move-object/from16 v3, v128

    move-object/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v146

    .line 1369
    .local v146, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    if-eqz v146, :cond_13e5

    const/4 v5, 0x1

    :goto_13d4
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1364
    .end local v100           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v117           #managed:Z
    .end local v128           #path:Ljava/lang/String;
    .end local v146           #res:Z
    :cond_13dd
    const/4 v5, 0x0

    move/from16 v117, v5

    goto :goto_13b0

    .line 1366
    .restart local v117       #managed:Z
    .restart local v128       #path:Ljava/lang/String;
    :cond_13e1
    const/4 v5, 0x0

    move-object/from16 v100, v5

    goto :goto_13c0

    .line 1370
    .restart local v100       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v146       #res:Z
    :cond_13e5
    const/4 v5, 0x0

    goto :goto_13d4

    .line 1376
    .end local v100           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v117           #managed:Z
    .end local v128           #path:Ljava/lang/String;
    .end local v136           #process:Ljava/lang/String;
    .end local v146           #res:Z
    :pswitch_13e7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1378
    .restart local v72       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v107

    check-cast v107, [Landroid/content/Intent;

    .line 1379
    .local v107, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v147

    .line 1380
    .local v147, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1381
    .restart local v11       #resultTo:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v72

    move-object/from16 v2, v107

    move-object/from16 v3, v147

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v148

    .line 1382
    .restart local v148       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    move-object/from16 v0, p3

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1389
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v72           #uid:I
    .end local v107           #intents:[Landroid/content/Intent;
    .end local v147           #resolvedTypes:[Ljava/lang/String;
    .end local v148           #result:I
    :pswitch_1420
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 1391
    .restart local v84       #b:Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1392
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v107

    check-cast v107, [Landroid/content/Intent;

    .line 1393
    .restart local v107       #intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v147

    .line 1394
    .restart local v147       #resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1395
    .restart local v11       #resultTo:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v107

    move-object/from16 v3, v147

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v148

    .line 1396
    .restart local v148       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    move-object/from16 v0, p3

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1403
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v84           #b:Landroid/os/IBinder;
    .end local v107           #intents:[Landroid/content/Intent;
    .end local v147           #resolvedTypes:[Ljava/lang/String;
    .end local v148           #result:I
    :pswitch_145c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v78

    .line 1405
    .restart local v78       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    move-object/from16 v0, p3

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1412
    .end local v78           #mode:I
    :pswitch_1475
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1414
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    move-object/from16 v0, p3

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1422
    .end local v78           #mode:I
    :pswitch_1495
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1424
    .restart local v134       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

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
    .end local v134           #pkg:Ljava/lang/String;
    :pswitch_14b6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1434
    .restart local v134       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1435
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1442
    .end local v78           #mode:I
    .end local v134           #pkg:Ljava/lang/String;
    :pswitch_14d5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1444
    .restart local v134       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v83

    .line 1445
    .local v83, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    if-eqz v83, :cond_14f8

    const/4 v5, 0x1

    :goto_14ef
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1446
    :cond_14f8
    const/4 v5, 0x0

    goto :goto_14ef

    .line 1452
    .end local v83           #ask:Z
    .end local v134           #pkg:Ljava/lang/String;
    :pswitch_14fa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1454
    .restart local v134       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_151e

    const/4 v5, 0x1

    move/from16 v83, v5

    .line 1455
    .restart local v83       #ask:Z
    :goto_150f
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1454
    .end local v83           #ask:Z
    :cond_151e
    const/4 v5, 0x0

    move/from16 v83, v5

    goto :goto_150f

    .line 113
    :pswitch_data_1522
    .packed-switch 0x1
        :pswitch_e89
        :pswitch_eb4
        :pswitch_8
        :pswitch_d43
        :pswitch_d54
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
        :pswitch_d8c
        :pswitch_d9d
        :pswitch_dae
        :pswitch_de5
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
        :pswitch_e07
        :pswitch_cf5
        :pswitch_f35
        :pswitch_547
        :pswitch_9b3
        :pswitch_481
        :pswitch_afd
        :pswitch_b59
        :pswitch_b76
        :pswitch_e21
        :pswitch_1a2
        :pswitch_e32
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
        :pswitch_f67
        :pswitch_e4f
        :pswitch_5a2
        :pswitch_56e
        :pswitch_60c
        :pswitch_f80
        :pswitch_102d
        :pswitch_f9b
        :pswitch_fe7
        :pswitch_100b
        :pswitch_101c
        :pswitch_105a
        :pswitch_108c
        :pswitch_10ab
        :pswitch_10cb
        :pswitch_10e5
        :pswitch_10ff
        :pswitch_1150
        :pswitch_116f
        :pswitch_1188
        :pswitch_11ab
        :pswitch_13d
        :pswitch_11ca
        :pswitch_ed7
        :pswitch_f4e
        :pswitch_11f5
        :pswitch_6a
        :pswitch_236
        :pswitch_cf
        :pswitch_625
        :pswitch_1212
        :pswitch_f0c
        :pswitch_1223
        :pswitch_1248
        :pswitch_1271
        :pswitch_128e
        :pswitch_12b9
        :pswitch_12e1
        :pswitch_1302
        :pswitch_1330
        :pswitch_1361
        :pswitch_139b
        :pswitch_1420
        :pswitch_13e7
        :pswitch_468
        :pswitch_145c
        :pswitch_1475
        :pswitch_1495
        :pswitch_14b6
        :pswitch_14d5
        :pswitch_14fa
    .end packed-switch
.end method

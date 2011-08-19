.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3
    .parameter "obj"

    .prologue
    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v1, 0x0

    .line 60
    :goto_3
    return-object v1

    .line 54
    :cond_4
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 56
    .local v0, in:Landroid/app/IApplicationThread;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 57
    goto :goto_3

    .line 60
    :cond_10
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 487
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 89
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
    .line 70
    packed-switch p1, :pswitch_data_65e

    .line 482
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 73
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 75
    .local v7, b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x1

    move/from16 v62, v5

    .line 76
    .local v62, finished:Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    move/from16 v83, v5

    .line 77
    .local v83, userLeaving:Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 78
    .local v20, configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v62

    move/from16 v3, v83

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 79
    const/4 v5, 0x1

    goto :goto_7

    .line 75
    .end local v20           #configChanges:I
    .end local v62           #finished:Z
    .end local v83           #userLeaving:Z
    :cond_38
    const/4 v5, 0x0

    move/from16 v62, v5

    goto :goto_1d

    .line 76
    .restart local v62       #finished:Z
    :cond_3c
    const/4 v5, 0x0

    move/from16 v83, v5

    goto :goto_26

    .line 84
    .end local v7           #b:Landroid/os/IBinder;
    .end local v62           #finished:Z
    :pswitch_40
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 86
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_65

    const/4 v5, 0x1

    move/from16 v78, v5

    .line 87
    .local v78, show:Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 88
    .restart local v20       #configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v78

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 89
    const/4 v5, 0x1

    goto :goto_7

    .line 86
    .end local v20           #configChanges:I
    .end local v78           #show:Z
    :cond_65
    const/4 v5, 0x0

    move/from16 v78, v5

    goto :goto_55

    .line 94
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_69
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 96
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_88

    const/4 v5, 0x1

    move/from16 v78, v5

    .line 97
    .restart local v78       #show:Z
    :goto_7e
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 98
    const/4 v5, 0x1

    goto :goto_7

    .line 96
    .end local v78           #show:Z
    :cond_88
    const/4 v5, 0x0

    move/from16 v78, v5

    goto :goto_7e

    .line 103
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_8c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 105
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ac

    const/4 v5, 0x1

    move/from16 v79, v5

    .line 106
    .local v79, sleeping:Z
    :goto_a1
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 107
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 105
    .end local v79           #sleeping:Z
    :cond_ac
    const/4 v5, 0x0

    move/from16 v79, v5

    goto :goto_a1

    .line 112
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_b0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 114
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ce

    const/4 v5, 0x1

    move v15, v5

    .line 115
    .local v15, isForward:Z
    :goto_c4
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 116
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 114
    .end local v15           #isForward:Z
    :cond_ce
    const/4 v5, 0x0

    move v15, v5

    goto :goto_c4

    .line 121
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_d1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 123
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 124
    .local v12, ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 125
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 130
    .end local v7           #b:Landroid/os/IBinder;
    .end local v12           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_f0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 132
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 133
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 134
    .local v8, ident:I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 135
    .local v9, info:Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/CompatibilityInfo;

    .line 136
    .local v10, compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 137
    .local v11, state:Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 138
    .restart local v12       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 139
    .local v13, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14f

    const/4 v5, 0x1

    move v14, v5

    .line 140
    .local v14, notResumed:Z
    :goto_13f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_152

    const/4 v5, 0x1

    move v15, v5

    .restart local v15       #isForward:Z
    :goto_147
    move-object/from16 v5, p0

    .line 141
    invoke-virtual/range {v5 .. v15}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 143
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 139
    .end local v14           #notResumed:Z
    .end local v15           #isForward:Z
    :cond_14f
    const/4 v5, 0x0

    move v14, v5

    goto :goto_13f

    .line 140
    .restart local v14       #notResumed:Z
    :cond_152
    const/4 v5, 0x0

    move v15, v5

    goto :goto_147

    .line 148
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #b:Landroid/os/IBinder;
    .end local v8           #ident:I
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v11           #state:Landroid/os/Bundle;
    .end local v12           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v13           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v14           #notResumed:Z
    :pswitch_155
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 150
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 151
    .restart local v12       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 152
    .restart local v13       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 153
    .restart local v20       #configChanges:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a2

    const/4 v5, 0x1

    move v14, v5

    .line 154
    .restart local v14       #notResumed:Z
    :goto_17f
    const/16 v22, 0x0

    .line 155
    .local v22, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_192

    .line 156
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #config:Landroid/content/res/Configuration;
    check-cast v22, Landroid/content/res/Configuration;

    .restart local v22       #config:Landroid/content/res/Configuration;
    :cond_192
    move-object/from16 v16, p0

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move/from16 v21, v14

    .line 158
    invoke-virtual/range {v16 .. v22}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    .line 159
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 153
    .end local v14           #notResumed:Z
    .end local v22           #config:Landroid/content/res/Configuration;
    :cond_1a2
    const/4 v5, 0x0

    move v14, v5

    goto :goto_17f

    .line 164
    .end local v7           #b:Landroid/os/IBinder;
    .end local v12           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v13           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v20           #configChanges:I
    :pswitch_1a5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 166
    .restart local v13       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 167
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 168
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 173
    .end local v7           #b:Landroid/os/IBinder;
    .end local v13           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_1c4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 175
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1ea

    const/4 v5, 0x1

    move/from16 v63, v5

    .line 176
    .local v63, finishing:Z
    :goto_1d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 177
    .restart local v20       #configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v63

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 178
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 175
    .end local v20           #configChanges:I
    .end local v63           #finishing:Z
    :cond_1ea
    const/4 v5, 0x0

    move/from16 v63, v5

    goto :goto_1d9

    .line 183
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_1ee
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 185
    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 186
    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/CompatibilityInfo;

    .line 187
    .restart local v10       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 188
    .local v27, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 189
    .local v28, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v29

    .line 190
    .local v29, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23a

    const/4 v5, 0x1

    move/from16 v30, v5

    .local v30, sync:Z
    :goto_22c
    move-object/from16 v23, p0

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .line 191
    invoke-virtual/range {v23 .. v30}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 193
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 190
    .end local v30           #sync:Z
    :cond_23a
    const/4 v5, 0x0

    move/from16 v30, v5

    goto :goto_22c

    .line 197
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v27           #resultCode:I
    .end local v28           #resultData:Ljava/lang/String;
    .end local v29           #resultExtras:Landroid/os/Bundle;
    :pswitch_23e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 199
    .local v82, token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .line 200
    .local v9, info:Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/CompatibilityInfo;

    .line 201
    .restart local v10       #compatInfo:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object v2, v9

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 202
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 206
    .end local v9           #info:Landroid/content/pm/ServiceInfo;
    .end local v10           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v82           #token:Landroid/os/IBinder;
    :pswitch_26c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 208
    .restart local v82       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 209
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_299

    const/4 v5, 0x1

    move/from16 v75, v5

    .line 210
    .local v75, rebind:Z
    :goto_28c
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object v2, v6

    move/from16 v3, v75

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 211
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 209
    .end local v75           #rebind:Z
    :cond_299
    const/4 v5, 0x0

    move/from16 v75, v5

    goto :goto_28c

    .line 215
    .end local v6           #intent:Landroid/content/Intent;
    .end local v82           #token:Landroid/os/IBinder;
    :pswitch_29d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 217
    .restart local v82       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 218
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 219
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 224
    .end local v6           #intent:Landroid/content/Intent;
    .end local v82           #token:Landroid/os/IBinder;
    :pswitch_2bf
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 226
    .restart local v82       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 227
    .local v81, startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 229
    .local v64, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f4

    .line 230
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/content/Intent;

    .line 234
    .local v55, args:Landroid/content/Intent;
    :goto_2e4
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, v81

    move/from16 v3, v64

    move-object/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;IILandroid/content/Intent;)V

    .line 235
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 232
    .end local v55           #args:Landroid/content/Intent;
    :cond_2f4
    const/16 v55, 0x0

    .restart local v55       #args:Landroid/content/Intent;
    goto :goto_2e4

    .line 240
    .end local v55           #args:Landroid/content/Intent;
    .end local v64           #fl:I
    .end local v81           #startId:I
    .end local v82           #token:Landroid/os/IBinder;
    :pswitch_2f7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 242
    .restart local v82       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 243
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 248
    .end local v82           #token:Landroid/os/IBinder;
    :pswitch_30d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 250
    .local v32, packageName:Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 252
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v34

    .line 254
    .local v34, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38a

    new-instance v5, Landroid/content/ComponentName;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    move-object/from16 v35, v5

    .line 256
    .local v35, testName:Landroid/content/ComponentName;
    :goto_33d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 257
    .local v36, profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v37

    .line 258
    .local v37, testArgs:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v57

    .line 259
    .local v57, binder:Landroid/os/IBinder;
    invoke-static/range {v57 .. v57}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v38

    .line 260
    .local v38, testWatcher:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 261
    .local v39, testMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38e

    const/4 v5, 0x1

    move/from16 v40, v5

    .line 262
    .local v40, restrictedBackupMode:Z
    :goto_35a
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/res/Configuration;

    .line 263
    .restart local v22       #config:Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/CompatibilityInfo;

    .line 264
    .restart local v10       #compatInfo:Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v43

    .line 265
    .local v43, services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .local v44, coreSettings:Landroid/os/Bundle;
    move-object/from16 v31, p0

    move-object/from16 v33, v9

    move-object/from16 v41, v22

    move-object/from16 v42, v10

    .line 266
    invoke-virtual/range {v31 .. v44}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 270
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 254
    .end local v10           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v22           #config:Landroid/content/res/Configuration;
    .end local v35           #testName:Landroid/content/ComponentName;
    .end local v36           #profileName:Ljava/lang/String;
    .end local v37           #testArgs:Landroid/os/Bundle;
    .end local v38           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v39           #testMode:I
    .end local v40           #restrictedBackupMode:Z
    .end local v43           #services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v44           #coreSettings:Landroid/os/Bundle;
    .end local v57           #binder:Landroid/os/IBinder;
    :cond_38a
    const/4 v5, 0x0

    move-object/from16 v35, v5

    goto :goto_33d

    .line 261
    .restart local v35       #testName:Landroid/content/ComponentName;
    .restart local v36       #profileName:Ljava/lang/String;
    .restart local v37       #testArgs:Landroid/os/Bundle;
    .restart local v38       #testWatcher:Landroid/app/IInstrumentationWatcher;
    .restart local v39       #testMode:I
    .restart local v57       #binder:Landroid/os/IBinder;
    :cond_38e
    const/4 v5, 0x0

    move/from16 v40, v5

    goto :goto_35a

    .line 275
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v32           #packageName:Ljava/lang/String;
    .end local v34           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v35           #testName:Landroid/content/ComponentName;
    .end local v36           #profileName:Ljava/lang/String;
    .end local v37           #testArgs:Landroid/os/Bundle;
    .end local v38           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v39           #testMode:I
    .end local v57           #binder:Landroid/os/IBinder;
    :pswitch_392
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 277
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 282
    :pswitch_3a0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 284
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 289
    :pswitch_3ae
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 291
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    .line 292
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 297
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_3c3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/res/Configuration;

    .line 299
    .restart local v22       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 304
    .end local v22           #config:Landroid/content/res/Configuration;
    :pswitch_3e0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 306
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 310
    :pswitch_3ee
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 312
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 316
    :pswitch_3fc
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 318
    .local v74, proxy:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v72

    .line 319
    .local v72, port:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v60

    .line 320
    .local v60, exclList:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v72

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 325
    .end local v60           #exclList:Ljava/lang/String;
    .end local v72           #port:Ljava/lang/String;
    .end local v74           #proxy:Ljava/lang/String;
    :pswitch_41e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 327
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 331
    :pswitch_42c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v61

    .line 333
    .local v61, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 334
    .local v76, service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v55

    .line 335
    .local v55, args:[Ljava/lang/String;
    if-eqz v61, :cond_453

    .line 336
    invoke-virtual/range {v61 .. v61}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v76

    move-object/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 338
    :try_start_450
    invoke-virtual/range {v61 .. v61}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_453
    .catch Ljava/io/IOException; {:try_start_450 .. :try_end_453} :catch_658

    .line 342
    :cond_453
    :goto_453
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 346
    .end local v55           #args:[Ljava/lang/String;
    .end local v61           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v76           #service:Landroid/os/IBinder;
    :pswitch_456
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v46

    .line 349
    .local v46, receiver:Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 350
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 351
    .restart local v27       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 352
    .local v49, dataStr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v50

    .line 353
    .local v50, extras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49b

    const/4 v5, 0x1

    move/from16 v51, v5

    .line 354
    .local v51, ordered:Z
    :goto_486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49f

    const/4 v5, 0x1

    move/from16 v52, v5

    .local v52, sticky:Z
    :goto_48f
    move-object/from16 v45, p0

    move-object/from16 v47, v6

    move/from16 v48, v27

    .line 355
    invoke-virtual/range {v45 .. v52}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 357
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 353
    .end local v51           #ordered:Z
    .end local v52           #sticky:Z
    :cond_49b
    const/4 v5, 0x0

    move/from16 v51, v5

    goto :goto_486

    .line 354
    .restart local v51       #ordered:Z
    :cond_49f
    const/4 v5, 0x0

    move/from16 v52, v5

    goto :goto_48f

    .line 362
    .end local v6           #intent:Landroid/content/Intent;
    .end local v27           #resultCode:I
    .end local v46           #receiver:Landroid/content/IIntentReceiver;
    .end local v49           #dataStr:Ljava/lang/String;
    .end local v50           #extras:Landroid/os/Bundle;
    .end local v51           #ordered:Z
    :pswitch_4a3
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 363
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 368
    :pswitch_4a9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 370
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 371
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 376
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_4be
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4ed

    const/4 v5, 0x1

    move/from16 v80, v5

    .line 378
    .local v80, start:Z
    :goto_4cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v70

    .line 379
    .local v70, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4f1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v61, v5

    .line 381
    .restart local v61       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_4df
    move-object/from16 v0, p0

    move/from16 v1, v80

    move-object/from16 v2, v70

    move-object/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 382
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 377
    .end local v61           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v70           #path:Ljava/lang/String;
    .end local v80           #start:Z
    :cond_4ed
    const/4 v5, 0x0

    move/from16 v80, v5

    goto :goto_4cf

    .line 379
    .restart local v70       #path:Ljava/lang/String;
    .restart local v80       #start:Z
    :cond_4f1
    const/4 v5, 0x0

    move-object/from16 v61, v5

    goto :goto_4df

    .line 387
    .end local v70           #path:Ljava/lang/String;
    .end local v80           #start:Z
    :pswitch_4f5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v65

    .line 389
    .local v65, group:I
    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 390
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 395
    .end local v65           #group:I
    :pswitch_50b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/content/pm/ApplicationInfo;

    .line 397
    .local v54, appInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/CompatibilityInfo;

    .line 398
    .restart local v10       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 399
    .local v56, backupMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object v2, v10

    move/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 400
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 405
    .end local v10           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v54           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v56           #backupMode:I
    :pswitch_53a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/content/pm/ApplicationInfo;

    .line 407
    .restart local v54       #appInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/CompatibilityInfo;

    .line 408
    .restart local v10       #compatInfo:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 409
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 414
    .end local v10           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v54           #appInfo:Landroid/content/pm/ApplicationInfo;
    :pswitch_563
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    new-instance v67, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v67 .. v67}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 416
    .local v67, mi:Landroid/os/Debug$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v5, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 419
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 424
    .end local v67           #mi:Landroid/os/Debug$MemoryInfo;
    :pswitch_586
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 426
    .local v58, cmd:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v69

    .line 427
    .local v69, packages:[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 428
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 433
    .end local v58           #cmd:I
    .end local v69           #packages:[Ljava/lang/String;
    :pswitch_5a2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 435
    .local v68, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 436
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 441
    .end local v68           #msg:Ljava/lang/String;
    :pswitch_5b8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e7

    const/4 v5, 0x1

    move/from16 v66, v5

    .line 443
    .local v66, managed:Z
    :goto_5c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v70

    .line 444
    .restart local v70       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5eb

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v61, v5

    .line 446
    .restart local v61       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_5d9
    move-object/from16 v0, p0

    move/from16 v1, v66

    move-object/from16 v2, v70

    move-object/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 447
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 442
    .end local v61           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v66           #managed:Z
    .end local v70           #path:Ljava/lang/String;
    :cond_5e7
    const/4 v5, 0x0

    move/from16 v66, v5

    goto :goto_5c9

    .line 444
    .restart local v66       #managed:Z
    .restart local v70       #path:Ljava/lang/String;
    :cond_5eb
    const/4 v5, 0x0

    move-object/from16 v61, v5

    goto :goto_5d9

    .line 451
    .end local v66           #managed:Z
    .end local v70           #path:Ljava/lang/String;
    :pswitch_5ef
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v61

    .line 453
    .restart local v61       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v53

    .line 454
    .local v53, activity:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 455
    .local v73, prefix:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v55

    .line 456
    .restart local v55       #args:[Ljava/lang/String;
    if-eqz v61, :cond_61c

    .line 457
    invoke-virtual/range {v61 .. v61}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v53

    move-object/from16 v3, v73

    move-object/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 459
    :try_start_619
    invoke-virtual/range {v61 .. v61}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_61c
    .catch Ljava/io/IOException; {:try_start_619 .. :try_end_61c} :catch_65b

    .line 463
    :cond_61c
    :goto_61c
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 467
    .end local v53           #activity:Landroid/os/IBinder;
    .end local v55           #args:[Ljava/lang/String;
    .end local v61           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v73           #prefix:Ljava/lang/String;
    :pswitch_61f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v77

    .line 469
    .local v77, settings:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 470
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 474
    .end local v77           #settings:Landroid/os/Bundle;
    :pswitch_635
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v71

    .line 476
    .local v71, pkg:Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/res/CompatibilityInfo;

    .line 477
    .local v59, compat:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 478
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 339
    .end local v59           #compat:Landroid/content/res/CompatibilityInfo;
    .end local v71           #pkg:Ljava/lang/String;
    .restart local v55       #args:[Ljava/lang/String;
    .restart local v61       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v76       #service:Landroid/os/IBinder;
    :catch_658
    move-exception v5

    goto/16 :goto_453

    .line 460
    .end local v76           #service:Landroid/os/IBinder;
    .restart local v53       #activity:Landroid/os/IBinder;
    .restart local v73       #prefix:Ljava/lang/String;
    :catch_65b
    move-exception v5

    goto :goto_61c

    .line 70
    nop

    :pswitch_data_65e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3
        :pswitch_40
        :pswitch_69
        :pswitch_b0
        :pswitch_d1
        :pswitch_f0
        :pswitch_1a5
        :pswitch_1c4
        :pswitch_1ee
        :pswitch_23e
        :pswitch_2f7
        :pswitch_30d
        :pswitch_392
        :pswitch_3ae
        :pswitch_3c3
        :pswitch_2bf
        :pswitch_3e0
        :pswitch_41e
        :pswitch_26c
        :pswitch_29d
        :pswitch_42c
        :pswitch_456
        :pswitch_4a3
        :pswitch_4a9
        :pswitch_155
        :pswitch_8c
        :pswitch_4be
        :pswitch_4f5
        :pswitch_50b
        :pswitch_53a
        :pswitch_563
        :pswitch_3a0
        :pswitch_586
        :pswitch_5a2
        :pswitch_5b8
        :pswitch_5ef
        :pswitch_3ee
        :pswitch_3fc
        :pswitch_61f
        :pswitch_635
    .end packed-switch
.end method

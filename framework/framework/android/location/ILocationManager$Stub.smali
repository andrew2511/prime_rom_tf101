.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGpsStatusListener:I = 0x9

.field static final TRANSACTION_addProximityAlert:I = 0xd

.field static final TRANSACTION_addTestProvider:I = 0x16

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x1b

.field static final TRANSACTION_clearTestProviderLocation:I = 0x19

.field static final TRANSACTION_clearTestProviderStatus:I = 0x1d

.field static final TRANSACTION_geocoderIsPresent:I = 0x13

.field static final TRANSACTION_getAllProviders:I = 0x1

.field static final TRANSACTION_getBestProvider:I = 0x3

.field static final TRANSACTION_getFromLocation:I = 0x14

.field static final TRANSACTION_getFromLocationName:I = 0x15

.field static final TRANSACTION_getLastKnownLocation:I = 0x11

.field static final TRANSACTION_getProviderInfo:I = 0xf

.field static final TRANSACTION_getProviders:I = 0x2

.field static final TRANSACTION_isProviderEnabled:I = 0x10

.field static final TRANSACTION_locationCallbackFinished:I = 0xb

.field static final TRANSACTION_providerMeetsCriteria:I = 0x4

.field static final TRANSACTION_removeGpsStatusListener:I = 0xa

.field static final TRANSACTION_removeProximityAlert:I = 0xe

.field static final TRANSACTION_removeTestProvider:I = 0x17

.field static final TRANSACTION_removeUpdates:I = 0x7

.field static final TRANSACTION_removeUpdatesPI:I = 0x8

.field static final TRANSACTION_reportLocation:I = 0x12

.field static final TRANSACTION_requestLocationUpdates:I = 0x5

.field static final TRANSACTION_requestLocationUpdatesPI:I = 0x6

.field static final TRANSACTION_sendExtraCommand:I = 0xc

.field static final TRANSACTION_sendNiResponse:I = 0x1e

.field static final TRANSACTION_setTestProviderEnabled:I = 0x1a

.field static final TRANSACTION_setTestProviderLocation:I = 0x18

.field static final TRANSACTION_setTestProviderStatus:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/location/ILocationManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 59
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
    .line 43
    sparse-switch p1, :sswitch_data_5dc

    .line 518
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 47
    :sswitch_8
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    goto :goto_7

    .line 52
    :sswitch_12
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v53

    .line 54
    .local v53, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 56
    const/4 v4, 0x1

    goto :goto_7

    .line 60
    .end local v53           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2a
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5f

    .line 63
    sget-object v4, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Criteria;

    .line 69
    .local v5, _arg0:Landroid/location/Criteria;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    const/4 v4, 0x1

    move v6, v4

    .line 70
    .local v6, _arg1:Z
    :goto_4b
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v53

    .line 71
    .restart local v53       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 73
    const/4 v4, 0x1

    goto :goto_7

    .line 66
    .end local v5           #_arg0:Landroid/location/Criteria;
    .end local v6           #_arg1:Z
    .end local v53           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5f
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/location/Criteria;
    goto :goto_43

    .line 69
    :cond_61
    const/4 v4, 0x0

    move v6, v4

    goto :goto_4b

    .line 77
    .end local v5           #_arg0:Landroid/location/Criteria;
    :sswitch_64
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9a

    .line 80
    sget-object v4, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Criteria;

    .line 86
    .restart local v5       #_arg0:Landroid/location/Criteria;
    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9c

    const/4 v4, 0x1

    move v6, v4

    .line 87
    .restart local v6       #_arg1:Z
    :goto_85
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v52

    .line 88
    .local v52, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 83
    .end local v5           #_arg0:Landroid/location/Criteria;
    .end local v6           #_arg1:Z
    .end local v52           #_result:Ljava/lang/String;
    :cond_9a
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/location/Criteria;
    goto :goto_7d

    .line 86
    :cond_9c
    const/4 v4, 0x0

    move v6, v4

    goto :goto_85

    .line 94
    .end local v5           #_arg0:Landroid/location/Criteria;
    :sswitch_9f
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3

    .line 99
    sget-object v4, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Criteria;

    .line 104
    .local v6, _arg1:Landroid/location/Criteria;
    :goto_bc
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v52

    .line 105
    .local v52, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v52, :cond_d5

    const/4 v4, 0x1

    :goto_ca
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 102
    .end local v6           #_arg1:Landroid/location/Criteria;
    .end local v52           #_result:Z
    :cond_d3
    const/4 v6, 0x0

    .restart local v6       #_arg1:Landroid/location/Criteria;
    goto :goto_bc

    .line 106
    .restart local v52       #_result:Z
    :cond_d5
    const/4 v4, 0x0

    goto :goto_ca

    .line 111
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Landroid/location/Criteria;
    .end local v52           #_result:Z
    :sswitch_d7
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 115
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_117

    .line 116
    sget-object v4, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Criteria;

    .line 122
    .restart local v6       #_arg1:Landroid/location/Criteria;
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 124
    .local v7, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 126
    .local v9, _arg3:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_119

    const/4 v4, 0x1

    move v10, v4

    .line 128
    .local v10, _arg4:Z
    :goto_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v11

    .local v11, _arg5:Landroid/location/ILocationListener;
    move-object/from16 v4, p0

    .line 129
    invoke-virtual/range {v4 .. v11}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/ILocationListener;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 119
    .end local v6           #_arg1:Landroid/location/Criteria;
    .end local v7           #_arg2:J
    .end local v9           #_arg3:F
    .end local v10           #_arg4:Z
    .end local v11           #_arg5:Landroid/location/ILocationListener;
    :cond_117
    const/4 v6, 0x0

    .restart local v6       #_arg1:Landroid/location/Criteria;
    goto :goto_f4

    .line 126
    .restart local v7       #_arg2:J
    .restart local v9       #_arg3:F
    :cond_119
    const/4 v4, 0x0

    move v10, v4

    goto :goto_104

    .line 135
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Landroid/location/Criteria;
    .end local v7           #_arg2:J
    .end local v9           #_arg3:F
    :sswitch_11c
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 139
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_165

    .line 140
    sget-object v4, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Criteria;

    .line 146
    .restart local v6       #_arg1:Landroid/location/Criteria;
    :goto_139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 148
    .restart local v7       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 150
    .restart local v9       #_arg3:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_167

    const/4 v4, 0x1

    move v10, v4

    .line 152
    .restart local v10       #_arg4:Z
    :goto_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16a

    .line 153
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .local v11, _arg5:Landroid/app/PendingIntent;
    :goto_15a
    move-object/from16 v4, p0

    .line 158
    invoke-virtual/range {v4 .. v11}, Landroid/location/ILocationManager$Stub;->requestLocationUpdatesPI(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 143
    .end local v6           #_arg1:Landroid/location/Criteria;
    .end local v7           #_arg2:J
    .end local v9           #_arg3:F
    .end local v10           #_arg4:Z
    .end local v11           #_arg5:Landroid/app/PendingIntent;
    :cond_165
    const/4 v6, 0x0

    .restart local v6       #_arg1:Landroid/location/Criteria;
    goto :goto_139

    .line 150
    .restart local v7       #_arg2:J
    .restart local v9       #_arg3:F
    :cond_167
    const/4 v4, 0x0

    move v10, v4

    goto :goto_149

    .line 156
    .restart local v10       #_arg4:Z
    :cond_16a
    const/4 v11, 0x0

    .restart local v11       #_arg5:Landroid/app/PendingIntent;
    goto :goto_15a

    .line 164
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Landroid/location/Criteria;
    .end local v7           #_arg2:J
    .end local v9           #_arg3:F
    .end local v10           #_arg4:Z
    .end local v11           #_arg5:Landroid/app/PendingIntent;
    :sswitch_16c
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v5

    .line 167
    .local v5, _arg0:Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 173
    .end local v5           #_arg0:Landroid/location/ILocationListener;
    :sswitch_188
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ad

    .line 176
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 181
    .local v5, _arg0:Landroid/app/PendingIntent;
    :goto_1a1
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeUpdatesPI(Landroid/app/PendingIntent;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 179
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :cond_1ad
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/app/PendingIntent;
    goto :goto_1a1

    .line 187
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :sswitch_1af
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v5

    .line 190
    .local v5, _arg0:Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v52

    .line 191
    .restart local v52       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v52, :cond_1d5

    const/4 v4, 0x1

    :goto_1cc
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 192
    :cond_1d5
    const/4 v4, 0x0

    goto :goto_1cc

    .line 197
    .end local v5           #_arg0:Landroid/location/IGpsStatusListener;
    .end local v52           #_result:Z
    :sswitch_1d7
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v5

    .line 200
    .restart local v5       #_arg0:Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 206
    .end local v5           #_arg0:Landroid/location/IGpsStatusListener;
    :sswitch_1f3
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v5

    .line 209
    .local v5, _arg0:Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 215
    .end local v5           #_arg0:Landroid/location/ILocationListener;
    :sswitch_20f
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_259

    .line 222
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 227
    .local v7, _arg2:Landroid/os/Bundle;
    :goto_230
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v52

    .line 228
    .restart local v52       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v52, :cond_25b

    const/4 v4, 0x1

    :goto_23f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    if-eqz v7, :cond_25d

    .line 231
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v4, 0x1

    move-object v0, v7

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 237
    :goto_256
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 225
    .end local v7           #_arg2:Landroid/os/Bundle;
    .end local v52           #_result:Z
    :cond_259
    const/4 v7, 0x0

    .restart local v7       #_arg2:Landroid/os/Bundle;
    goto :goto_230

    .line 229
    .restart local v52       #_result:Z
    :cond_25b
    const/4 v4, 0x0

    goto :goto_23f

    .line 235
    :cond_25d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_256

    .line 241
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:Landroid/os/Bundle;
    .end local v52           #_result:Z
    :sswitch_265
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    .line 245
    .local v13, _arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 247
    .local v15, _arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 249
    .local v7, _arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 251
    .local v18, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29d

    .line 252
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, _arg4:Landroid/app/PendingIntent;
    :goto_28e
    move-object/from16 v12, p0

    move/from16 v17, v7

    move-object/from16 v20, v10

    .line 257
    invoke-virtual/range {v12 .. v20}, Landroid/location/ILocationManager$Stub;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 255
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    :cond_29d
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    goto :goto_28e

    .line 263
    .end local v7           #_arg2:F
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v13           #_arg0:D
    .end local v15           #_arg1:D
    .end local v18           #_arg3:J
    :sswitch_29f
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c4

    .line 266
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 271
    .local v5, _arg0:Landroid/app/PendingIntent;
    :goto_2b8
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeProximityAlert(Landroid/app/PendingIntent;)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 269
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :cond_2c4
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/app/PendingIntent;
    goto :goto_2b8

    .line 277
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :sswitch_2c6
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v52

    .line 281
    .local v52, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v52, :cond_2f1

    .line 283
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 289
    :goto_2ee
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 287
    :cond_2f1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2ee

    .line 293
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v52           #_result:Landroid/os/Bundle;
    :sswitch_2f9
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v52

    .line 297
    .local v52, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v52, :cond_31b

    const/4 v4, 0x1

    :goto_312
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 298
    :cond_31b
    const/4 v4, 0x0

    goto :goto_312

    .line 303
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v52           #_result:Z
    :sswitch_31d
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 306
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v52

    .line 307
    .local v52, _result:Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v52, :cond_348

    .line 309
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 315
    :goto_345
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 313
    :cond_348
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_345

    .line 319
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v52           #_result:Landroid/location/Location;
    :sswitch_350
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37e

    .line 322
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 328
    .local v5, _arg0:Landroid/location/Location;
    :goto_369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_380

    const/4 v4, 0x1

    move v6, v4

    .line 329
    .local v6, _arg1:Z
    :goto_371
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 325
    .end local v5           #_arg0:Landroid/location/Location;
    .end local v6           #_arg1:Z
    :cond_37e
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/location/Location;
    goto :goto_369

    .line 328
    :cond_380
    const/4 v4, 0x0

    move v6, v4

    goto :goto_371

    .line 335
    .end local v5           #_arg0:Landroid/location/Location;
    :sswitch_383
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v52

    .line 337
    .local v52, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v52, :cond_39e

    const/4 v4, 0x1

    :goto_395
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 338
    :cond_39e
    const/4 v4, 0x0

    goto :goto_395

    .line 343
    .end local v52           #_result:Z
    :sswitch_3a0
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    .line 347
    .restart local v13       #_arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 349
    .restart local v15       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 351
    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3ec

    .line 352
    sget-object v4, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/GeocoderParams;

    .line 358
    .local v9, _arg3:Landroid/location/GeocoderParams;
    :goto_3c5
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .local v27, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v20, p0

    move-wide/from16 v21, v13

    move-wide/from16 v23, v15

    move/from16 v25, v7

    move-object/from16 v26, v9

    .line 359
    invoke-virtual/range {v20 .. v27}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v52

    .line 360
    .local v52, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 363
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 355
    .end local v9           #_arg3:Landroid/location/GeocoderParams;
    .end local v27           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v52           #_result:Ljava/lang/String;
    :cond_3ec
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/location/GeocoderParams;
    goto :goto_3c5

    .line 367
    .end local v7           #_arg2:I
    .end local v9           #_arg3:Landroid/location/GeocoderParams;
    .end local v13           #_arg0:D
    .end local v15           #_arg1:D
    :sswitch_3ee
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 373
    .restart local v15       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 375
    .local v7, _arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 377
    .local v18, _arg3:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v36

    .line 379
    .local v36, _arg4:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 381
    .local v11, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_448

    .line 382
    sget-object v4, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/location/GeocoderParams;

    .line 388
    .local v39, _arg6:Landroid/location/GeocoderParams;
    :goto_41f
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .local v40, _arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v28, p0

    move-object/from16 v29, v5

    move-wide/from16 v30, v15

    move-wide/from16 v32, v7

    move-wide/from16 v34, v18

    move/from16 v38, v11

    .line 389
    invoke-virtual/range {v28 .. v40}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v52

    .line 390
    .restart local v52       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 393
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 385
    .end local v39           #_arg6:Landroid/location/GeocoderParams;
    .end local v40           #_arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v52           #_result:Ljava/lang/String;
    :cond_448
    const/16 v39, 0x0

    .restart local v39       #_arg6:Landroid/location/GeocoderParams;
    goto :goto_41f

    .line 397
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v7           #_arg2:D
    .end local v11           #_arg5:I
    .end local v15           #_arg1:D
    .end local v18           #_arg3:D
    .end local v36           #_arg4:D
    .end local v39           #_arg6:Landroid/location/GeocoderParams;
    :sswitch_44b
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 401
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b2

    const/4 v4, 0x1

    move v6, v4

    .line 403
    .restart local v6       #_arg1:Z
    :goto_45f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b5

    const/4 v4, 0x1

    move v7, v4

    .line 405
    .local v7, _arg2:Z
    :goto_467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b8

    const/4 v4, 0x1

    move v9, v4

    .line 407
    .local v9, _arg3:Z
    :goto_46f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4bb

    const/4 v4, 0x1

    move v10, v4

    .line 409
    .local v10, _arg4:Z
    :goto_477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4be

    const/4 v4, 0x1

    move v11, v4

    .line 411
    .local v11, _arg5:Z
    :goto_47f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c1

    const/4 v4, 0x1

    move/from16 v39, v4

    .line 413
    .local v39, _arg6:Z
    :goto_488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c5

    const/4 v4, 0x1

    move/from16 v49, v4

    .line 415
    .local v49, _arg7:Z
    :goto_491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 417
    .local v50, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .local v51, _arg9:I
    move-object/from16 v41, p0

    move-object/from16 v42, v5

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v45, v9

    move/from16 v46, v10

    move/from16 v47, v11

    move/from16 v48, v39

    .line 418
    invoke-virtual/range {v41 .. v51}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 401
    .end local v6           #_arg1:Z
    .end local v7           #_arg2:Z
    .end local v9           #_arg3:Z
    .end local v10           #_arg4:Z
    .end local v11           #_arg5:Z
    .end local v39           #_arg6:Z
    .end local v49           #_arg7:Z
    .end local v50           #_arg8:I
    .end local v51           #_arg9:I
    :cond_4b2
    const/4 v4, 0x0

    move v6, v4

    goto :goto_45f

    .line 403
    .restart local v6       #_arg1:Z
    :cond_4b5
    const/4 v4, 0x0

    move v7, v4

    goto :goto_467

    .line 405
    .restart local v7       #_arg2:Z
    :cond_4b8
    const/4 v4, 0x0

    move v9, v4

    goto :goto_46f

    .line 407
    .restart local v9       #_arg3:Z
    :cond_4bb
    const/4 v4, 0x0

    move v10, v4

    goto :goto_477

    .line 409
    .restart local v10       #_arg4:Z
    :cond_4be
    const/4 v4, 0x0

    move v11, v4

    goto :goto_47f

    .line 411
    .restart local v11       #_arg5:Z
    :cond_4c1
    const/4 v4, 0x0

    move/from16 v39, v4

    goto :goto_488

    .line 413
    .restart local v39       #_arg6:Z
    :cond_4c5
    const/4 v4, 0x0

    move/from16 v49, v4

    goto :goto_491

    .line 424
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Z
    .end local v7           #_arg2:Z
    .end local v9           #_arg3:Z
    .end local v10           #_arg4:Z
    .end local v11           #_arg5:Z
    .end local v39           #_arg6:Z
    :sswitch_4c9
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 427
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 433
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_4e1
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 437
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50b

    .line 438
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    .line 443
    .local v6, _arg1:Landroid/location/Location;
    :goto_4fe
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 441
    .end local v6           #_arg1:Landroid/location/Location;
    :cond_50b
    const/4 v6, 0x0

    .restart local v6       #_arg1:Landroid/location/Location;
    goto :goto_4fe

    .line 449
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Landroid/location/Location;
    :sswitch_50d
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 452
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 458
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_525
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 462
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_546

    const/4 v4, 0x1

    move v6, v4

    .line 463
    .local v6, _arg1:Z
    :goto_539
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 462
    .end local v6           #_arg1:Z
    :cond_546
    const/4 v4, 0x0

    move v6, v4

    goto :goto_539

    .line 469
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_549
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 472
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 478
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_561
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 482
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 484
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_599

    .line 485
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 491
    .local v7, _arg2:Landroid/os/Bundle;
    :goto_582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, _arg3:J
    move-object/from16 v20, p0

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v24, v18

    .line 492
    invoke-virtual/range {v20 .. v25}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 488
    .end local v7           #_arg2:Landroid/os/Bundle;
    .end local v18           #_arg3:J
    :cond_599
    const/4 v7, 0x0

    .restart local v7       #_arg2:Landroid/os/Bundle;
    goto :goto_582

    .line 498
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v7           #_arg2:Landroid/os/Bundle;
    :sswitch_59b
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 501
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 507
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_5b3
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 511
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 512
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v52

    .line 513
    .local v52, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v52, :cond_5da

    const/4 v4, 0x1

    :goto_5d1
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 514
    :cond_5da
    const/4 v4, 0x0

    goto :goto_5d1

    .line 43
    :sswitch_data_5dc
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_64
        0x4 -> :sswitch_9f
        0x5 -> :sswitch_d7
        0x6 -> :sswitch_11c
        0x7 -> :sswitch_16c
        0x8 -> :sswitch_188
        0x9 -> :sswitch_1af
        0xa -> :sswitch_1d7
        0xb -> :sswitch_1f3
        0xc -> :sswitch_20f
        0xd -> :sswitch_265
        0xe -> :sswitch_29f
        0xf -> :sswitch_2c6
        0x10 -> :sswitch_2f9
        0x11 -> :sswitch_31d
        0x12 -> :sswitch_350
        0x13 -> :sswitch_383
        0x14 -> :sswitch_3a0
        0x15 -> :sswitch_3ee
        0x16 -> :sswitch_44b
        0x17 -> :sswitch_4c9
        0x18 -> :sswitch_4e1
        0x19 -> :sswitch_50d
        0x1a -> :sswitch_525
        0x1b -> :sswitch_549
        0x1c -> :sswitch_561
        0x1d -> :sswitch_59b
        0x1e -> :sswitch_5b3
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

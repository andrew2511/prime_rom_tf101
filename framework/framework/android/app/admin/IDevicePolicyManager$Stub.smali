.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_getActiveAdmins:I = 0x26

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x17

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x20

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1c

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getRemoveWarning:I = 0x28

.field static final TRANSACTION_getStorageEncryption:I = 0x22

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x23

.field static final TRANSACTION_hasGrantedPolicy:I = 0x2a

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x25

.field static final TRANSACTION_lockNow:I = 0x1d

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x27

.field static final TRANSACTION_removeActiveAdmin:I = 0x29

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x2c

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x2d

.field static final TRANSACTION_resetPassword:I = 0x1a

.field static final TRANSACTION_setActiveAdmin:I = 0x24

.field static final TRANSACTION_setActivePasswordState:I = 0x2b

.field static final TRANSACTION_setGlobalProxy:I = 0x1f

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x18

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1b

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setStorageEncryption:I = 0x21

.field static final TRANSACTION_wipeData:I = 0x1e


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
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
    .line 42
    sparse-switch p1, :sswitch_data_78a

    .line 698
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 46
    :sswitch_8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    goto :goto_7

    .line 51
    :sswitch_12
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 54
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 60
    .local v5, _arg0:Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 61
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v4, 0x1

    goto :goto_7

    .line 57
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_3b
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_2b

    .line 67
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_3d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    .line 70
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 75
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_56
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v15

    .line 76
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v4, 0x1

    goto :goto_7

    .line 73
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_68
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_56

    .line 82
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_6a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_94

    .line 85
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 91
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 92
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 88
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_94
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_83

    .line 98
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_96
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c2

    .line 101
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 106
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_af
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v15

    .line 107
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 104
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_c2
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_af

    .line 113
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_c4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ee

    .line 116
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 122
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 123
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 119
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_ee
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_dd

    .line 129
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_f0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11c

    .line 132
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 137
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_109
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v15

    .line 138
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 135
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_11c
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_109

    .line 144
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_11e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_148

    .line 147
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 153
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 154
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 150
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_148
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_137

    .line 160
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_14a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_176

    .line 163
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 168
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_163
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v15

    .line 169
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 166
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_176
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_163

    .line 175
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_178
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a2

    .line 178
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 184
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 185
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 181
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_1a2
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_191

    .line 191
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d0

    .line 194
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 199
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_1bd
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v15

    .line 200
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 197
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_1d0
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_1bd

    .line 206
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_1d2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1fc

    .line 209
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 215
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_1eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 216
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 212
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_1fc
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_1eb

    .line 222
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_1fe
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22a

    .line 225
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 230
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_217
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v15

    .line 231
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 228
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_22a
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_217

    .line 237
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_22c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_256

    .line 240
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 246
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 247
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 243
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_256
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_245

    .line 253
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_258
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_284

    .line 256
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 261
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_271
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v15

    .line 262
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 259
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_284
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_271

    .line 268
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_286
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b0

    .line 271
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 277
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_29f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 278
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 274
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_2b0
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_29f

    .line 284
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_2b2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2de

    .line 287
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 292
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_2cb
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v15

    .line 293
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 290
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_2de
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_2cb

    .line 299
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_2e0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30a

    .line 302
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 308
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_2f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 309
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 305
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_30a
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_2f9

    .line 315
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_30c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_338

    .line 318
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 323
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_325
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v15

    .line 324
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 321
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_338
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_325

    .line 330
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_33a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_364

    .line 333
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 339
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 340
    .local v13, _arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 336
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v13           #_arg1:J
    :cond_364
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_353

    .line 346
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_366
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_392

    .line 349
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 354
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_37f
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v15

    .line 355
    .local v15, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 357
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 352
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:J
    :cond_392
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_37f

    .line 361
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_394
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c0

    .line 364
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 369
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_3ad
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v15

    .line 370
    .restart local v15       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 372
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 367
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:J
    :cond_3c0
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_3ad

    .line 376
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_3c2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v15

    .line 378
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v15, :cond_3dd

    const/4 v4, 0x1

    :goto_3d4
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 379
    :cond_3dd
    const/4 v4, 0x0

    goto :goto_3d4

    .line 384
    .end local v15           #_result:Z
    :sswitch_3df
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v15

    .line 386
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 392
    .end local v15           #_result:I
    :sswitch_3f7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_421

    .line 395
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 401
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 402
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 398
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    :cond_421
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_410

    .line 408
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_423
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44f

    .line 411
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 416
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_43c
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v15

    .line 417
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 414
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_44f
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_43c

    .line 423
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_451
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 428
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v15

    .line 429
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v15, :cond_478

    const/4 v4, 0x1

    :goto_46f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 430
    :cond_478
    const/4 v4, 0x0

    goto :goto_46f

    .line 435
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v15           #_result:Z
    :sswitch_47a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a4

    .line 438
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 444
    .local v5, _arg0:Landroid/content/ComponentName;
    :goto_493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 445
    .restart local v13       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 441
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v13           #_arg1:J
    :cond_4a4
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_493

    .line 451
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_4a6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d2

    .line 454
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 459
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_4bf
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v15

    .line 460
    .local v15, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 462
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 457
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:J
    :cond_4d2
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_4bf

    .line 466
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_4d4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 473
    :sswitch_4e5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 476
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 482
    .end local v5           #_arg0:I
    :sswitch_4fd
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_53e

    .line 485
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 491
    .local v5, _arg0:Landroid/content/ComponentName;
    :goto_516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    .line 495
    .local v15, _result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v15, :cond_540

    .line 497
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v4, 0x1

    move-object v0, v15

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 503
    :goto_53b
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 488
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:Ljava/lang/String;
    .end local v15           #_result:Landroid/content/ComponentName;
    :cond_53e
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_516

    .line 501
    .restart local v6       #_arg1:Ljava/lang/String;
    .restart local v7       #_arg2:Ljava/lang/String;
    .restart local v15       #_result:Landroid/content/ComponentName;
    :cond_540
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53b

    .line 507
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:Ljava/lang/String;
    .end local v15           #_result:Landroid/content/ComponentName;
    :sswitch_548
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v15

    .line 509
    .restart local v15       #_result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v15, :cond_56b

    .line 511
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v4, 0x1

    move-object v0, v15

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 517
    :goto_568
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 515
    :cond_56b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_568

    .line 521
    .end local v15           #_result:Landroid/content/ComponentName;
    :sswitch_573
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a8

    .line 524
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 530
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_58c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5aa

    const/4 v4, 0x1

    move v6, v4

    .line 531
    .local v6, _arg1:Z
    :goto_594
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v15

    .line 532
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 527
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:Z
    .end local v15           #_result:I
    :cond_5a8
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_58c

    .line 530
    :cond_5aa
    const/4 v4, 0x0

    move v6, v4

    goto :goto_594

    .line 538
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_5ad
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5dc

    .line 541
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 546
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_5c6
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v15

    .line 547
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v15, :cond_5de

    const/4 v4, 0x1

    :goto_5d3
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 544
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:Z
    :cond_5dc
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_5c6

    .line 548
    .restart local v15       #_result:Z
    :cond_5de
    const/4 v4, 0x0

    goto :goto_5d3

    .line 553
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:Z
    :sswitch_5e0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus()I

    move-result v15

    .line 555
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 561
    .end local v15           #_result:I
    :sswitch_5f8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_626

    .line 564
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 570
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_628

    const/4 v4, 0x1

    move v6, v4

    .line 571
    .restart local v6       #_arg1:Z
    :goto_619
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 567
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:Z
    :cond_626
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_611

    .line 570
    :cond_628
    const/4 v4, 0x0

    move v6, v4

    goto :goto_619

    .line 577
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_62b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65a

    .line 580
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 585
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_644
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v15

    .line 586
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v15, :cond_65c

    const/4 v4, 0x1

    :goto_651
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 583
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:Z
    :cond_65a
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_644

    .line 587
    .restart local v15       #_result:Z
    :cond_65c
    const/4 v4, 0x0

    goto :goto_651

    .line 592
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:Z
    :sswitch_65e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v17

    .line 594
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 596
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 600
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_677
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v15

    .line 604
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    if-eqz v15, :cond_699

    const/4 v4, 0x1

    :goto_690
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 605
    :cond_699
    const/4 v4, 0x0

    goto :goto_690

    .line 610
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_69b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d2

    .line 613
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 619
    .local v5, _arg0:Landroid/content/ComponentName;
    :goto_6b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d4

    .line 620
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    .line 625
    .local v6, _arg1:Landroid/os/RemoteCallback;
    :goto_6c5
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 616
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:Landroid/os/RemoteCallback;
    :cond_6d2
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_6b4

    .line 623
    :cond_6d4
    const/4 v6, 0x0

    .restart local v6       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_6c5

    .line 631
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_6d6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6fb

    .line 634
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 639
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_6ef
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 637
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :cond_6fb
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_6ef

    .line 645
    .end local v5           #_arg0:Landroid/content/ComponentName;
    :sswitch_6fd
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_731

    .line 648
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 654
    .restart local v5       #_arg0:Landroid/content/ComponentName;
    :goto_716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 655
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v15

    .line 656
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    if-eqz v15, :cond_733

    const/4 v4, 0x1

    :goto_728
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 651
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    .end local v15           #_result:Z
    :cond_731
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/ComponentName;
    goto :goto_716

    .line 657
    .restart local v6       #_arg1:I
    .restart local v15       #_result:Z
    :cond_733
    const/4 v4, 0x0

    goto :goto_728

    .line 662
    .end local v5           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:I
    .end local v15           #_result:Z
    :sswitch_735
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 666
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 668
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 670
    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 672
    .local v8, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 674
    .local v9, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 676
    .local v10, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 678
    .local v11, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg7:I
    move-object/from16 v4, p0

    .line 679
    invoke-virtual/range {v4 .. v12}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIII)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 685
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    .end local v9           #_arg4:I
    .end local v10           #_arg5:I
    .end local v11           #_arg6:I
    .end local v12           #_arg7:I
    :sswitch_768
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    .line 687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 692
    :sswitch_779
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 42
    :sswitch_data_78a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_96
        0x5 -> :sswitch_c4
        0x6 -> :sswitch_f0
        0x7 -> :sswitch_11e
        0x8 -> :sswitch_14a
        0x9 -> :sswitch_178
        0xa -> :sswitch_1a4
        0xb -> :sswitch_1d2
        0xc -> :sswitch_1fe
        0xd -> :sswitch_22c
        0xe -> :sswitch_258
        0xf -> :sswitch_286
        0x10 -> :sswitch_2b2
        0x11 -> :sswitch_2e0
        0x12 -> :sswitch_30c
        0x13 -> :sswitch_33a
        0x14 -> :sswitch_366
        0x15 -> :sswitch_394
        0x16 -> :sswitch_3c2
        0x17 -> :sswitch_3df
        0x18 -> :sswitch_3f7
        0x19 -> :sswitch_423
        0x1a -> :sswitch_451
        0x1b -> :sswitch_47a
        0x1c -> :sswitch_4a6
        0x1d -> :sswitch_4d4
        0x1e -> :sswitch_4e5
        0x1f -> :sswitch_4fd
        0x20 -> :sswitch_548
        0x21 -> :sswitch_573
        0x22 -> :sswitch_5ad
        0x23 -> :sswitch_5e0
        0x24 -> :sswitch_5f8
        0x25 -> :sswitch_62b
        0x26 -> :sswitch_65e
        0x27 -> :sswitch_677
        0x28 -> :sswitch_69b
        0x29 -> :sswitch_6d6
        0x2a -> :sswitch_6fd
        0x2b -> :sswitch_735
        0x2c -> :sswitch_768
        0x2d -> :sswitch_779
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

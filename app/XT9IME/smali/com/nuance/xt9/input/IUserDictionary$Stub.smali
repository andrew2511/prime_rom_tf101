.class public abstract Lcom/nuance/xt9/input/IUserDictionary$Stub;
.super Landroid/os/Binder;
.source "IUserDictionary.java"

# interfaces
.implements Lcom/nuance/xt9/input/IUserDictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/IUserDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/IUserDictionary$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nuance.xt9.input.IUserDictionary"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_delete:I = 0x2

.field static final TRANSACTION_find:I = 0x6

.field static final TRANSACTION_finish:I = 0x8

.field static final TRANSACTION_getCurrentUserWord:I = 0x9

.field static final TRANSACTION_getFirst:I = 0x4

.field static final TRANSACTION_getNext:I = 0x5

.field static final TRANSACTION_hasActiveSequence:I = 0xb

.field static final TRANSACTION_isPinyinMode:I = 0xd

.field static final TRANSACTION_isStrokeOrBPMFMode:I = 0xc

.field static final TRANSACTION_resetCurrentUserWord:I = 0xa

.field static final TRANSACTION_start:I = 0x7

.field static final TRANSACTION_update:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p0, p0, v0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nuance/xt9/input/IUserDictionary;
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
    const-string v1, "com.nuance.xt9.input.IUserDictionary"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nuance/xt9/input/IUserDictionary;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/nuance/xt9/input/IUserDictionary;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/nuance/xt9/input/IUserDictionary$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/IUserDictionary$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Lcom/nuance/xt9/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/UserWord;

    .line 57
    .local v1, _arg1:Lcom/nuance/xt9/input/UserWord;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->add(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z

    move-result v3

    .line 58
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v3, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 60
    goto :goto_0

    .line 55
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    goto :goto_1

    .restart local v3       #_result:Z
    :cond_1
    move v4, v6

    .line 59
    goto :goto_2

    .line 64
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :sswitch_2
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    sget-object v4, Lcom/nuance/xt9/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/UserWord;

    .line 74
    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->delete(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z

    move-result v3

    .line 75
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v3, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 77
    goto :goto_0

    .line 72
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    goto :goto_3

    .restart local v3       #_result:Z
    :cond_3
    move v4, v6

    .line 76
    goto :goto_4

    .line 81
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :sswitch_3
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    sget-object v4, Lcom/nuance/xt9/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/UserWord;

    .line 92
    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 93
    sget-object v4, Lcom/nuance/xt9/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/UserWord;

    .line 98
    .local v2, _arg2:Lcom/nuance/xt9/input/UserWord;
    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->update(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;Lcom/nuance/xt9/input/UserWord;)Z

    move-result v3

    .line 99
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v3, :cond_6

    move v4, v5

    :goto_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 101
    goto/16 :goto_0

    .line 89
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v2           #_arg2:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    goto :goto_5

    .line 96
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg2:Lcom/nuance/xt9/input/UserWord;
    goto :goto_6

    .restart local v3       #_result:Z
    :cond_6
    move v4, v6

    .line 100
    goto :goto_7

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v2           #_arg2:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :sswitch_4
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #_arg0:Ljava/lang/String;
    new-instance v1, Lcom/nuance/xt9/input/UserWord;

    invoke-direct {v1}, Lcom/nuance/xt9/input/UserWord;-><init>()V

    .line 110
    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->getFirst(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z

    move-result v3

    .line 111
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v3, :cond_7

    move v4, v5

    :goto_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    if-eqz v1, :cond_8

    .line 114
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v1, p3, v5}, Lcom/nuance/xt9/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    move v4, v5

    .line 120
    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 112
    goto :goto_8

    .line 118
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 124
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :sswitch_5
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0       #_arg0:Ljava/lang/String;
    new-instance v1, Lcom/nuance/xt9/input/UserWord;

    invoke-direct {v1}, Lcom/nuance/xt9/input/UserWord;-><init>()V

    .line 129
    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->getNext(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z

    move-result v3

    .line 130
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v3, :cond_9

    move v4, v5

    :goto_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    if-eqz v1, :cond_a

    .line 133
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v1, p3, v5}, Lcom/nuance/xt9/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    move v4, v5

    .line 139
    goto/16 :goto_0

    :cond_9
    move v4, v6

    .line 131
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 143
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :sswitch_6
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 148
    sget-object v4, Lcom/nuance/xt9/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/UserWord;

    .line 153
    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->find(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z

    move-result v3

    .line 154
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v3, :cond_c

    move v4, v5

    :goto_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 156
    goto/16 :goto_0

    .line 151
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/nuance/xt9/input/UserWord;
    goto :goto_c

    .restart local v3       #_result:Z
    :cond_c
    move v4, v6

    .line 155
    goto :goto_d

    .line 160
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/nuance/xt9/input/UserWord;
    .end local v3           #_result:Z
    :sswitch_7
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->start(Ljava/lang/String;)Z

    move-result v3

    .line 164
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v3, :cond_d

    move v4, v5

    :goto_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 166
    goto/16 :goto_0

    :cond_d
    move v4, v6

    .line 165
    goto :goto_e

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_8
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->finish(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 175
    goto/16 :goto_0

    .line 179
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->getCurrentUserWord()Lcom/nuance/xt9/input/UserWord;

    move-result-object v3

    .line 181
    .local v3, _result:Lcom/nuance/xt9/input/UserWord;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v3, :cond_e

    .line 183
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v3, p3, v5}, Lcom/nuance/xt9/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    move v4, v5

    .line 189
    goto/16 :goto_0

    .line 187
    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 193
    .end local v3           #_result:Lcom/nuance/xt9/input/UserWord;
    :sswitch_a
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->resetCurrentUserWord()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 196
    goto/16 :goto_0

    .line 200
    :sswitch_b
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->hasActiveSequence(Ljava/lang/String;)Z

    move-result v3

    .line 204
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v3, :cond_f

    move v4, v5

    :goto_10
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 206
    goto/16 :goto_0

    :cond_f
    move v4, v6

    .line 205
    goto :goto_10

    .line 210
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_c
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->isStrokeOrBPMFMode()Z

    move-result v3

    .line 212
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v3, :cond_10

    move v4, v5

    :goto_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 214
    goto/16 :goto_0

    :cond_10
    move v4, v6

    .line 213
    goto :goto_11

    .line 218
    .end local v3           #_result:Z
    :sswitch_d
    const-string v4, "com.nuance.xt9.input.IUserDictionary"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;->isPinyinMode()Z

    move-result v3

    .line 220
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v3, :cond_11

    move v4, v5

    :goto_12
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 222
    goto/16 :goto_0

    :cond_11
    move v4, v6

    .line 221
    goto :goto_12

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

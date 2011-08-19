.class public abstract Landroid/database/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Landroid/database/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;
    .registers 3
    .parameter "obj"

    .prologue
    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v1, 0x0

    .line 52
    :goto_3
    return-object v1

    .line 47
    :cond_4
    const-string v1, "android.content.IBulkCursor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/database/IBulkCursor;

    .line 48
    .local v0, in:Landroid/database/IBulkCursor;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 49
    goto :goto_3

    .line 52
    :cond_10
    new-instance v1, Landroid/database/BulkCursorProxy;

    invoke-direct {v1, p0}, Landroid/database/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 163
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
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
    .line 59
    packed-switch p1, :pswitch_data_14a

    .line 158
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    :goto_7
    return v15

    .line 61
    :pswitch_8
    :try_start_8
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 63
    .local v13, startPos:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/database/BulkCursorNative;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v14

    .line 64
    .local v14, window:Landroid/database/CursorWindow;
    if-nez v14, :cond_26

    .line 65
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v15, 0x1

    goto :goto_7

    .line 68
    :cond_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v15, 0x1

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    const/4 v15, 0x1

    goto :goto_7

    .line 75
    .end local v13           #startPos:I
    .end local v14           #window:Landroid/database/CursorWindow;
    :pswitch_3a
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->count()I

    move-result v4

    .line 77
    .local v4, count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v15, 0x1

    goto :goto_7

    .line 83
    .end local v4           #count:I
    :pswitch_51
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, columnNames:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    array-length v15, v3

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    array-length v8, v3

    .line 88
    .local v8, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_69
    if-ge v7, v8, :cond_76

    .line 89
    aget-object v15, v3, v7

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    .line 91
    :cond_76
    const/4 v15, 0x1

    goto :goto_7

    .line 95
    .end local v3           #columnNames:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #length:I
    :pswitch_78
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->deactivate()V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v15, 0x1

    goto :goto_7

    .line 102
    :pswitch_88
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->close()V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 109
    :pswitch_99
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v9

    .line 112
    .local v9, observer:Landroid/database/IContentObserver;
    sget-object v15, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/CursorWindow;

    .line 113
    .restart local v14       #window:Landroid/database/CursorWindow;
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/database/BulkCursorNative;->requery(Landroid/database/IContentObserver;Landroid/database/CursorWindow;)I

    move-result v4

    .line 114
    .restart local v4       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 117
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 121
    .end local v4           #count:I
    .end local v9           #observer:Landroid/database/IContentObserver;
    .end local v14           #window:Landroid/database/CursorWindow;
    :pswitch_d2
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 123
    .local v10, position:I
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/database/BulkCursorNative;->onMove(I)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 129
    .end local v10           #position:I
    :pswitch_ea
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->getWantsAllOnMoveCalls()Z

    move-result v11

    .line 131
    .local v11, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v11, :cond_105

    const/4 v15, 0x1

    :goto_fc
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 132
    :cond_105
    const/4 v15, 0x0

    goto :goto_fc

    .line 137
    .end local v11           #result:Z
    :pswitch_107
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 139
    .local v6, extras:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 141
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 145
    .end local v6           #extras:Landroid/os/Bundle;
    :pswitch_11f
    const-string v15, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 147
    .restart local v6       #extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 148
    .local v12, returnExtras:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13b} :catch_13e

    .line 150
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 153
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v12           #returnExtras:Landroid/os/Bundle;
    :catch_13e
    move-exception v15

    move-object v5, v15

    .line 154
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 155
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 59
    nop

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3a
        :pswitch_51
        :pswitch_3
        :pswitch_3
        :pswitch_78
        :pswitch_99
        :pswitch_d2
        :pswitch_ea
        :pswitch_107
        :pswitch_11f
        :pswitch_88
    .end packed-switch
.end method

.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addWithoutInputChannel:I = 0x2

.field static final TRANSACTION_dragRecipientEntered:I = 0x10

.field static final TRANSACTION_dragRecipientExited:I = 0x11

.field static final TRANSACTION_finishDrawing:I = 0x9

.field static final TRANSACTION_getDisplayFrame:I = 0x8

.field static final TRANSACTION_getInTouchMode:I = 0xb

.field static final TRANSACTION_outOfMemory:I = 0x5

.field static final TRANSACTION_performDrag:I = 0xe

.field static final TRANSACTION_performHapticFeedback:I = 0xc

.field static final TRANSACTION_prepareDrag:I = 0xd

.field static final TRANSACTION_relayout:I = 0x4

.field static final TRANSACTION_remove:I = 0x3

.field static final TRANSACTION_reportDropResult:I = 0xf

.field static final TRANSACTION_sendWallpaperCommand:I = 0x14

.field static final TRANSACTION_setInTouchMode:I = 0xa

.field static final TRANSACTION_setInsets:I = 0x7

.field static final TRANSACTION_setTransparentRegion:I = 0x6

.field static final TRANSACTION_setWallpaperPosition:I = 0x12

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x15

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
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
    const-string v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 43
    sparse-switch p1, :sswitch_data_528

    .line 467
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 47
    :sswitch_8
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v5, 0x1

    goto :goto_7

    .line 52
    :sswitch_12
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 56
    .local v6, _arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_75

    .line 57
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 63
    .local v7, _arg1:Landroid/view/WindowManager$LayoutParams;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 65
    .local v8, _arg2:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .local v9, _arg3:Landroid/graphics/Rect;
    new-instance v10, Landroid/view/InputChannel;

    invoke-direct {v10}, Landroid/view/InputChannel;-><init>()V

    .local v10, _arg4:Landroid/view/InputChannel;
    move-object/from16 v5, p0

    .line 68
    invoke-virtual/range {v5 .. v10}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v17

    .line 69
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    if-eqz v9, :cond_77

    .line 72
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v5, 0x1

    move-object v0, v9

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    :goto_62
    if-eqz v10, :cond_7f

    .line 79
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v5, 0x1

    move-object v0, v10

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    :goto_73
    const/4 v5, 0x1

    goto :goto_7

    .line 60
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v10           #_arg4:Landroid/view/InputChannel;
    .end local v17           #_result:I
    :cond_75
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    goto :goto_33

    .line 76
    .restart local v8       #_arg2:I
    .restart local v9       #_arg3:Landroid/graphics/Rect;
    .restart local v10       #_arg4:Landroid/view/InputChannel;
    .restart local v17       #_result:I
    :cond_77
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62

    .line 83
    :cond_7f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_73

    .line 89
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v10           #_arg4:Landroid/view/InputChannel;
    .end local v17           #_result:I
    :sswitch_87
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 93
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d9

    .line 94
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 100
    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 102
    .restart local v8       #_arg2:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .restart local v9       #_arg3:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v17

    .line 104
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    if-eqz v9, :cond_db

    .line 107
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v5, 0x1

    move-object v0, v9

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    :goto_d6
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 97
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v17           #_result:I
    :cond_d9
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    goto :goto_a8

    .line 111
    .restart local v8       #_arg2:I
    .restart local v9       #_arg3:Landroid/graphics/Rect;
    .restart local v17       #_result:I
    :cond_db
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d6

    .line 117
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v17           #_result:I
    :sswitch_e3
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 120
    .restart local v6       #_arg0:Landroid/view/IWindow;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 126
    .end local v6           #_arg0:Landroid/view/IWindow;
    :sswitch_ff
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 130
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b6

    .line 131
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 137
    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    :goto_120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 139
    .restart local v8       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 141
    .local v9, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 143
    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b9

    const/4 v5, 0x1

    move v11, v5

    .line 145
    .local v11, _arg5:Z
    :goto_134
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 147
    .local v12, _arg6:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v13, _arg7:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .local v14, _arg8:Landroid/graphics/Rect;
    new-instance v15, Landroid/content/res/Configuration;

    invoke-direct {v15}, Landroid/content/res/Configuration;-><init>()V

    .line 153
    .local v15, _arg9:Landroid/content/res/Configuration;
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .local v16, _arg10:Landroid/view/Surface;
    move-object/from16 v5, p0

    .line 154
    invoke-virtual/range {v5 .. v16}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v17

    .line 155
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    if-eqz v12, :cond_1bd

    .line 158
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v5, 0x1

    move-object v0, v12

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    :goto_16e
    if-eqz v13, :cond_1c5

    .line 165
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v5, 0x1

    move-object v0, v13

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    :goto_17f
    if-eqz v14, :cond_1cd

    .line 172
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v5, 0x1

    move-object v0, v14

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    :goto_190
    if-eqz v15, :cond_1d5

    .line 179
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    :goto_1a1
    if-eqz v16, :cond_1dd

    .line 186
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    :goto_1b3
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 134
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:I
    .end local v10           #_arg4:I
    .end local v11           #_arg5:Z
    .end local v12           #_arg6:Landroid/graphics/Rect;
    .end local v13           #_arg7:Landroid/graphics/Rect;
    .end local v14           #_arg8:Landroid/graphics/Rect;
    .end local v15           #_arg9:Landroid/content/res/Configuration;
    .end local v16           #_arg10:Landroid/view/Surface;
    .end local v17           #_result:I
    :cond_1b6
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_120

    .line 143
    .restart local v8       #_arg2:I
    .restart local v9       #_arg3:I
    .restart local v10       #_arg4:I
    :cond_1b9
    const/4 v5, 0x0

    move v11, v5

    goto/16 :goto_134

    .line 162
    .restart local v11       #_arg5:Z
    .restart local v12       #_arg6:Landroid/graphics/Rect;
    .restart local v13       #_arg7:Landroid/graphics/Rect;
    .restart local v14       #_arg8:Landroid/graphics/Rect;
    .restart local v15       #_arg9:Landroid/content/res/Configuration;
    .restart local v16       #_arg10:Landroid/view/Surface;
    .restart local v17       #_result:I
    :cond_1bd
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16e

    .line 169
    :cond_1c5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17f

    .line 176
    :cond_1cd
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_190

    .line 183
    :cond_1d5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a1

    .line 190
    :cond_1dd
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b3

    .line 196
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:I
    .end local v10           #_arg4:I
    .end local v11           #_arg5:Z
    .end local v12           #_arg6:Landroid/graphics/Rect;
    .end local v13           #_arg7:Landroid/graphics/Rect;
    .end local v14           #_arg8:Landroid/graphics/Rect;
    .end local v15           #_arg9:Landroid/content/res/Configuration;
    .end local v16           #_arg10:Landroid/view/Surface;
    .end local v17           #_result:I
    :sswitch_1e5
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 199
    .restart local v6       #_arg0:Landroid/view/IWindow;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v17

    .line 200
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v17, :cond_20b

    const/4 v5, 0x1

    :goto_202
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 201
    :cond_20b
    const/4 v5, 0x0

    goto :goto_202

    .line 206
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v17           #_result:Z
    :sswitch_20d
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 210
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23b

    .line 211
    sget-object v5, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Region;

    .line 216
    .local v7, _arg1:Landroid/graphics/Region;
    :goto_22e
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 214
    .end local v7           #_arg1:Landroid/graphics/Region;
    :cond_23b
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/graphics/Region;
    goto :goto_22e

    .line 222
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/graphics/Region;
    :sswitch_23d
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 226
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 228
    .local v7, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28f

    .line 229
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 235
    .local v8, _arg2:Landroid/graphics/Rect;
    :goto_262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_291

    .line 236
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 242
    .local v9, _arg3:Landroid/graphics/Rect;
    :goto_273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_293

    .line 243
    sget-object v5, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Region;

    .local v10, _arg4:Landroid/graphics/Region;
    :goto_284
    move-object/from16 v5, p0

    .line 248
    invoke-virtual/range {v5 .. v10}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 232
    .end local v8           #_arg2:Landroid/graphics/Rect;
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v10           #_arg4:Landroid/graphics/Region;
    :cond_28f
    const/4 v8, 0x0

    .restart local v8       #_arg2:Landroid/graphics/Rect;
    goto :goto_262

    .line 239
    :cond_291
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/graphics/Rect;
    goto :goto_273

    .line 246
    :cond_293
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/graphics/Region;
    goto :goto_284

    .line 254
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:Landroid/graphics/Rect;
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v10           #_arg4:Landroid/graphics/Region;
    :sswitch_295
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 258
    .restart local v6       #_arg0:Landroid/view/IWindow;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 259
    .local v7, _arg1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v7, :cond_2c8

    .line 262
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v5, 0x1

    move-object v0, v7

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 268
    :goto_2c5
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 266
    :cond_2c8
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c5

    .line 272
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/graphics/Rect;
    :sswitch_2d0
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 275
    .restart local v6       #_arg0:Landroid/view/IWindow;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 281
    .end local v6           #_arg0:Landroid/view/IWindow;
    :sswitch_2ec
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_308

    const/4 v5, 0x1

    move v6, v5

    .line 284
    .local v6, _arg0:Z
    :goto_2fc
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 283
    .end local v6           #_arg0:Z
    :cond_308
    const/4 v5, 0x0

    move v6, v5

    goto :goto_2fc

    .line 290
    :sswitch_30b
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v17

    .line 292
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v17, :cond_326

    const/4 v5, 0x1

    :goto_31d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 293
    :cond_326
    const/4 v5, 0x0

    goto :goto_31d

    .line 298
    .end local v17           #_result:Z
    :sswitch_328
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 302
    .local v6, _arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 304
    .local v7, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35c

    const/4 v5, 0x1

    move v8, v5

    .line 305
    .local v8, _arg2:Z
    :goto_344
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v17

    .line 306
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v17, :cond_35f

    const/4 v5, 0x1

    :goto_353
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 304
    .end local v8           #_arg2:Z
    .end local v17           #_result:Z
    :cond_35c
    const/4 v5, 0x0

    move v8, v5

    goto :goto_344

    .line 307
    .restart local v8       #_arg2:Z
    .restart local v17       #_result:Z
    :cond_35f
    const/4 v5, 0x0

    goto :goto_353

    .line 312
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:Z
    .end local v17           #_result:Z
    :sswitch_361
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 316
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 318
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 320
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 322
    .local v9, _arg3:I
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .local v10, _arg4:Landroid/view/Surface;
    move-object/from16 v5, p0

    .line 323
    invoke-virtual/range {v5 .. v10}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v17

    .line 324
    .local v17, _result:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 326
    if-eqz v10, :cond_3a6

    .line 327
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v5, 0x1

    move-object v0, v10

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    :goto_3a3
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 331
    :cond_3a6
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a3

    .line 337
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    .end local v9           #_arg3:I
    .end local v10           #_arg4:Landroid/view/Surface;
    .end local v17           #_result:Landroid/os/IBinder;
    :sswitch_3ae
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 341
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 343
    .local v7, _arg1:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 345
    .local v8, _arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 347
    .local v9, _arg3:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 349
    .local v10, _arg4:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 351
    .local v11, _arg5:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f8

    .line 352
    sget-object v5, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ClipData;

    .local v12, _arg6:Landroid/content/ClipData;
    :goto_3e3
    move-object/from16 v5, p0

    .line 357
    invoke-virtual/range {v5 .. v12}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v17

    .line 358
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v17, :cond_3fa

    const/4 v5, 0x1

    :goto_3ef
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 355
    .end local v12           #_arg6:Landroid/content/ClipData;
    .end local v17           #_result:Z
    :cond_3f8
    const/4 v12, 0x0

    .restart local v12       #_arg6:Landroid/content/ClipData;
    goto :goto_3e3

    .line 359
    .restart local v17       #_result:Z
    :cond_3fa
    const/4 v5, 0x0

    goto :goto_3ef

    .line 364
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/os/IBinder;
    .end local v8           #_arg2:F
    .end local v9           #_arg3:F
    .end local v10           #_arg4:F
    .end local v11           #_arg5:F
    .end local v12           #_arg6:Landroid/content/ClipData;
    .end local v17           #_result:Z
    :sswitch_3fc
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 368
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_421

    const/4 v5, 0x1

    move v7, v5

    .line 369
    .local v7, _arg1:Z
    :goto_414
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 368
    .end local v7           #_arg1:Z
    :cond_421
    const/4 v5, 0x0

    move v7, v5

    goto :goto_414

    .line 375
    .end local v6           #_arg0:Landroid/view/IWindow;
    :sswitch_424
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 378
    .restart local v6       #_arg0:Landroid/view/IWindow;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 384
    .end local v6           #_arg0:Landroid/view/IWindow;
    :sswitch_440
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 387
    .restart local v6       #_arg0:Landroid/view/IWindow;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 393
    .end local v6           #_arg0:Landroid/view/IWindow;
    :sswitch_45c
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 397
    .local v6, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 399
    .local v7, _arg1:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 401
    .restart local v8       #_arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 403
    .restart local v9       #_arg3:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .restart local v10       #_arg4:F
    move-object/from16 v5, p0

    .line 404
    invoke-virtual/range {v5 .. v10}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 410
    .end local v6           #_arg0:Landroid/os/IBinder;
    .end local v7           #_arg1:F
    .end local v8           #_arg2:F
    .end local v9           #_arg3:F
    .end local v10           #_arg4:F
    :sswitch_483
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 413
    .restart local v6       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 419
    .end local v6           #_arg0:Landroid/os/IBinder;
    :sswitch_49b
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 423
    .restart local v6       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 427
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 429
    .local v9, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 431
    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4ee

    .line 432
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 438
    .local v11, _arg5:Landroid/os/Bundle;
    :goto_4c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4f0

    const/4 v5, 0x1

    move v12, v5

    .local v12, _arg6:Z
    :goto_4d0
    move-object/from16 v5, p0

    .line 439
    invoke-virtual/range {v5 .. v12}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v17

    .line 440
    .local v17, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v17, :cond_4f3

    .line 442
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 448
    :goto_4eb
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 435
    .end local v11           #_arg5:Landroid/os/Bundle;
    .end local v12           #_arg6:Z
    .end local v17           #_result:Landroid/os/Bundle;
    :cond_4ee
    const/4 v11, 0x0

    .restart local v11       #_arg5:Landroid/os/Bundle;
    goto :goto_4c8

    .line 438
    :cond_4f0
    const/4 v5, 0x0

    move v12, v5

    goto :goto_4d0

    .line 446
    .restart local v12       #_arg6:Z
    .restart local v17       #_result:Landroid/os/Bundle;
    :cond_4f3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4eb

    .line 452
    .end local v6           #_arg0:Landroid/os/IBinder;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:I
    .end local v10           #_arg4:I
    .end local v11           #_arg5:Landroid/os/Bundle;
    .end local v12           #_arg6:Z
    .end local v17           #_result:Landroid/os/Bundle;
    :sswitch_4fb
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 456
    .restart local v6       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_525

    .line 457
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 462
    .local v7, _arg1:Landroid/os/Bundle;
    :goto_518
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 460
    .end local v7           #_arg1:Landroid/os/Bundle;
    :cond_525
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/os/Bundle;
    goto :goto_518

    .line 43
    nop

    :sswitch_data_528
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_87
        0x3 -> :sswitch_e3
        0x4 -> :sswitch_ff
        0x5 -> :sswitch_1e5
        0x6 -> :sswitch_20d
        0x7 -> :sswitch_23d
        0x8 -> :sswitch_295
        0x9 -> :sswitch_2d0
        0xa -> :sswitch_2ec
        0xb -> :sswitch_30b
        0xc -> :sswitch_328
        0xd -> :sswitch_361
        0xe -> :sswitch_3ae
        0xf -> :sswitch_3fc
        0x10 -> :sswitch_424
        0x11 -> :sswitch_440
        0x12 -> :sswitch_45c
        0x13 -> :sswitch_483
        0x14 -> :sswitch_49b
        0x15 -> :sswitch_4fb
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

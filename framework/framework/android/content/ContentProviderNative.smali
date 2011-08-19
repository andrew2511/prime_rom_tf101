.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .registers 3
    .parameter "obj"

    .prologue
    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v1, 0x0

    .line 65
    :goto_3
    return-object v1

    .line 59
    :cond_4
    const-string v1, "android.content.IContentProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 61
    .local v0, in:Landroid/content/IContentProvider;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 62
    goto :goto_3

    .line 65
    :cond_10
    new-instance v1, Landroid/content/ContentProviderProxy;

    invoke-direct {v1, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 310
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 42
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
    .line 72
    packed-switch p1, :pswitch_data_338

    .line 305
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 75
    :pswitch_8
    :try_start_8
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 80
    .local v6, url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 81
    .local v25, num:I
    const/4 v7, 0x0

    .line 82
    .local v7, projection:[Ljava/lang/String;
    if-lez v25, :cond_38

    .line 83
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    .line 84
    const/16 v19, 0x0

    .local v19, i:I
    :goto_29
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_38

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v19

    .line 84
    add-int/lit8 v19, v19, 0x1

    goto :goto_29

    .line 90
    .end local v19           #i:I
    :cond_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 92
    const/4 v9, 0x0

    .line 93
    .local v9, selectionArgs:[Ljava/lang/String;
    if-lez v25, :cond_59

    .line 94
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    .line 95
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_4a
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_59

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v19

    .line 95
    add-int/lit8 v19, v19, 0x1

    goto :goto_4a

    .line 100
    .end local v19           #i:I
    :cond_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, sortOrder:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v11

    .line 103
    .local v11, observer:Landroid/database/IContentObserver;
    sget-object v5, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/CursorWindow;

    .line 109
    .local v12, window:Landroid/database/CursorWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ad

    const/4 v5, 0x1

    move/from16 v36, v5

    .local v36, wantsCursorMetadata:Z
    :goto_79
    move-object/from16 v5, p0

    .line 111
    invoke-virtual/range {v5 .. v12}, Landroid/content/ContentProviderNative;->bulkQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;)Landroid/database/IBulkCursor;

    move-result-object v15

    .line 113
    .local v15, bulkCursor:Landroid/database/IBulkCursor;
    if-eqz v15, :cond_c8

    .line 114
    invoke-interface {v15}, Landroid/database/IBulkCursor;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 115
    .local v14, binder:Landroid/os/IBinder;
    if-eqz v36, :cond_b1

    .line 116
    invoke-interface {v15}, Landroid/database/IBulkCursor;->count()I

    move-result v16

    .line 117
    .local v16, count:I
    invoke-interface {v15}, Landroid/database/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/database/BulkCursorToCursorAdaptor;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v20

    .line 120
    .local v20, index:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 122
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    .end local v14           #binder:Landroid/os/IBinder;
    .end local v16           #count:I
    .end local v20           #index:I
    :goto_aa
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 109
    .end local v15           #bulkCursor:Landroid/database/IBulkCursor;
    .end local v36           #wantsCursorMetadata:Z
    :cond_ad
    const/4 v5, 0x0

    move/from16 v36, v5

    goto :goto_79

    .line 125
    .restart local v14       #binder:Landroid/os/IBinder;
    .restart local v15       #bulkCursor:Landroid/database/IBulkCursor;
    .restart local v36       #wantsCursorMetadata:Z
    :cond_b1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_ba} :catch_bb

    goto :goto_aa

    .line 300
    .end local v6           #url:Landroid/net/Uri;
    .end local v7           #projection:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v10           #sortOrder:Ljava/lang/String;
    .end local v11           #observer:Landroid/database/IContentObserver;
    .end local v12           #window:Landroid/database/CursorWindow;
    .end local v14           #binder:Landroid/os/IBinder;
    .end local v15           #bulkCursor:Landroid/database/IBulkCursor;
    .end local v25           #num:I
    .end local v36           #wantsCursorMetadata:Z
    :catch_bb
    move-exception v5

    move-object/from16 v17, v5

    .line 301
    .local v17, e:Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 302
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 129
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v6       #url:Landroid/net/Uri;
    .restart local v7       #projection:[Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #sortOrder:Ljava/lang/String;
    .restart local v11       #observer:Landroid/database/IContentObserver;
    .restart local v12       #window:Landroid/database/CursorWindow;
    .restart local v15       #bulkCursor:Landroid/database/IBulkCursor;
    .restart local v25       #num:I
    .restart local v36       #wantsCursorMetadata:Z
    :cond_c8
    :try_start_c8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_aa

    .line 138
    .end local v6           #url:Landroid/net/Uri;
    .end local v7           #projection:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v10           #sortOrder:Ljava/lang/String;
    .end local v11           #observer:Landroid/database/IContentObserver;
    .end local v12           #window:Landroid/database/CursorWindow;
    .end local v15           #bulkCursor:Landroid/database/IBulkCursor;
    .end local v25           #num:I
    .end local v36           #wantsCursorMetadata:Z
    :pswitch_d3
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 140
    .restart local v6       #url:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v33

    .line 141
    .local v33, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 149
    .end local v6           #url:Landroid/net/Uri;
    .end local v33           #type:Ljava/lang/String;
    :pswitch_fa
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 151
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/ContentValues;

    .line 153
    .local v35, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v29

    .line 154
    .local v29, out:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 156
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 161
    .end local v6           #url:Landroid/net/Uri;
    .end local v29           #out:Landroid/net/Uri;
    .end local v35           #values:Landroid/content/ContentValues;
    :pswitch_12e
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 163
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [Landroid/content/ContentValues;

    .line 165
    .local v35, values:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v16

    .line 166
    .restart local v16       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 173
    .end local v6           #url:Landroid/net/Uri;
    .end local v16           #count:I
    .end local v35           #values:[Landroid/content/ContentValues;
    :pswitch_162
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 175
    .local v26, numOperations:I
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v27, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_179
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_193

    .line 178
    sget-object v5, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v27

    move/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 177
    add-int/lit8 v19, v19, 0x1

    goto :goto_179

    .line 180
    :cond_193
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v31

    .line 181
    .local v31, results:[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 183
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 188
    .end local v19           #i:I
    .end local v26           #numOperations:I
    .end local v27           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v31           #results:[Landroid/content/ContentProviderResult;
    :pswitch_1aa
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 190
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 191
    .restart local v8       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 193
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 195
    .restart local v16       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 202
    .end local v6           #url:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v16           #count:I
    :pswitch_1db
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 204
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/ContentValues;

    .line 205
    .local v35, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 206
    .restart local v8       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 208
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v35

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 210
    .restart local v16       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 217
    .end local v6           #url:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v16           #count:I
    .end local v35           #values:Landroid/content/ContentValues;
    :pswitch_219
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 219
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 222
    .local v24, mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 223
    .local v18, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v18, :cond_251

    .line 225
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    :goto_24e
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 229
    :cond_251
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24e

    .line 236
    .end local v6           #url:Landroid/net/Uri;
    .end local v18           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v24           #mode:Ljava/lang/String;
    :pswitch_259
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 238
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 241
    .restart local v24       #mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v18

    .line 242
    .local v18, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v18, :cond_291

    .line 244
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    :goto_28e
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 248
    :cond_291
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28e

    .line 255
    .end local v6           #url:Landroid/net/Uri;
    .end local v18           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v24           #mode:Ljava/lang/String;
    :pswitch_299
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 258
    .local v21, method:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 259
    .local v32, stringArg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 261
    .local v13, args:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v30

    .line 263
    .local v30, responseBundle:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 265
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 270
    .end local v13           #args:Landroid/os/Bundle;
    .end local v21           #method:Ljava/lang/String;
    .end local v30           #responseBundle:Landroid/os/Bundle;
    .end local v32           #stringArg:Ljava/lang/String;
    :pswitch_2c5
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 272
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 273
    .local v23, mimeTypeFilter:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 274
    .local v34, types:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 277
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 282
    .end local v6           #url:Landroid/net/Uri;
    .end local v23           #mimeTypeFilter:Ljava/lang/String;
    .end local v34           #types:[Ljava/lang/String;
    :pswitch_2f2
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 284
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 285
    .local v22, mimeType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v28

    .line 288
    .local v28, opts:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v18

    .line 289
    .restart local v18       #fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v18, :cond_330

    .line 291
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 297
    :goto_32d
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 295
    :cond_330
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_337
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_337} :catch_bb

    goto :goto_32d

    .line 72
    :pswitch_data_338
    .packed-switch 0x1
        :pswitch_8
        :pswitch_d3
        :pswitch_fa
        :pswitch_1aa
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1db
        :pswitch_3
        :pswitch_3
        :pswitch_12e
        :pswitch_219
        :pswitch_259
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_162
        :pswitch_299
        :pswitch_2c5
        :pswitch_2f2
    .end packed-switch
.end method

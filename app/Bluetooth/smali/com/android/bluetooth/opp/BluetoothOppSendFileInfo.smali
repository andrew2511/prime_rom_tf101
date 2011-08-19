.class public Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppSendFileInfo.java"


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mDestAddr:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public final mInputStream:Ljava/io/FileInputStream;

.field public final mLength:J

.field public final mMimetype:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .parameter "type"
    .parameter "length"
    .parameter "inputStream"
    .parameter "status"
    .parameter "dest"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 80
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 81
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 82
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 83
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mDestAddr:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 13
    .parameter "context"
    .parameter "uri"
    .parameter "type"
    .parameter "dest"

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, scheme:Ljava/lang/String;
    const/4 p1, 0x0

    .line 105
    .local p1, fileName:Ljava/lang/String;
    const/4 p0, 0x0

    .line 106
    .local p0, contentType:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 110
    .local v10, length:J
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 112
    const/4 p2, 0x2

    new-array v2, p2, [Ljava/lang/String;

    .end local v2           #scheme:Ljava/lang/String;
    .end local p2
    const/4 p2, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, p2

    const/4 p2, 0x1

    const-string v3, "_size"

    aput-object v3, v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 115
    .local p2, metadataCursor:Landroid/database/Cursor;
    if-eqz p2, :cond_4

    .line 117
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 119
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v5, v2

    .line 123
    .end local v10           #length:J
    .local v5, length:J
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :goto_1
    move-wide v10, v5

    .end local v5           #length:J
    .restart local v10       #length:J
    move-object p2, p1

    .line 138
    .end local p1           #fileName:Ljava/lang/String;
    .local p2, fileName:Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    check-cast v7, Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .local v7, is:Ljava/io/FileInputStream;
    const-wide/16 v0, 0x0

    cmp-long p1, v10, v0

    if-nez p1, :cond_2

    .line 148
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result p1

    int-to-long v5, p1

    .line 157
    .end local v10           #length:J
    .restart local v5       #length:J
    :goto_3
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p0

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    move-object p1, p2

    .end local p2           #fileName:Ljava/lang/String;
    .restart local p1       #fileName:Ljava/lang/String;
    move-object p2, v2

    .end local v1           #u:Landroid/net/Uri;
    .end local v7           #is:Ljava/io/FileInputStream;
    :goto_4
    return-object p2

    .line 123
    .end local v5           #length:J
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    .restart local v1       #u:Landroid/net/Uri;
    .restart local v10       #length:J
    .local p2, metadataCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object v12, p0

    move-object p0, p1

    .end local p1           #fileName:Ljava/lang/String;
    .local p0, fileName:Ljava/lang/String;
    move-object p1, v12

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1

    .line 126
    .restart local v2       #scheme:Ljava/lang/String;
    .local p0, contentType:Ljava/lang/String;
    .restart local p1       #fileName:Ljava/lang/String;
    .local p2, type:Ljava/lang/String;
    :cond_0
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .end local v2           #scheme:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 128
    .end local p1           #fileName:Ljava/lang/String;
    .local v2, fileName:Ljava/lang/String;
    move-object p0, p2

    .line 129
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .end local p2           #type:Ljava/lang/String;
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local p1, f:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    .end local v10           #length:J
    .restart local v5       #length:J
    move-wide v10, v5

    .end local v5           #length:J
    .restart local v10       #length:J
    move-object p2, v2

    .line 131
    .end local v2           #fileName:Ljava/lang/String;
    .local p2, fileName:Ljava/lang/String;
    goto :goto_2

    .line 133
    .local p1, fileName:Ljava/lang/String;
    .local p2, type:Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1ec

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    move-wide v5, v10

    .end local v10           #length:J
    .restart local v5       #length:J
    move-object p2, v2

    goto :goto_4

    .line 139
    .end local v5           #length:J
    .end local p1           #fileName:Ljava/lang/String;
    .restart local v10       #length:J
    .local p2, fileName:Ljava/lang/String;
    :catch_0
    move-exception p1

    .line 140
    .local p1, e:Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1ec

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    move-wide v5, v10

    .end local v10           #length:J
    .restart local v5       #length:J
    move-object p1, p2

    .end local p2           #fileName:Ljava/lang/String;
    .local p1, fileName:Ljava/lang/String;
    move-object p2, v2

    goto :goto_4

    .line 150
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v5           #length:J
    .end local p1           #fileName:Ljava/lang/String;
    .restart local v7       #is:Ljava/io/FileInputStream;
    .restart local v10       #length:J
    .restart local p2       #fileName:Ljava/lang/String;
    :catch_1
    move-exception p1

    .line 151
    .local p1, e:Ljava/io/IOException;
    const-string v0, "BluetoothOppSendFileInfo"

    const-string v1, "Read stream exception: "

    .end local v1           #u:Landroid/net/Uri;
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1ec

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    .end local v7           #is:Ljava/io/FileInputStream;
    move-wide v5, v10

    .end local v10           #length:J
    .restart local v5       #length:J
    move-object p1, p2

    .end local p2           #fileName:Ljava/lang/String;
    .local p1, fileName:Ljava/lang/String;
    move-object p2, v2

    goto :goto_4

    .end local v5           #length:J
    .end local p1           #fileName:Ljava/lang/String;
    .restart local v1       #u:Landroid/net/Uri;
    .restart local v7       #is:Ljava/io/FileInputStream;
    .restart local v10       #length:J
    .restart local p2       #fileName:Ljava/lang/String;
    :cond_2
    move-wide v5, v10

    .end local v10           #length:J
    .restart local v5       #length:J
    goto :goto_3

    .end local v5           #length:J
    .end local v7           #is:Ljava/io/FileInputStream;
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    .restart local v10       #length:J
    .restart local p1       #fileName:Ljava/lang/String;
    .local p2, metadataCursor:Landroid/database/Cursor;
    :cond_3
    move-wide v5, v10

    .end local v10           #length:J
    .restart local v5       #length:J
    goto/16 :goto_0

    .end local v5           #length:J
    .restart local v10       #length:J
    :cond_4
    move-wide v5, v10

    .end local v10           #length:J
    .restart local v5       #length:J
    goto/16 :goto_1
.end method

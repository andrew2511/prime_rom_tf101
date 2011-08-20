.class Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;
.super Landroid/os/Handler;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileReadWriteHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .parameter "looper"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method

.method private static readApConfiguration()V
    .registers 9

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, in:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 138
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-static {}, Landroid/net/wifi/WifiApConfigStore;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_69
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_79

    .line 141
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_19
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 142
    .local v5, version:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_31

    .line 143
    const-string v6, "WifiApConfigStore"

    const-string v7, "Bad version on hotspot configuration file, set defaults"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;->setDefaultApConfiguration()V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_76
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2a} :catch_5b

    .line 159
    if-eqz v4, :cond_2f

    .line 161
    :try_start_2c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_72

    :cond_2f
    :goto_2f
    move-object v3, v4

    .line 165
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #version:I
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_30
    :goto_30
    return-void

    .line 147
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :cond_31
    :try_start_31
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 148
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 149
    .local v0, authType:I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 150
    if-eqz v0, :cond_48

    .line 151
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 153
    :cond_48
    invoke-static {}, Landroid/net/wifi/WifiApConfigStore;->access$100()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_76
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4d} :catch_5b

    .line 154
    :try_start_4d
    invoke-static {v1}, Landroid/net/wifi/WifiApConfigStore;->access$202(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 155
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_58

    .line 159
    if-eqz v4, :cond_56

    .line 161
    :try_start_53
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_74

    :cond_56
    :goto_56
    move-object v3, v4

    .line 164
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_30

    .line 155
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catchall_58
    move-exception v7

    :try_start_59
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v7
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_76
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 156
    .end local v0           #authType:I
    .end local v5           #version:I
    :catch_5b
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .line 157
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .local v2, ignore:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :goto_5e
    :try_start_5e
    invoke-static {}, Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;->setDefaultApConfiguration()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_69

    .line 159
    if-eqz v3, :cond_30

    .line 161
    :try_start_63
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_30

    .line 162
    :catch_67
    move-exception v6

    goto :goto_30

    .line 159
    .end local v2           #ignore:Ljava/io/IOException;
    :catchall_69
    move-exception v6

    :goto_6a
    if-eqz v3, :cond_6f

    .line 161
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    .line 159
    :cond_6f
    :goto_6f
    throw v6

    .line 162
    :catch_70
    move-exception v7

    goto :goto_6f

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :catch_72
    move-exception v6

    goto :goto_2f

    .restart local v0       #authType:I
    :catch_74
    move-exception v6

    goto :goto_56

    .line 159
    .end local v0           #authType:I
    .end local v5           #version:I
    :catchall_76
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_6a

    .line 156
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :catch_79
    move-exception v6

    move-object v2, v6

    goto :goto_5e
.end method

.method private static setDefaultApConfiguration()V
    .registers 5

    .prologue
    .line 172
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 173
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Landroid/net/wifi/WifiApConfigStore;->access$300()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104036d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 174
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 175
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, randomUUID:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 178
    invoke-static {v0}, Landroid/net/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 179
    return-void
.end method

.method private static writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 8
    .parameter "config"

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-static {}, Landroid/net/wifi/WifiApConfigStore;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_54
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_32

    .line 116
    .end local v2           #out:Ljava/io/DataOutputStream;
    .local v3, out:Ljava/io/DataOutputStream;
    const/4 v4, 0x1

    :try_start_15
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 117
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 119
    .local v0, authType:I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 120
    if-eqz v0, :cond_2b

    .line 121
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2b} :catch_62

    .line 126
    :cond_2b
    if-eqz v3, :cond_30

    .line 128
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_5d

    :cond_30
    :goto_30
    move-object v2, v3

    .line 132
    .end local v0           #authType:I
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_31
    :goto_31
    return-void

    .line 123
    :catch_32
    move-exception v4

    move-object v1, v4

    .line 124
    .local v1, e:Ljava/io/IOException;
    :goto_34
    :try_start_34
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_54

    .line 126
    if-eqz v2, :cond_31

    .line 128
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_31

    .line 129
    :catch_52
    move-exception v4

    goto :goto_31

    .line 126
    .end local v1           #e:Ljava/io/IOException;
    :catchall_54
    move-exception v4

    :goto_55
    if-eqz v2, :cond_5a

    .line 128
    :try_start_57
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 126
    :cond_5a
    :goto_5a
    throw v4

    .line 129
    :catch_5b
    move-exception v5

    goto :goto_5a

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v0       #authType:I
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_5d
    move-exception v4

    goto :goto_30

    .line 126
    .end local v0           #authType:I
    :catchall_5f
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_55

    .line 123
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_62
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_34
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 105
    const-string v0, "WifiApConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command in FileReadWriteHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local p0
    :goto_1d
    return-void

    .line 99
    .restart local p0
    :pswitch_1e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0}, Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1d

    .line 102
    .restart local p0
    :pswitch_26
    invoke-static {}, Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;->readApConfiguration()V

    goto :goto_1d

    .line 97
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

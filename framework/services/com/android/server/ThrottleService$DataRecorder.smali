.class Lcom/android/server/ThrottleService$DataRecorder;
.super Ljava/lang/Object;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataRecorder"
.end annotation


# static fields
.field private static final DATA_FILE_VERSION:I = 0x1

.field private static final MAX_SIMS_SUPPORTED:I = 0x3


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentPeriod:I

.field mImsi:Ljava/lang/String;

.field mParent:Lcom/android/server/ThrottleService;

.field mPeriodCount:I

.field mPeriodEnd:Ljava/util/Calendar;

.field mPeriodRxData:[J

.field mPeriodStart:Ljava/util/Calendar;

.field mPeriodTxData:[J

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/ThrottleService;)V
    .registers 5
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    .line 788
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    .line 789
    iput-object p2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    .line 791
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 794
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 795
    const/4 v1, 0x6

    :try_start_1a
    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    .line 796
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    .line 797
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    .line 799
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 800
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 802
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    .line 803
    monitor-exit v0

    .line 804
    return-void

    .line 803
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private checkAndDeleteLRUDataFile(Ljava/io/File;)V
    .registers 13
    .parameter "dir"

    .prologue
    const/4 v10, 0x3

    .line 930
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 932
    .local v2, files:[Ljava/io/File;
    array-length v6, v2

    if-gt v6, v10, :cond_9

    .line 946
    :cond_8
    :goto_8
    return-void

    .line 933
    :cond_9
    const-string v6, "ThrottleService"

    const-string v7, "Too many data files"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_10
    const/4 v5, 0x0

    .line 936
    .local v5, oldest:Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_2a

    aget-object v1, v0, v3

    .line 937
    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_26

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_27

    .line 938
    :cond_26
    move-object v5, v1

    .line 936
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 941
    .end local v1           #f:Ljava/io/File;
    :cond_2a
    if-eqz v5, :cond_8

    .line 942
    const-string v6, "ThrottleService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 944
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 945
    array-length v6, v2

    if-gt v6, v10, :cond_10

    goto :goto_8
.end method

.method private checkForSubscriberId()V
    .registers 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 925
    :cond_4
    :goto_4
    return-void

    .line 920
    :cond_5
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 924
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    goto :goto_4
.end method

.method private getDataFile()Ljava/io/File;
    .registers 8

    .prologue
    .line 898
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 899
    .local v0, dataDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system/throttle"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 900
    .local v4, throttleDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 901
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 903
    .local v3, mImsi:Ljava/lang/String;
    if-nez v3, :cond_25

    .line 904
    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->useMRUFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 911
    .local v1, dataFile:Ljava/io/File;
    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 912
    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->checkAndDeleteLRUDataFile(Ljava/io/File;)V

    .line 913
    return-object v1

    .line 907
    .end local v1           #dataFile:Ljava/io/File;
    :cond_25
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, imsiHash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #dataFile:Ljava/io/File;
    goto :goto_1a
.end method

.method private record()V
    .registers 8

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 979
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_2c

    .line 981
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 982
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 984
    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_40

    .line 985
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 986
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 988
    :cond_40
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 989
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 991
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 994
    const/4 v3, 0x0

    .line 996
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_62
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_91
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_72} :catch_80

    .line 997
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_9f

    .line 1002
    if-eqz v4, :cond_7e

    .line 1004
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_9a

    :cond_7e
    :goto_7e
    move-object v3, v4

    .line 1008
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_7f
    :goto_7f
    return-void

    .line 998
    :catch_80
    move-exception v5

    move-object v1, v5

    .line 999
    .local v1, e:Ljava/io/IOException;
    :goto_82
    :try_start_82
    const-string v5, "ThrottleService"

    const-string v6, "Error writing data file"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_91

    .line 1002
    if-eqz v3, :cond_7f

    .line 1004
    :try_start_8b
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_7f

    .line 1005
    :catch_8f
    move-exception v5

    goto :goto_7f

    .line 1002
    .end local v1           #e:Ljava/io/IOException;
    :catchall_91
    move-exception v5

    :goto_92
    if-eqz v3, :cond_97

    .line 1004
    :try_start_94
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    .line 1002
    :cond_97
    :goto_97
    throw v5

    .line 1005
    :catch_98
    move-exception v6

    goto :goto_97

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_9a
    move-exception v5

    goto :goto_7e

    .line 1002
    :catchall_9c
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_92

    .line 998
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_9f
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_82
.end method

.method private retrieve()V
    .registers 23

    .prologue
    .line 1012
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService$DataRecorder;->zeroData(I)V

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v7

    .line 1016
    .local v7, f:Ljava/io/File;
    const/16 v17, 0x0

    .line 1018
    .local v17, s:Ljava/io/FileInputStream;
    :try_start_f
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v3, v0

    .line 1019
    .local v3, buffer:[B
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_59
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_25} :catch_47

    .line 1020
    .end local v17           #s:Ljava/io/FileInputStream;
    .local v18, s:Ljava/io/FileInputStream;
    :try_start_25
    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_183
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_188

    .line 1025
    if-eqz v18, :cond_30

    .line 1027
    :try_start_2d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_17c

    .line 1031
    :cond_30
    :goto_30
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 1032
    .local v5, data:Ljava/lang/String;
    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_60

    .line 1033
    :cond_3d
    const-string v19, "ThrottleService"

    const-string v20, "data file empty"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v18

    .line 1088
    .end local v3           #buffer:[B
    .end local v5           #data:Ljava/lang/String;
    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_46
    :goto_46
    return-void

    .line 1021
    :catch_47
    move-exception v19

    move-object/from16 v6, v19

    .line 1022
    .local v6, e:Ljava/io/IOException;
    :goto_4a
    :try_start_4a
    const-string v19, "ThrottleService"

    const-string v20, "Error reading data file"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_59

    .line 1025
    if-eqz v17, :cond_46

    .line 1027
    :try_start_53
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_46

    .line 1028
    :catch_57
    move-exception v19

    goto :goto_46

    .line 1025
    .end local v6           #e:Ljava/io/IOException;
    :catchall_59
    move-exception v19

    :goto_5a
    if-eqz v17, :cond_5f

    .line 1027
    :try_start_5c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_179

    .line 1025
    :cond_5f
    :goto_5f
    throw v19

    .line 1036
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v5       #data:Ljava/lang/String;
    .restart local v18       #s:Ljava/io/FileInputStream;
    :cond_60
    const-string v19, ":"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1037
    .local v9, parsed:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1038
    .local v10, parsedUsed:I
    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_80

    .line 1039
    const-string v19, "ThrottleService"

    const-string v20, "reading data file with insufficient length - ignoring"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v18

    .line 1040
    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    goto :goto_46

    .line 1050
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v18       #s:Ljava/io/FileInputStream;
    :cond_80
    add-int/lit8 v11, v10, 0x1

    .end local v10           #parsedUsed:I
    .local v11, parsedUsed:I
    :try_start_82
    aget-object v19, v9, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9a

    .line 1051
    const-string v19, "ThrottleService"

    const-string v20, "reading data file with bad version - ignoring"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_97} :catch_167

    move-object/from16 v17, v18

    .line 1052
    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    goto :goto_46

    .line 1055
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v18       #s:Ljava/io/FileInputStream;
    :cond_9a
    add-int/lit8 v10, v11, 0x1

    .end local v11           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    :try_start_9c
    aget-object v19, v9, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1056
    .local v12, periodCount:I
    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v20, v12, 0x2

    add-int/lit8 v20, v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e4

    .line 1057
    const-string v19, "ThrottleService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "reading data file with bad length ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v9

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " != "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    mul-int/lit8 v21, v12, 0x2

    add-int/lit8 v21, v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") - ignoring"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v18

    .line 1059
    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    goto/16 :goto_46

    .line 1061
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v18       #s:Ljava/io/FileInputStream;
    :cond_e4
    new-array v14, v12, [J

    .line 1062
    .local v14, periodRxData:[J
    const/4 v8, 0x0

    .local v8, i:I
    move v11, v10

    .end local v10           #parsedUsed:I
    .restart local v11       #parsedUsed:I
    :goto_e8
    if-ge v8, v12, :cond_f8

    .line 1063
    add-int/lit8 v10, v11, 0x1

    .end local v11           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    aget-object v19, v9, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    aput-wide v19, v14, v8
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_f4} :catch_17f

    .line 1062
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10           #parsedUsed:I
    .restart local v11       #parsedUsed:I
    goto :goto_e8

    .line 1065
    :cond_f8
    :try_start_f8
    move v0, v12

    new-array v0, v0, [J

    move-object/from16 v16, v0
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fd} :catch_167

    .line 1066
    .local v16, periodTxData:[J
    const/4 v8, 0x0

    :goto_fe
    if-ge v8, v12, :cond_10e

    .line 1067
    add-int/lit8 v10, v11, 0x1

    .end local v11           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    :try_start_102
    aget-object v19, v9, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    aput-wide v19, v16, v8

    .line 1066
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10           #parsedUsed:I
    .restart local v11       #parsedUsed:I
    goto :goto_fe

    .line 1070
    :cond_10e
    add-int/lit8 v10, v11, 0x1

    .end local v11           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    aget-object v19, v9, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1072
    .local v4, currentPeriod:I
    new-instance v15, Ljava/util/GregorianCalendar;

    invoke-direct {v15}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_11b} :catch_17f

    .line 1073
    .local v15, periodStart:Ljava/util/Calendar;
    add-int/lit8 v11, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v11       #parsedUsed:I
    :try_start_11d
    aget-object v19, v9, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-object v0, v15

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1074
    new-instance v13, Ljava/util/GregorianCalendar;

    invoke-direct {v13}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_12e} :catch_167

    .line 1075
    .local v13, periodEnd:Ljava/util/Calendar;
    add-int/lit8 v10, v11, 0x1

    .end local v11           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    :try_start_130
    aget-object v19, v9, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-object v0, v13

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_13c} :catch_17f

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1081
    :try_start_143
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    .line 1082
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    .line 1083
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    .line 1084
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 1085
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 1086
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 1087
    monitor-exit v19
    :try_end_163
    .catchall {:try_start_143 .. :try_end_163} :catchall_176

    move-object/from16 v17, v18

    .line 1088
    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    goto/16 :goto_46

    .line 1076
    .end local v4           #currentPeriod:I
    .end local v8           #i:I
    .end local v10           #parsedUsed:I
    .end local v12           #periodCount:I
    .end local v13           #periodEnd:Ljava/util/Calendar;
    .end local v14           #periodRxData:[J
    .end local v15           #periodStart:Ljava/util/Calendar;
    .end local v16           #periodTxData:[J
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v11       #parsedUsed:I
    .restart local v18       #s:Ljava/io/FileInputStream;
    :catch_167
    move-exception v19

    move-object/from16 v6, v19

    move v10, v11

    .line 1077
    .end local v11           #parsedUsed:I
    .local v6, e:Ljava/lang/Exception;
    .restart local v10       #parsedUsed:I
    :goto_16b
    const-string v19, "ThrottleService"

    const-string v20, "Error parsing data file - ignoring"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v18

    .line 1078
    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    goto/16 :goto_46

    .line 1087
    .end local v6           #e:Ljava/lang/Exception;
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v4       #currentPeriod:I
    .restart local v8       #i:I
    .restart local v12       #periodCount:I
    .restart local v13       #periodEnd:Ljava/util/Calendar;
    .restart local v14       #periodRxData:[J
    .restart local v15       #periodStart:Ljava/util/Calendar;
    .restart local v16       #periodTxData:[J
    .restart local v18       #s:Ljava/io/FileInputStream;
    :catchall_176
    move-exception v20

    :try_start_177
    monitor-exit v19
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    throw v20

    .line 1028
    .end local v3           #buffer:[B
    .end local v4           #currentPeriod:I
    .end local v5           #data:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #parsed:[Ljava/lang/String;
    .end local v10           #parsedUsed:I
    .end local v12           #periodCount:I
    .end local v13           #periodEnd:Ljava/util/Calendar;
    .end local v14           #periodRxData:[J
    .end local v15           #periodStart:Ljava/util/Calendar;
    .end local v16           #periodTxData:[J
    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catch_179
    move-exception v20

    goto/16 :goto_5f

    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v18       #s:Ljava/io/FileInputStream;
    :catch_17c
    move-exception v19

    goto/16 :goto_30

    .line 1076
    .restart local v5       #data:Ljava/lang/String;
    .restart local v9       #parsed:[Ljava/lang/String;
    .restart local v10       #parsedUsed:I
    :catch_17f
    move-exception v19

    move-object/from16 v6, v19

    goto :goto_16b

    .line 1025
    .end local v5           #data:Ljava/lang/String;
    .end local v9           #parsed:[Ljava/lang/String;
    .end local v10           #parsedUsed:I
    :catchall_183
    move-exception v19

    move-object/from16 v17, v18

    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    goto/16 :goto_5a

    .line 1021
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v18       #s:Ljava/io/FileInputStream;
    :catch_188
    move-exception v19

    move-object/from16 v6, v19

    move-object/from16 v17, v18

    .end local v18           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    goto/16 :goto_4a
.end method

.method private setPeriodEnd(Ljava/util/Calendar;)V
    .registers 4
    .parameter "end"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 852
    :try_start_3
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 853
    monitor-exit v0

    .line 854
    return-void

    .line 853
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setPeriodStart(Ljava/util/Calendar;)V
    .registers 4
    .parameter "start"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 864
    :try_start_3
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 865
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private useMRUFile(Ljava/io/File;)Ljava/io/File;
    .registers 12
    .parameter "dir"

    .prologue
    .line 949
    const/4 v5, 0x0

    .line 950
    .local v5, newest:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 952
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_1e

    aget-object v1, v0, v3

    .line 953
    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1b

    .line 954
    :cond_1a
    move-object v5, v1

    .line 952
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 957
    .end local v1           #f:Ljava/io/File;
    :cond_1e
    if-nez v5, :cond_27

    .line 958
    new-instance v5, Ljava/io/File;

    .end local v5           #newest:Ljava/io/File;
    const-string v6, "temp"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 960
    .restart local v5       #newest:Ljava/io/File;
    :cond_27
    return-object v5
.end method

.method private zeroData(I)V
    .registers 7
    .parameter "field"

    .prologue
    .line 875
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 876
    const/4 v0, 0x0

    .local v0, period:I
    :goto_4
    :try_start_4
    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v0, v2, :cond_17

    .line 877
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 878
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 880
    :cond_17
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 881
    monitor-exit v1

    .line 883
    return-void

    .line 881
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v2
.end method


# virtual methods
.method addData(JJ)V
    .registers 10
    .parameter "bytesRead"
    .parameter "bytesWritten"

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    .line 890
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 891
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v1, v2

    add-long/2addr v3, p1

    aput-wide v3, v1, v2

    .line 892
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v1, v2

    add-long/2addr v3, p3

    aput-wide v3, v1, v2

    .line 893
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    .line 894
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    .line 895
    return-void

    .line 893
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getPeriodCount()I
    .registers 3

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 870
    :try_start_3
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    monitor-exit v0

    return v1

    .line 871
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getPeriodEnd()J
    .registers 4

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 846
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 847
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getPeriodRx(I)J
    .registers 5
    .parameter "which"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 1092
    :try_start_3
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v1, :cond_c

    const-wide/16 v1, 0x0

    monitor-exit v0

    move-wide v0, v1

    .line 1095
    :goto_b
    return-wide v0

    .line 1093
    :cond_c
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v1, p1

    .line 1094
    if-gez p1, :cond_15

    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v1

    .line 1095
    :cond_15
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v1, v1, p1

    monitor-exit v0

    move-wide v0, v1

    goto :goto_b

    .line 1096
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getPeriodStart()J
    .registers 4

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 858
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 859
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getPeriodTx(I)J
    .registers 5
    .parameter "which"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 1100
    :try_start_3
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v1, :cond_c

    const-wide/16 v1, 0x0

    monitor-exit v0

    move-wide v0, v1

    .line 1103
    :goto_b
    return-wide v0

    .line 1101
    :cond_c
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v1, p1

    .line 1102
    if-gez p1, :cond_15

    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v1

    .line 1103
    :cond_15
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v1, v1, p1

    monitor-exit v0

    move-wide v0, v1

    goto :goto_b

    .line 1104
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method setNextPeriod(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 9
    .parameter "start"
    .parameter "end"

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    .line 809
    const/4 v0, 0x1

    .line 811
    .local v0, startNewPeriod:Z
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 817
    const/4 v0, 0x0

    .line 838
    :goto_15
    invoke-direct {p0, p1}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodStart(Ljava/util/Calendar;)V

    .line 839
    invoke-direct {p0, p2}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodEnd(Ljava/util/Calendar;)V

    .line 840
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    .line 841
    return v0

    .line 831
    :cond_1f
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 832
    :try_start_22
    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 833
    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-lt v2, v3, :cond_31

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 834
    :cond_31
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 835
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 836
    monitor-exit v1

    goto :goto_15

    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_43

    throw v2
.end method

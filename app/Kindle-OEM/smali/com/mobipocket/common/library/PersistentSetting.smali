.class public Lcom/mobipocket/common/library/PersistentSetting;
.super Ljava/lang/Object;
.source "PersistentSetting.java"


# static fields
.field private static privSingleton:Lcom/mobipocket/common/library/PersistentSetting;


# instance fields
.field private appSettings:Lcom/mobipocket/common/library/PersistentSettingTool;

.field private bkViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

.field private settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->bkViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    .line 28
    iput-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->appSettings:Lcom/mobipocket/common/library/PersistentSettingTool;

    .line 29
    iput-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    .line 57
    return-void
.end method

.method public static theOne()Lcom/mobipocket/common/library/PersistentSetting;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/mobipocket/common/library/PersistentSetting;->privSingleton:Lcom/mobipocket/common/library/PersistentSetting;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/mobipocket/common/library/PersistentSetting;

    invoke-direct {v0}, Lcom/mobipocket/common/library/PersistentSetting;-><init>()V

    sput-object v0, Lcom/mobipocket/common/library/PersistentSetting;->privSingleton:Lcom/mobipocket/common/library/PersistentSetting;

    .line 48
    :cond_0
    sget-object v0, Lcom/mobipocket/common/library/PersistentSetting;->privSingleton:Lcom/mobipocket/common/library/PersistentSetting;

    return-object v0
.end method

.method private warnLoadFailure(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistentSetting.load:     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getBookViewSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->bkViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    return-object v0
.end method

.method public load(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;ZLcom/mobipocket/common/library/PersistentSettingTool;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 75
    const/4 v6, 0x1

    .line 77
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->bkViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    .line 79
    iput-object p4, p0, Lcom/mobipocket/common/library/PersistentSetting;->appSettings:Lcom/mobipocket/common/library/PersistentSettingTool;

    .line 81
    new-instance v0, Lcom/mobipocket/common/filesystem/ReadWritePDB;

    const-string v3, "PARAMETER_PAR"

    const-string v4, "MPAR"

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/common/filesystem/RecordComparator;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    .line 82
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v0

    if-le v0, v8, :cond_1

    .line 84
    if-eqz p3, :cond_2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->bkViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecord(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->read(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 100
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->appSettings:Lcom/mobipocket/common/library/PersistentSettingTool;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecord(I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/PersistentSettingTool;->read(Ljava/io/DataInputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v1

    if-le v1, v9, :cond_0

    .line 113
    :try_start_2
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->appSettings:Lcom/mobipocket/common/library/PersistentSettingTool;

    iget-object v1, v1, Lcom/mobipocket/common/library/PersistentSettingTool;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecord(I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->read(Ljava/io/DataInputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    :cond_0
    :goto_2
    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/PersistentSetting;->warnLoadFailure(Ljava/lang/Exception;)V

    move v0, v7

    .line 94
    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 106
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/PersistentSetting;->warnLoadFailure(Ljava/lang/Exception;)V

    move v0, v7

    .line 107
    goto :goto_1

    .line 116
    :catch_2
    move-exception v0

    .line 118
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/PersistentSetting;->warnLoadFailure(Ljava/lang/Exception;)V

    move v0, v7

    .line 120
    goto :goto_2

    .line 125
    :cond_1
    invoke-direct {p0, v5}, Lcom/mobipocket/common/library/PersistentSetting;->warnLoadFailure(Ljava/lang/Exception;)V

    move v0, v7

    .line 126
    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method public save(Z)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    if-eqz p1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->bkViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewSettings;->write(Ljava/io/DataOutputStream;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->modifyRecord([BI)V

    .line 163
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 165
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->modifyRecord([BI)V

    .line 170
    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->appSettings:Lcom/mobipocket/common/library/PersistentSettingTool;

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/PersistentSettingTool;->write(Ljava/io/DataOutputStream;)V

    .line 172
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 173
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->modifyRecord([BI)V

    .line 178
    :goto_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->appSettings:Lcom/mobipocket/common/library/PersistentSettingTool;

    iget-object v1, v1, Lcom/mobipocket/common/library/PersistentSettingTool;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->write(Ljava/io/DataOutputStream;)V

    .line 180
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 181
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->modifyRecord([BI)V

    .line 186
    :goto_3
    iget-object v0, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->save()Z

    .line 187
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    goto :goto_1

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    goto :goto_2

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/PersistentSetting;->settingsFile:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    goto :goto_3
.end method

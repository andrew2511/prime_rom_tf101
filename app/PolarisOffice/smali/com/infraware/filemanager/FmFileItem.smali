.class public Lcom/infraware/filemanager/FmFileItem;
.super Ljava/lang/Object;
.source "FmFileItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3fdb7adf27fda527L


# instance fields
.field public m_bIsFolder:Z

.field public m_bIsSelected:Z

.field public m_nExtType:I

.field public m_nResourceID:I

.field public m_nSize:J

.field public m_nType:I

.field public m_nUpdateTime:J

.field public m_strExt:Ljava/lang/String;

.field public m_strGoogleExt:Ljava/lang/String;

.field public m_strName:Ljava/lang/String;

.field public m_strPath:Ljava/lang/String;

.field public m_strSize:Ljava/lang/String;

.field public m_strUpdateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nType:I

    .line 31
    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strGoogleExt:Ljava/lang/String;

    .line 36
    const/4 v0, 0x6

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    .line 37
    iput-wide v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    .line 38
    iput-wide v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_bIsSelected:Z

    .line 40
    const v0, 0x7f02019a

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nResourceID:I

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "a_oObject"

    .prologue
    const/4 v6, 0x0

    .line 118
    move-object v0, p1

    check-cast v0, Lcom/infraware/filemanager/FmFileItem;

    move-object v1, v0

    .line 120
    .local v1, compareItem:Lcom/infraware/filemanager/FmFileItem;
    iget-wide v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    iget-wide v4, v1, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v2, v6

    .line 130
    :goto_0
    return v2

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    iget-object v3, v1, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 124
    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    iget-object v3, v1, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v6

    .line 127
    goto :goto_0

    .line 130
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, strPathArg:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string v0, ""

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strGoogleExt:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strGoogleExt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_1
    return-object v1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strGoogleExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 151
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strUpdateTime:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strUpdateTime:Ljava/lang/String;

    .line 251
    :goto_0
    return-object v2

    .line 246
    :cond_0
    iget-wide v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 247
    const-string v2, "----/--/--"

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 249
    .local v0, dateFormat:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 250
    .local v1, dateTime:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strUpdateTime:Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strUpdateTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFileExtType()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileResID()I
    .locals 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/infraware/filemanager/FmFileIcon;->getFolderResID(Z)I

    move-result v0

    .line 264
    :goto_0
    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/infraware/filemanager/FmFileIcon;->getFolderResID(Z)I

    move-result v0

    goto :goto_0

    .line 264
    :cond_1
    iget v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nResourceID:I

    goto :goto_0
.end method

.method public getFullFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 158
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFullFileNameForWeb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 164
    :cond_0
    iget v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strGoogleExt:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strGoogleExt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strGoogleExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    const-string v2, "//"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, strConvertPath:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, ""

    .line 181
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getSizeString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 186
    iget-object v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_strSize:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 187
    iget-object v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_strSize:Ljava/lang/String;

    .line 240
    :goto_0
    return-object v11

    .line 189
    :cond_0
    const/high16 v0, 0x4e80

    .line 190
    .local v0, nGiga:F
    const/high16 v3, 0x4980

    .line 191
    .local v3, nMega:F
    const/high16 v1, 0x4480

    .line 193
    .local v1, nKilo:F
    const-string v7, "GB"

    .line 194
    .local v7, strGiga:Ljava/lang/String;
    const-string v9, "MB"

    .line 195
    .local v9, strMega:Ljava/lang/String;
    const-string v8, "KB"

    .line 196
    .local v8, strKilo:Ljava/lang/String;
    const-string v6, "Bytes"

    .line 200
    .local v6, strBytes:Ljava/lang/String;
    const/4 v4, 0x0

    .line 202
    .local v4, nUnitSize:F
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    .line 203
    const/4 v11, 0x0

    goto :goto_0

    .line 205
    :cond_1
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    long-to-float v11, v11

    const/high16 v12, 0x4e80

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_2

    .line 207
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    long-to-float v11, v11

    const/high16 v12, 0x4e80

    div-float v4, v11, v12

    .line 208
    const-string v10, "GB"

    .line 226
    .local v10, strUnit:Ljava/lang/String;
    :goto_1
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    long-to-float v11, v11

    const/high16 v12, 0x4480

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_5

    float-to-int v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v2, v11

    .line 227
    .local v2, nLen:I
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 236
    const-string v11, "%d %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    float-to-int v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, strBuf:Ljava/lang/String;
    :goto_3
    iput-object v5, p0, Lcom/infraware/filemanager/FmFileItem;->m_strSize:Ljava/lang/String;

    .line 240
    iget-object v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_strSize:Ljava/lang/String;

    goto :goto_0

    .line 210
    .end local v2           #nLen:I
    .end local v5           #strBuf:Ljava/lang/String;
    .end local v10           #strUnit:Ljava/lang/String;
    :cond_2
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    long-to-float v11, v11

    const/high16 v12, 0x4980

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_3

    .line 212
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    long-to-float v11, v11

    const/high16 v12, 0x4980

    div-float v4, v11, v12

    .line 213
    const-string v10, "MB"

    .restart local v10       #strUnit:Ljava/lang/String;
    goto :goto_1

    .line 215
    .end local v10           #strUnit:Ljava/lang/String;
    :cond_3
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    long-to-float v11, v11

    const/high16 v12, 0x4480

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_4

    .line 217
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    long-to-float v11, v11

    const/high16 v12, 0x4480

    div-float v4, v11, v12

    .line 218
    const-string v10, "KB"

    .restart local v10       #strUnit:Ljava/lang/String;
    goto :goto_1

    .line 222
    .end local v10           #strUnit:Ljava/lang/String;
    :cond_4
    iget-wide v11, p0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    long-to-float v4, v11

    .line 223
    const-string v10, "Bytes"

    .restart local v10       #strUnit:Ljava/lang/String;
    goto :goto_1

    .line 226
    :cond_5
    const/4 v11, -0x1

    move v2, v11

    goto :goto_2

    .line 230
    .restart local v2       #nLen:I
    :pswitch_0
    const-string v11, "%.2f %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .restart local v5       #strBuf:Ljava/lang/String;
    goto :goto_3

    .line 233
    .end local v5           #strBuf:Ljava/lang/String;
    :pswitch_1
    const-string v11, "%.1f %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .restart local v5       #strBuf:Ljava/lang/String;
    goto :goto_3

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setExtName(Ljava/lang/String;)V
    .locals 1
    .parameter "a_strFileExtName"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/infraware/filemanager/FmFileIcon;->getFileResID(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nResourceID:I

    .line 84
    iget v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nResourceID:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :pswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    .line 115
    :goto_0
    return-void

    .line 86
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 87
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 88
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 89
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 90
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 91
    :pswitch_6
    const/4 v0, 0x7

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 92
    :pswitch_7
    const/16 v0, 0x8

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 93
    :pswitch_8
    const/16 v0, 0x9

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 94
    :pswitch_9
    const/16 v0, 0xa

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 95
    :pswitch_a
    const/16 v0, 0xb

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 96
    :pswitch_b
    const/16 v0, 0xc

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 97
    :pswitch_c
    const/16 v0, 0xd

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 98
    :pswitch_d
    const/16 v0, 0xe

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 99
    :pswitch_e
    const/16 v0, 0xf

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 100
    :pswitch_f
    const/16 v0, 0x10

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 101
    :pswitch_10
    const/16 v0, 0x11

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 102
    :pswitch_11
    const/16 v0, 0x12

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 103
    :pswitch_12
    const/16 v0, 0x13

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 104
    :pswitch_13
    const/16 v0, 0x1a

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 105
    :pswitch_14
    const/16 v0, 0x14

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 106
    :pswitch_15
    const/16 v0, 0x15

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 107
    :pswitch_16
    const/16 v0, 0x16

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 108
    :pswitch_17
    const/16 v0, 0x18

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 109
    :pswitch_18
    const/16 v0, 0x19

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 110
    :pswitch_19
    const/16 v0, 0x17

    iput v0, p0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x7f020194
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "a_strFileName"
    .parameter "a_strFileExt"

    .prologue
    const/4 v5, 0x0

    .line 45
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 47
    .local v0, nIndex:I
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    const/4 v3, -0x1

    if-le v0, v3, :cond_2

    .line 51
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, strName:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, strExt:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    iput-object v2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    .line 62
    .end local v1           #strExt:Ljava/lang/String;
    .end local v2           #strName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 63
    iput-object p2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    .line 65
    :cond_0
    iput-object p2, p0, Lcom/infraware/filemanager/FmFileItem;->m_strGoogleExt:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p2}, Lcom/infraware/filemanager/FmFileItem;->setExtName(Ljava/lang/String;)V

    .line 78
    :goto_1
    return-void

    .line 58
    .restart local v1       #strExt:Ljava/lang/String;
    .restart local v2       #strName:Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    goto :goto_0

    .line 61
    .end local v1           #strExt:Ljava/lang/String;
    .end local v2           #strName:Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_4

    .line 72
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 73
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    .line 74
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/infraware/filemanager/FmFileItem;->setExtName(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_4
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    goto :goto_1
.end method

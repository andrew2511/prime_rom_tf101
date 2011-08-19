.class public Lcom/asus/filemanager/edit/EditUtil;
.super Ljava/lang/Object;
.source "EditUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static folder_depth:I

.field public static mApplyAll:Z

.field public static mOverWrite:Z

.field public static mQuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string v0, "EditUtil"

    sput-object v0, Lcom/asus/filemanager/edit/EditUtil;->TAG:Ljava/lang/String;

    .line 22
    sput-boolean v1, Lcom/asus/filemanager/edit/EditUtil;->mQuit:Z

    .line 23
    sput-boolean v1, Lcom/asus/filemanager/edit/EditUtil;->mApplyAll:Z

    .line 24
    sput-boolean v1, Lcom/asus/filemanager/edit/EditUtil;->mOverWrite:Z

    .line 28
    sput v1, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bytes2String(JI)Ljava/lang/String;
    .locals 9
    .parameter "s"
    .parameter "point"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4480

    .line 444
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 445
    .local v0, f:F
    const-string v2, "%%.%df"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, m:Ljava/lang/String;
    div-float v2, v0, v5

    cmpg-float v2, v2, v8

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    :goto_0
    return-object v2

    .line 447
    :cond_0
    div-float v2, v0, v5

    div-float/2addr v2, v5

    cmpg-float v2, v2, v8

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v7, [Ljava/lang/Object;

    div-float v4, v0, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 448
    :cond_1
    div-float v2, v0, v5

    div-float/2addr v2, v5

    div-float/2addr v2, v5

    cmpg-float v2, v2, v8

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v7, [Ljava/lang/Object;

    div-float v4, v0, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 449
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v7, [Ljava/lang/Object;

    div-float v4, v0, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static Copy2Path(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;
    .locals 4
    .parameter "f"
    .parameter "dstfolder"
    .parameter "h"
    .parameter "deleteSrc"

    .prologue
    const/4 v3, 0x1

    .line 212
    new-instance v0, Lcom/asus/filemanager/edit/EditResult;

    invoke-direct {v0}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 213
    .local v0, r:Lcom/asus/filemanager/edit/EditResult;
    sget-boolean v1, Lcom/asus/filemanager/edit/EditUtil;->mQuit:Z

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget v1, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 215
    :cond_0
    iput v3, v0, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    move-object v1, v0

    .line 226
    :goto_0
    return-object v1

    .line 218
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    sget v1, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    .line 221
    invoke-static {p0, p1, p2, p3}, Lcom/asus/filemanager/edit/EditUtil;->CopyFolder2Path(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v0

    .line 222
    sget v1, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    sub-int/2addr v1, v3

    sput v1, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    move-object v1, v0

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/asus/filemanager/edit/EditUtil;->CopyFile2Path(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v1

    goto :goto_0
.end method

.method public static Copy2Path([Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;
    .locals 7
    .parameter "src"
    .parameter "dstfolder"
    .parameter "h"
    .parameter "deleteSrc"

    .prologue
    .line 156
    new-instance v2, Lcom/asus/filemanager/edit/EditResult;

    invoke-direct {v2}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 157
    .local v2, r:Lcom/asus/filemanager/edit/EditResult;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 159
    :cond_0
    const/4 p0, 0x1

    iput p0, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .end local p0
    move-object p0, v2

    .line 208
    .end local v2           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    :goto_0
    return-object p0

    .line 163
    .restart local v2       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, src:[Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    const/4 p0, 0x2

    iput p0, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .end local p0           #src:[Ljava/io/File;
    move-object p0, v2

    .line 165
    .end local v2           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto :goto_0

    .line 169
    .restart local v2       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, src:[Ljava/io/File;
    :cond_2
    if-eqz p3, :cond_3

    .line 171
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, dstFileCanonicalPath:Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, srcfParentCanonicalPath:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #dstFileCanonicalPath:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 175
    const/4 v0, 0x0

    iput v0, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    .line 176
    .end local v2           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto :goto_0

    .line 178
    .end local v1           #srcfParentCanonicalPath:Ljava/lang/String;
    .restart local v2       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, src:[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const/4 v0, 0x0

    sput v0, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_7

    aget-object v1, p0, v0

    if-eqz v1, :cond_7

    .line 186
    aget-object v1, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/asus/filemanager/main/FileInfo;->getInfo(Ljava/io/File;Landroid/os/Handler;I)Lcom/asus/filemanager/main/FileInfo;

    move-result-object v1

    .line 187
    .local v1, info:Lcom/asus/filemanager/main/FileInfo;
    iget-boolean v1, v1, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    .end local v1           #info:Lcom/asus/filemanager/main/FileInfo;
    if-nez v1, :cond_4

    .line 189
    const/4 p0, 0x2

    iput p0, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .end local p0           #src:[Ljava/io/File;
    move-object p0, v2

    .line 190
    .end local v2           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto :goto_0

    .line 192
    .restart local v2       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, src:[Ljava/io/File;
    :cond_4
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/asus/filemanager/edit/EditUtil;->IsSourceIncludeTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    const/4 p0, 0x1

    iput p0, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .end local p0           #src:[Ljava/io/File;
    move-object p0, v2

    .line 195
    .end local v2           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto :goto_0

    .line 199
    .restart local v2       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, src:[Ljava/io/File;
    :cond_5
    aget-object v1, p0, v0

    invoke-static {v1, p1, p2, p3}, Lcom/asus/filemanager/edit/EditUtil;->Copy2Path(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v1

    .line 200
    .local v1, tr:Lcom/asus/filemanager/edit/EditResult;
    iget v3, v1, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    iput v3, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 201
    iget-wide v3, v2, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    iget-wide v5, v1, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    .line 202
    iget v3, v2, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    iget v4, v1, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 203
    iget v3, v2, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    iget v1, v1, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    .end local v1           #tr:Lcom/asus/filemanager/edit/EditResult;
    add-int/2addr v1, v3

    iput v1, v2, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    .line 204
    iget v1, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    if-eqz v1, :cond_6

    move-object p0, v2

    .line 205
    .end local v2           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto/16 :goto_0

    .line 184
    .restart local v2       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, src:[Ljava/io/File;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move-object p0, v2

    .line 208
    .end local v2           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto/16 :goto_0
.end method

.method private static CopyFile2Path(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;
    .locals 12
    .parameter "f"
    .parameter "dstfolder"
    .parameter "h"
    .parameter "deleteSrc"

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, fileExisted:Z
    new-instance v4, Lcom/asus/filemanager/edit/EditResult;

    invoke-direct {v4}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 232
    .local v4, r:Lcom/asus/filemanager/edit/EditResult;
    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v3, dst:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    const/4 p1, 0x1

    .end local v0           #fileExisted:Z
    .local p1, fileExisted:Z
    move v0, p1

    .line 235
    .end local p1           #fileExisted:Z
    .restart local v0       #fileExisted:Z
    :cond_0
    sget-boolean p1, Lcom/asus/filemanager/edit/EditUtil;->mApplyAll:Z

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 237
    if-eqz p2, :cond_1

    .line 239
    const/16 p1, 0x1453

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v5, Lcom/asus/filemanager/edit/ExistPair;

    invoke-direct {v5, v3, p0}, Lcom/asus/filemanager/edit/ExistPair;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p2, p1, v1, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    invoke-static {}, Lcom/asus/filemanager/main/Mutex;->Lock()V

    .line 241
    sget-boolean p1, Lcom/asus/filemanager/edit/EditUtil;->mQuit:Z

    if-eqz p1, :cond_2

    .line 243
    const/4 p0, 0x1

    iput p0, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .end local p0
    move-object p0, v4

    .line 366
    .end local v0           #fileExisted:Z
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .end local p2
    .end local p3
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    :goto_0
    return-object p0

    .line 249
    .restart local v0       #fileExisted:Z
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, f:Ljava/io/File;
    .restart local p2
    .restart local p3
    :cond_1
    const/4 p0, 0x3

    iput p0, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .end local p0           #f:Ljava/io/File;
    move-object p0, v4

    .line 250
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto :goto_0

    .line 254
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, f:Ljava/io/File;
    :cond_2
    const/4 v1, 0x0

    .line 255
    .local v1, toPass:Z
    const/4 p1, 0x0

    .line 256
    .local p1, apply:Z
    if-eqz v0, :cond_3

    .line 258
    :try_start_0
    sget-boolean v0, Lcom/asus/filemanager/edit/EditUtil;->mOverWrite:Z

    .end local v0           #fileExisted:Z
    if-eqz v0, :cond_5

    .line 259
    const/4 p1, 0x1

    .line 270
    :cond_3
    if-eqz p3, :cond_15

    .line 271
    sget-boolean v0, Lcom/asus/filemanager/edit/EditUtil;->mOverWrite:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 272
    new-instance p3, Lcom/asus/filemanager/edit/EditResult;

    .end local p3
    invoke-direct {p3}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 273
    .local p3, temp:Lcom/asus/filemanager/edit/EditResult;
    const/4 v0, 0x1

    iput v0, p3, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 274
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    .line 275
    if-eqz p2, :cond_4

    .line 276
    const/16 p0, 0x1451

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .end local p0           #f:Ljava/io/File;
    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    move-object p0, v4

    .line 277
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto :goto_0

    .line 262
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, f:Ljava/io/File;
    .local p3, deleteSrc:Z
    :cond_5
    new-instance p3, Lcom/asus/filemanager/edit/EditResult;

    .end local p3           #deleteSrc:Z
    invoke-direct {p3}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 263
    .local p3, temp:Lcom/asus/filemanager/edit/EditResult;
    const/4 v0, 0x1

    iput v0, p3, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    .line 265
    if-eqz p2, :cond_6

    const/16 p0, 0x1451

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .end local p0           #f:Ljava/io/File;
    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    move-object p0, v4

    .line 266
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto :goto_0

    .line 279
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, f:Ljava/io/File;
    .local p3, deleteSrc:Z
    :cond_7
    invoke-virtual {p0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 282
    .end local v1           #toPass:Z
    .local v0, toPass:Z
    :goto_1
    if-eqz v0, :cond_9

    .line 283
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    .line 284
    const/4 p3, 0x1

    iput p3, v4, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 285
    .end local p3           #deleteSrc:Z
    if-eqz p2, :cond_8

    .line 286
    const/16 p3, 0x1451

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    :cond_8
    invoke-static {p0, v3}, Lcom/asus/filemanager/adapter/FileProvider;->Rename(Ljava/io/File;Ljava/io/File;)Z

    .line 288
    const/4 p0, 0x0

    iput p0, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local p0           #f:Ljava/io/File;
    move-object p0, v4

    .line 289
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto :goto_0

    .line 291
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, f:Ljava/io/File;
    .restart local p3       #deleteSrc:Z
    :cond_9
    if-eqz p1, :cond_b

    .line 292
    const/4 v0, 0x1

    move v6, v0

    .line 298
    .end local v0           #toPass:Z
    .local v6, toPass:Z
    :goto_2
    if-eqz v6, :cond_13

    .line 300
    :try_start_2
    sget-boolean v0, Lcom/asus/filemanager/edit/EditUtil;->mOverWrite:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 302
    new-instance p3, Lcom/asus/filemanager/edit/EditResult;

    .end local p3           #deleteSrc:Z
    invoke-direct {p3}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 303
    .local p3, temp:Lcom/asus/filemanager/edit/EditResult;
    const/4 v0, 0x1

    iput v0, p3, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 304
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    .line 305
    if-eqz p2, :cond_a

    const/16 p0, 0x1451

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v0, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .end local p0           #f:Ljava/io/File;
    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    move-object p0, v4

    .line 306
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto/16 :goto_0

    .line 294
    .end local v6           #toPass:Z
    .restart local v0       #toPass:Z
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, f:Ljava/io/File;
    .local p3, deleteSrc:Z
    :cond_b
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    move v6, v0

    .end local v0           #toPass:Z
    .restart local v6       #toPass:Z
    goto :goto_2

    .line 309
    :cond_c
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    cmp-long v0, v0, v7

    if-lez v0, :cond_d

    .line 310
    sget-object p2, Lcom/asus/filemanager/edit/EditUtil;->TAG:Ljava/lang/String;

    .end local p2
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3           #deleteSrc:Z
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file size("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #f:Ljava/io/File;
    const-string p3, ") > usable space("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, ")"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance p0, Ljava/io/IOException;

    const-string p2, "No space left on device"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 356
    :catch_0
    move-exception p0

    move p2, v6

    .end local v6           #toPass:Z
    .local p2, toPass:Z
    move v11, p1

    .end local p1           #apply:Z
    .local v11, apply:Z
    move-object p1, p0

    move p0, v11

    .line 357
    .end local v11           #apply:Z
    .local p0, apply:Z
    .local p1, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #apply:Z
    const-string p2, "No space left on device"

    .end local p2           #toPass:Z
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 358
    sget-object p0, Lcom/asus/filemanager/edit/EditUtil;->TAG:Ljava/lang/String;

    const-string p1, "no space"

    .end local p1           #e:Ljava/io/IOException;
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 p0, 0x4

    iput p0, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 365
    :goto_4
    invoke-static {v3}, Lcom/asus/filemanager/edit/EditUtil;->DeleteFile(Ljava/io/File;)Lcom/asus/filemanager/edit/EditResult;

    move-result-object p0

    .local p0, tr:Lcom/asus/filemanager/edit/EditResult;
    move-object p0, v4

    .line 366
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto/16 :goto_0

    .line 314
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .restart local v6       #toPass:Z
    .local p0, f:Ljava/io/File;
    .local p1, apply:Z
    .local p2, h:Landroid/os/Handler;
    .restart local p3       #deleteSrc:Z
    :cond_d
    const/16 v0, 0x800

    .line 315
    .local v0, buflen:I
    const/16 v0, 0x800

    :try_start_5
    new-array v2, v0, [B

    .line 316
    .end local v0           #buflen:I
    .local v2, buffer:[B
    const/4 v5, -0x1

    .line 317
    .local v5, rd:I
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 318
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 320
    .local v1, bos:Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    const/16 v8, 0x800

    :try_start_6
    invoke-virtual {v0, v2, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 321
    :goto_5
    const/4 v7, -0x1

    if-eq v5, v7, :cond_f

    .line 323
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 324
    iget-wide v7, v4, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    int-to-long v9, v5

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    .line 325
    if-eqz p2, :cond_e

    const/16 v7, 0x1452

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v7, v8, v9, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    :cond_e
    sget-boolean v7, Lcom/asus/filemanager/edit/EditUtil;->mQuit:Z

    if-eqz v7, :cond_12

    .line 328
    const/4 v2, 0x1

    iput v2, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 334
    .end local v2           #buffer:[B
    :cond_f
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 337
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 338
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 340
    iget v0, v4, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 341
    if-eqz p2, :cond_10

    const/16 v0, 0x1451

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    :cond_10
    invoke-static {v3}, Lcom/asus/filemanager/adapter/FileProvider;->AddFile(Ljava/io/File;)V

    .line 343
    if-eqz p3, :cond_11

    iget p2, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .end local p2           #h:Landroid/os/Handler;
    if-nez p2, :cond_11

    .line 345
    invoke-static {p0}, Lcom/asus/filemanager/edit/EditUtil;->DeleteFile(Ljava/io/File;)Lcom/asus/filemanager/edit/EditResult;

    move-result-object p0

    .line 346
    .local p0, tr:Lcom/asus/filemanager/edit/EditResult;
    iget p2, p0, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    if-eqz p2, :cond_11

    .line 347
    iget p0, p0, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .end local p0           #tr:Lcom/asus/filemanager/edit/EditResult;
    iput p0, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_11
    move-object p0, v4

    .line 349
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto/16 :goto_0

    .line 331
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, f:Ljava/io/File;
    .restart local p2       #h:Landroid/os/Handler;
    :cond_12
    const/4 v5, -0x1

    .line 332
    const/4 v7, 0x0

    const/16 v8, 0x800

    :try_start_8
    invoke-virtual {v0, v2, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v5

    goto :goto_5

    .line 337
    .end local v2           #buffer:[B
    :catchall_0
    move-exception p0

    move-object p2, p0

    move p0, v5

    .end local v5           #rd:I
    .end local p2           #h:Landroid/os/Handler;
    .local p0, rd:I
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 338
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    throw p2

    .line 353
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .local p0, f:Ljava/io/File;
    .restart local p2       #h:Landroid/os/Handler;
    :cond_13
    const/4 p0, 0x1

    iput p0, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .end local p0           #f:Ljava/io/File;
    move-object p0, v4

    .line 354
    .end local v4           #r:Lcom/asus/filemanager/edit/EditResult;
    .local p0, r:Lcom/asus/filemanager/edit/EditResult;
    goto/16 :goto_0

    .line 361
    .end local v6           #toPass:Z
    .end local p0           #r:Lcom/asus/filemanager/edit/EditResult;
    .end local p2           #h:Landroid/os/Handler;
    .end local p3           #deleteSrc:Z
    .restart local v4       #r:Lcom/asus/filemanager/edit/EditResult;
    .local p1, e:Ljava/io/IOException;
    :cond_14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    const/4 p0, 0x1

    iput p0, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    goto/16 :goto_4

    .line 356
    .local v1, toPass:Z
    .local p1, apply:Z
    .restart local p2       #h:Landroid/os/Handler;
    :catch_1
    move-exception p0

    move p2, v1

    .end local v1           #toPass:Z
    .local p2, toPass:Z
    move v11, p1

    .end local p1           #apply:Z
    .restart local v11       #apply:Z
    move-object p1, p0

    move p0, v11

    .end local v11           #apply:Z
    .local p0, apply:Z
    goto/16 :goto_3

    .end local p0           #apply:Z
    .local v0, toPass:Z
    .restart local p1       #apply:Z
    .local p2, h:Landroid/os/Handler;
    :catch_2
    move-exception p0

    move p2, v0

    .end local v0           #toPass:Z
    .local p2, toPass:Z
    move v11, p1

    .end local p1           #apply:Z
    .restart local v11       #apply:Z
    move-object p1, p0

    move p0, v11

    .end local v11           #apply:Z
    .restart local p0       #apply:Z
    goto/16 :goto_3

    .restart local v0       #toPass:Z
    .local p0, f:Ljava/io/File;
    .restart local p1       #apply:Z
    .local p2, h:Landroid/os/Handler;
    .restart local p3       #deleteSrc:Z
    :catch_3
    move-exception p0

    move p2, v0

    .end local v0           #toPass:Z
    .local p2, toPass:Z
    move v11, p1

    .end local p1           #apply:Z
    .restart local v11       #apply:Z
    move-object p1, p0

    move p0, v11

    .end local v11           #apply:Z
    .local p0, apply:Z
    goto/16 :goto_3

    .restart local v1       #toPass:Z
    .local p0, f:Ljava/io/File;
    .restart local p1       #apply:Z
    .local p2, h:Landroid/os/Handler;
    :cond_15
    move v0, v1

    .end local v1           #toPass:Z
    .restart local v0       #toPass:Z
    goto/16 :goto_1
.end method

.method private static CopyFolder2Path(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;
    .locals 12
    .parameter "f"
    .parameter "dstfolder"
    .parameter "h"
    .parameter "deleteSrc"

    .prologue
    const/4 v11, 0x1

    .line 371
    const/4 v3, 0x0

    .line 372
    .local v3, folderExisted:Z
    new-instance v5, Lcom/asus/filemanager/edit/EditResult;

    invoke-direct {v5}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 373
    .local v5, r:Lcom/asus/filemanager/edit/EditResult;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v2, dst:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 375
    const/4 v3, 0x1

    .line 376
    :cond_0
    sget-boolean v7, Lcom/asus/filemanager/edit/EditUtil;->mApplyAll:Z

    if-nez v7, :cond_1

    if-eqz v3, :cond_1

    .line 378
    if-eqz p2, :cond_3

    .line 380
    sput-boolean v11, Lcom/asus/filemanager/edit/EditUtil;->mOverWrite:Z

    .line 395
    :cond_1
    const/4 v0, 0x0

    .line 396
    .local v0, b:Z
    if-eqz v3, :cond_4

    .line 398
    sget-boolean v7, Lcom/asus/filemanager/edit/EditUtil;->mOverWrite:Z

    if-eqz v7, :cond_2

    .line 399
    const/4 v0, 0x1

    .line 407
    :goto_0
    if-eqz v0, :cond_7

    .line 409
    invoke-static {v2}, Lcom/asus/filemanager/adapter/FileProvider;->AddFile(Ljava/io/File;)V

    .line 410
    iget v7, v5, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    .line 411
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 412
    .local v1, childs:[Ljava/io/File;
    if-eqz v1, :cond_6

    .line 413
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_6

    aget-object v7, v1, v4

    if-eqz v7, :cond_6

    .line 415
    aget-object v7, v1, v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2, p3}, Lcom/asus/filemanager/edit/EditUtil;->Copy2Path(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v6

    .line 416
    .local v6, tr:Lcom/asus/filemanager/edit/EditResult;
    iget v7, v6, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    iput v7, v5, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 417
    iget-wide v7, v5, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    iget-wide v9, v6, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    .line 418
    iget v7, v5, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    iget v8, v6, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 419
    iget v7, v5, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    iget v8, v6, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    .line 420
    iget v7, v5, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    if-eqz v7, :cond_5

    .line 439
    .end local v0           #b:Z
    .end local v1           #childs:[Ljava/io/File;
    .end local v4           #i:I
    .end local v6           #tr:Lcom/asus/filemanager/edit/EditResult;
    :cond_2
    :goto_2
    return-object v5

    .line 391
    :cond_3
    const/4 v7, 0x3

    iput v7, v5, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    goto :goto_2

    .line 405
    .restart local v0       #b:Z
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_0

    .line 413
    .restart local v1       #childs:[Ljava/io/File;
    .restart local v4       #i:I
    .restart local v6       #tr:Lcom/asus/filemanager/edit/EditResult;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 423
    .end local v4           #i:I
    .end local v6           #tr:Lcom/asus/filemanager/edit/EditResult;
    :cond_6
    if-eqz p3, :cond_2

    iget v7, v5, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    if-nez v7, :cond_2

    .line 425
    invoke-static {p0}, Lcom/asus/filemanager/edit/EditUtil;->DeleteFile(Ljava/io/File;)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v6

    .line 426
    .restart local v6       #tr:Lcom/asus/filemanager/edit/EditResult;
    iget v7, v6, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    if-eqz v7, :cond_2

    .line 427
    iget v7, v6, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    iput v7, v5, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    goto :goto_2

    .line 433
    .end local v1           #childs:[Ljava/io/File;
    .end local v6           #tr:Lcom/asus/filemanager/edit/EditResult;
    :cond_7
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    const-wide/16 v9, 0x1000

    cmp-long v7, v7, v9

    if-gez v7, :cond_8

    .line 434
    sget-object v7, Lcom/asus/filemanager/edit/EditUtil;->TAG:Ljava/lang/String;

    const-string v8, "no space"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v7, 0x4

    iput v7, v5, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    goto :goto_2

    .line 437
    :cond_8
    iput v11, v5, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    goto :goto_2
.end method

.method private static DeleteFile(Ljava/io/File;)Lcom/asus/filemanager/edit/EditResult;
    .locals 7
    .parameter "f"

    .prologue
    const/4 v6, 0x1

    .line 61
    new-instance v2, Lcom/asus/filemanager/edit/EditResult;

    invoke-direct {v2}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 62
    .local v2, r:Lcom/asus/filemanager/edit/EditResult;
    if-eqz p0, :cond_0

    sget v4, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    .line 64
    :cond_0
    iput v6, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 105
    :goto_0
    return-object v2

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 69
    sget v4, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 71
    .local v0, childs:[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 73
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    .line 75
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/asus/filemanager/edit/EditUtil;->DeleteFile(Ljava/io/File;)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v3

    .line 76
    .local v3, tr:Lcom/asus/filemanager/edit/EditResult;
    iget v4, v3, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 77
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    iget v5, v3, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 78
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    iget v5, v3, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    .line 79
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    if-eqz v4, :cond_4

    .line 83
    .end local v1           #i:I
    .end local v3           #tr:Lcom/asus/filemanager/edit/EditResult;
    :cond_2
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    if-nez v4, :cond_3

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    invoke-static {p0}, Lcom/asus/filemanager/adapter/FileProvider;->DeleteFile(Ljava/io/File;)Z

    .line 88
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    .line 93
    :cond_3
    :goto_2
    sget v4, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    sub-int/2addr v4, v6

    sput v4, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    goto :goto_0

    .line 73
    .restart local v1       #i:I
    .restart local v3       #tr:Lcom/asus/filemanager/edit/EditResult;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    .end local v1           #i:I
    .end local v3           #tr:Lcom/asus/filemanager/edit/EditResult;
    :cond_5
    iput v6, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    goto :goto_2

    .line 97
    .end local v0           #childs:[Ljava/io/File;
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 99
    invoke-static {p0}, Lcom/asus/filemanager/adapter/FileProvider;->DeleteFile(Ljava/io/File;)Z

    .line 100
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    goto :goto_0

    .line 103
    :cond_7
    iput v6, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    goto :goto_0
.end method

.method public static DeleteFiles([Ljava/io/File;)Lcom/asus/filemanager/edit/EditResult;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v6, 0x0

    .line 32
    new-instance v2, Lcom/asus/filemanager/edit/EditResult;

    invoke-direct {v2}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    .line 33
    .local v2, r:Lcom/asus/filemanager/edit/EditResult;
    if-nez p0, :cond_1

    .line 35
    const/4 v4, 0x1

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 57
    :cond_0
    :goto_0
    return-object v2

    .line 38
    :cond_1
    sput v6, Lcom/asus/filemanager/edit/EditUtil;->folder_depth:I

    .line 39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_0

    aget-object v4, p0, v0

    if-eqz v4, :cond_0

    .line 41
    aget-object v4, p0, v0

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/asus/filemanager/main/FileInfo;->getInfo(Ljava/io/File;Landroid/os/Handler;I)Lcom/asus/filemanager/main/FileInfo;

    move-result-object v1

    .line 42
    .local v1, info:Lcom/asus/filemanager/main/FileInfo;
    iget-boolean v4, v1, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    if-nez v4, :cond_2

    .line 44
    const/4 v4, 0x2

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    goto :goto_0

    .line 49
    :cond_2
    aget-object v4, p0, v0

    invoke-static {v4}, Lcom/asus/filemanager/edit/EditUtil;->DeleteFile(Ljava/io/File;)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v3

    .line 50
    .local v3, tr:Lcom/asus/filemanager/edit/EditResult;
    iget v4, v3, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 51
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    iget v5, v3, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 52
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    iget v5, v3, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    .line 53
    iget v4, v2, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    if-nez v4, :cond_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static IsSourceIncludeTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 453
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static NewFolder(Ljava/io/File;Ljava/lang/String;)I
    .locals 6
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, r:I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    const/4 v2, 0x1

    .line 130
    :goto_0
    return v2

    .line 113
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    const/4 v2, 0x2

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v0, folder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 117
    const/4 v1, 0x3

    .line 126
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 128
    invoke-static {v0}, Lcom/asus/filemanager/adapter/FileProvider;->AddFile(Ljava/io/File;)V

    :cond_4
    move v2, v1

    .line 130
    goto :goto_0

    .line 118
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 120
    sget-object v2, Lcom/asus/filemanager/edit/EditUtil;->TAG:Ljava/lang/String;

    const-string v3, "no space"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x4

    goto :goto_1

    .line 123
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static Rename(Ljava/io/File;Ljava/lang/String;)I
    .locals 7
    .parameter "f"
    .parameter "name"

    .prologue
    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, r:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 136
    :cond_0
    const/4 v4, 0x1

    .line 152
    :goto_0
    return v4

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_2

    .line 138
    const/4 v4, 0x2

    goto :goto_0

    .line 139
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 140
    .local v2, newPath:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, i:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, newFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 145
    const/4 v3, 0x3

    .line 148
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 150
    invoke-static {p0, v1}, Lcom/asus/filemanager/adapter/FileProvider;->Rename(Ljava/io/File;Ljava/io/File;)Z

    :cond_5
    move v4, v3

    .line 152
    goto :goto_0

    .line 146
    :cond_6
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 147
    const/4 v3, 0x1

    goto :goto_1
.end method

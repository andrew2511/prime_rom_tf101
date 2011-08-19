.class public Lcom/infraware/filemanager/bookclip/BookClipHelper;
.super Ljava/lang/Object;
.source "BookClipHelper.java"


# static fields
.field public static final BOOKCLIP_PATH:Ljava/lang/String; = "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"


# instance fields
.field private mItemCount:I

.field private mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    .line 10
    return-void
.end method

.method private ReadBookClip()V
    .locals 10

    .prologue
    .line 233
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    .line 240
    .local v5, file_len:I
    if-eqz v5, :cond_0

    rem-int/lit16 v8, v5, 0x523

    if-nez v8, :cond_0

    .line 246
    const/4 v4, 0x0

    .line 248
    .local v4, fIn:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4           #fIn:Ljava/io/FileInputStream;
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    div-int/lit16 v8, v5, 0x523

    new-array v8, v8, [Lcom/infraware/filemanager/bookclip/BookClipItem;

    iput-object v8, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 255
    const/16 v8, 0x523

    new-array v0, v8, [B

    .line 256
    .local v0, buffer:[B
    const/4 v7, 0x0

    .line 257
    .local v7, read_cnt:I
    :cond_2
    :goto_1
    if-lt v7, v5, :cond_3

    .line 286
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #fIn:Ljava/io/FileInputStream;
    .end local v7           #read_cnt:I
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 250
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 260
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #buffer:[B
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v7       #read_cnt:I
    :cond_3
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    add-int/lit16 v7, v7, 0x523

    .line 276
    new-instance v6, Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-direct {v6}, Lcom/infraware/filemanager/bookclip/BookClipItem;-><init>()V

    .line 278
    .local v6, item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    invoke-virtual {v6, v0}, Lcom/infraware/filemanager/bookclip/BookClipItem;->Set([B)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 280
    iget-object v8, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    iget v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    invoke-static {v8, v9, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 281
    iget v8, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    goto :goto_1

    .line 261
    .end local v6           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    :catch_2
    move-exception v1

    .line 263
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 266
    :catch_3
    move-exception v2

    .line 268
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "srcPath"
    .parameter "destPath"

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 19
    invoke-direct {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->ReadBookClip()V

    .line 21
    iget v10, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-nez v10, :cond_0

    move v10, v11

    .line 106
    :goto_0
    return v10

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    .local v1, add_count:I
    const/4 v3, 0x0

    .line 26
    .local v3, del_cnt:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget v10, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-lt v7, v10, :cond_1

    .line 42
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    .line 44
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    move v10, v11

    .line 45
    goto :goto_0

    .line 28
    :cond_1
    iget-object v10, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 30
    .local v8, item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    iget-object v10, v8, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 35
    :cond_2
    iget-object v10, v8, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    .line 37
    iget-object v10, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v10, v7, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 26
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 48
    .end local v8           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    :cond_4
    check-cast v0, [Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 50
    .local v0, addItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;
    if-lez v1, :cond_5

    .line 52
    new-array v0, v1, [Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, add_index:I
    const/4 v7, 0x0

    :goto_2
    iget v10, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-lt v7, v10, :cond_7

    .line 72
    .end local v2           #add_index:I
    :cond_5
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v5, f:Ljava/io/File;
    const/4 v6, 0x0

    .line 75
    .local v6, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6           #fOut:Ljava/io/FileOutputStream;
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .restart local v6       #fOut:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    :goto_3
    iget v10, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-lt v7, v10, :cond_a

    .line 88
    if-eqz v0, :cond_6

    .line 90
    const/4 v7, 0x0

    :goto_4
    if-lt v7, v1, :cond_c

    .line 97
    :cond_6
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    .line 100
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move v10, v11

    .line 106
    goto :goto_0

    .line 57
    .end local v5           #f:Ljava/io/File;
    .end local v6           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #add_index:I
    :cond_7
    iget-object v10, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 58
    .restart local v8       #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    if-nez v8, :cond_9

    .line 55
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 61
    :cond_9
    iget-object v10, v8, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8

    .line 64
    invoke-virtual {v8}, Lcom/infraware/filemanager/bookclip/BookClipItem;->newCopy()Lcom/infraware/filemanager/bookclip/BookClipItem;

    move-result-object v9

    .line 65
    .local v9, itemAdd:Lcom/infraware/filemanager/bookclip/BookClipItem;
    iput-object p2, v9, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    .line 66
    invoke-static {v0, v2, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 76
    .end local v2           #add_index:I
    .end local v8           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    .end local v9           #itemAdd:Lcom/infraware/filemanager/bookclip/BookClipItem;
    .restart local v5       #f:Ljava/io/File;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 77
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    .line 78
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 83
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #fOut:Ljava/io/FileOutputStream;
    :cond_a
    iget-object v10, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 84
    .restart local v8       #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    if-eqz v8, :cond_b

    .line 85
    invoke-virtual {v8, v6}, Lcom/infraware/filemanager/bookclip/BookClipItem;->Write(Ljava/io/FileOutputStream;)Z

    .line 81
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 92
    .end local v8           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    :cond_c
    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 93
    .restart local v8       #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    invoke-virtual {v8, v6}, Lcom/infraware/filemanager/bookclip/BookClipItem;->Write(Ljava/io/FileOutputStream;)Z

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 101
    .end local v8           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    :catch_1
    move-exception v4

    .line 103
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public DeleteFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v8, 0x1

    .line 110
    invoke-direct {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->ReadBookClip()V

    .line 112
    iget v6, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-nez v6, :cond_0

    move v6, v8

    .line 157
    :goto_0
    return v6

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 116
    .local v0, del_cnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v6, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-lt v4, v6, :cond_1

    .line 127
    if-nez v0, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    move v6, v8

    .line 130
    goto :goto_0

    .line 118
    :cond_1
    iget-object v6, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 120
    .local v5, item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    iget-object v6, v5, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    iget-object v6, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    const/4 v7, 0x0

    invoke-static {v6, v4, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 116
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .end local v5           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, f:Ljava/io/File;
    const/4 v3, 0x0

    .line 136
    .local v3, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :goto_2
    iget v6, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-lt v4, v6, :cond_4

    .line 150
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_3
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    move v6, v8

    .line 157
    goto :goto_0

    .line 137
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 138
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    .line 139
    const/4 v6, 0x0

    goto :goto_0

    .line 144
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :cond_4
    iget-object v6, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 145
    .restart local v5       #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    if-eqz v5, :cond_5

    .line 146
    invoke-virtual {v5, v3}, Lcom/infraware/filemanager/bookclip/BookClipItem;->Write(Ljava/io/FileOutputStream;)Z

    .line 142
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 151
    .end local v5           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    :catch_1
    move-exception v1

    .line 153
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method protected Init()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    .line 298
    return-void
.end method

.method public MoveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "srcPath"
    .parameter "destPath"

    .prologue
    const/4 v11, 0x1

    .line 160
    invoke-direct {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->ReadBookClip()V

    .line 162
    iget v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-nez v9, :cond_0

    move v9, v11

    .line 228
    :goto_0
    return v9

    .line 165
    :cond_0
    iget v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    new-array v8, v9, [Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 167
    .local v8, newItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;
    const/4 v0, 0x0

    .line 168
    .local v0, del_cnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-lt v4, v9, :cond_1

    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, mod_cnt:I
    const/4 v4, 0x0

    :goto_2
    iget v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-lt v4, v9, :cond_3

    .line 197
    if-nez v0, :cond_6

    if-nez v7, :cond_6

    .line 199
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    move v9, v11

    .line 200
    goto :goto_0

    .line 170
    .end local v7           #mod_cnt:I
    :cond_1
    iget-object v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 172
    .local v5, item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    iget-object v9, v5, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 175
    iget-object v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 168
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    .end local v5           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    .restart local v7       #mod_cnt:I
    :cond_3
    iget-object v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 184
    .restart local v5       #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    if-nez v5, :cond_5

    .line 180
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 187
    :cond_5
    iget-object v9, v5, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    .line 190
    invoke-virtual {v5}, Lcom/infraware/filemanager/bookclip/BookClipItem;->newCopy()Lcom/infraware/filemanager/bookclip/BookClipItem;

    move-result-object v6

    .line 191
    .local v6, itemMod:Lcom/infraware/filemanager/bookclip/BookClipItem;
    iput-object p2, v6, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    .line 192
    iget-object v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v9, v4, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 203
    .end local v5           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    .end local v6           #itemMod:Lcom/infraware/filemanager/bookclip/BookClipItem;
    :cond_6
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, f:Ljava/io/File;
    const/4 v3, 0x0

    .line 206
    .local v3, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :goto_4
    iget v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItemCount:I

    if-lt v4, v9, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    .line 222
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move v9, v11

    .line 228
    goto :goto_0

    .line 207
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 208
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->Init()V

    .line 209
    const/4 v9, 0x0

    goto :goto_0

    .line 214
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :cond_7
    iget-object v9, p0, Lcom/infraware/filemanager/bookclip/BookClipHelper;->mItems:[Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/bookclip/BookClipItem;

    .line 215
    .restart local v5       #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    if-eqz v5, :cond_8

    .line 216
    invoke-virtual {v5, v3}, Lcom/infraware/filemanager/bookclip/BookClipItem;->Write(Ljava/io/FileOutputStream;)Z

    .line 212
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 223
    .end local v5           #item:Lcom/infraware/filemanager/bookclip/BookClipItem;
    :catch_1
    move-exception v1

    .line 225
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

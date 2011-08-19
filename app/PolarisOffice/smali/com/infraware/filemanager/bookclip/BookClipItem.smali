.class public Lcom/infraware/filemanager/bookclip/BookClipItem;
.super Ljava/lang/Object;
.source "BookClipItem.java"


# static fields
.field static final header:Ljava/lang/String; = "Boratech_BookClip_V3.50"


# instance fields
.field clip_data:[B

.field clip_name:[B

.field file_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    .line 12
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_name:[B

    .line 13
    const/16 v0, 0xb

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_data:[B

    .line 6
    return-void
.end method


# virtual methods
.method public Set([B)Z
    .locals 7
    .parameter "buffer"

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x0

    .line 57
    array-length v3, p1

    const/16 v4, 0x523

    if-eq v3, v4, :cond_0

    move v3, v5

    .line 97
    :goto_0
    return v3

    .line 60
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .line 61
    .local v2, j:I
    const/4 v0, 0x0

    .line 62
    .local v0, head:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v6, :cond_1

    .line 72
    :goto_2
    const-string v3, "Boratech_BookClip_V3.50"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    .line 73
    goto :goto_0

    .line 64
    :cond_1
    aget-byte v3, p1, v2

    if-nez v3, :cond_2

    .line 66
    new-instance v0, Ljava/lang/String;

    .end local v0           #head:Ljava/lang/String;
    invoke-direct {v0, p1, v5, v1}, Ljava/lang/String;-><init>([BII)V

    .line 67
    .restart local v0       #head:Ljava/lang/String;
    goto :goto_2

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    :cond_3
    const/16 v2, 0x18

    .line 77
    const/4 v1, 0x0

    :goto_3
    const/16 v3, 0x400

    if-lt v1, v3, :cond_4

    .line 86
    :goto_4
    const/16 v2, 0x418

    .line 88
    const/4 v1, 0x0

    :goto_5
    const/16 v3, 0x100

    if-lt v1, v3, :cond_6

    .line 93
    const/4 v1, 0x0

    :goto_6
    const/16 v3, 0xb

    if-lt v1, v3, :cond_7

    .line 97
    const/4 v3, 0x1

    goto :goto_0

    .line 79
    :cond_4
    aget-byte v3, p1, v2

    if-nez v3, :cond_5

    .line 81
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, v6

    invoke-direct {v3, p1, v6, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    goto :goto_4

    .line 77
    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 90
    :cond_6
    iget-object v3, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_name:[B

    aget-byte v4, p1, v2

    aput-byte v4, v3, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 95
    :cond_7
    iget-object v3, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_data:[B

    aget-byte v4, p1, v2

    aput-byte v4, v3, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public Write(Ljava/io/FileOutputStream;)Z
    .locals 10
    .parameter "fOut"

    .prologue
    const/16 v9, 0x400

    const/16 v8, 0x18

    const/4 v7, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 19
    new-array v5, v9, [B

    .line 20
    .local v5, save_path:[B
    new-array v4, v8, [B

    .line 21
    .local v4, save_head:[B
    const-string v6, "Boratech_BookClip_V3.50"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 22
    .local v1, header_buf:[B
    iget-object v6, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 24
    .local v3, path_buf:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v9, :cond_1

    .line 32
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v8, :cond_3

    .line 42
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 43
    invoke-virtual {p1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 44
    iget-object v6, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_name:[B

    invoke-virtual {p1, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 45
    iget-object v6, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_data:[B

    invoke-virtual {p1, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1           #header_buf:[B
    .end local v2           #i:I
    .end local v3           #path_buf:[B
    .end local v4           #save_head:[B
    .end local v5           #save_path:[B
    :cond_0
    :goto_2
    return v7

    .line 26
    .restart local v1       #header_buf:[B
    .restart local v2       #i:I
    .restart local v3       #path_buf:[B
    .restart local v4       #save_head:[B
    .restart local v5       #save_path:[B
    :cond_1
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 27
    aget-byte v6, v3, v2

    aput-byte v6, v5, v2

    .line 24
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_2
    aput-byte v7, v5, v2

    goto :goto_3

    .line 34
    :cond_3
    array-length v6, v1

    if-ge v2, v6, :cond_4

    .line 35
    aget-byte v6, v1, v2

    aput-byte v6, v4, v2

    .line 32
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_4
    aput-byte v7, v4, v2

    goto :goto_4

    .line 47
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 49
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public newCopy()Lcom/infraware/filemanager/bookclip/BookClipItem;
    .locals 4

    .prologue
    .line 102
    new-instance v1, Lcom/infraware/filemanager/bookclip/BookClipItem;

    invoke-direct {v1}, Lcom/infraware/filemanager/bookclip/BookClipItem;-><init>()V

    .line 104
    .local v1, newi:Lcom/infraware/filemanager/bookclip/BookClipItem;
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/infraware/filemanager/bookclip/BookClipItem;->file_path:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 112
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 117
    return-object v1

    .line 109
    :cond_0
    iget-object v2, v1, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_name:[B

    iget-object v3, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_name:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, v1, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_data:[B

    iget-object v3, p0, Lcom/infraware/filemanager/bookclip/BookClipItem;->clip_data:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

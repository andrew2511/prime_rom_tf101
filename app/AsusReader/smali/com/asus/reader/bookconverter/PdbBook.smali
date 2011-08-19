.class public Lcom/asus/reader/bookconverter/PdbBook;
.super Ljava/lang/Object;
.source "PdbBook.java"


# instance fields
.field public app_info:[B

.field public backup_time:[B

.field public creation_time:[B

.field public creator:[B

.field public file_attributes:[B

.field public modification_number:[B

.field public modification_time:[B

.field public name:[B

.field public next_record_list:[B

.field public numRecords:I

.field public num_records:[B

.field public record_header:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public record_header_offset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sort_info:[B

.field public type:[B

.field public unique_id_seed:[B

.field public version:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->name:[B

    .line 9
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->file_attributes:[B

    .line 10
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->version:[B

    .line 11
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->creation_time:[B

    .line 12
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->modification_time:[B

    .line 13
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->backup_time:[B

    .line 14
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->modification_number:[B

    .line 15
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->app_info:[B

    .line 16
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->sort_info:[B

    .line 17
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->type:[B

    .line 18
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->creator:[B

    .line 19
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->unique_id_seed:[B

    .line 20
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->next_record_list:[B

    .line 21
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->num_records:[B

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->record_header:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/bookconverter/PdbBook;->record_header_offset:Ljava/util/List;

    .line 33
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 7
    .parameter "b"

    .prologue
    const/4 v6, 0x4

    .line 107
    array-length v5, p0

    if-ge v5, v6, :cond_1

    .line 109
    new-array v3, v6, [B

    .line 110
    .local v3, temp:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p0

    sub-int v5, v6, v5

    if-ge v0, v5, :cond_0

    .line 111
    const/4 v5, 0x0

    aput-byte v5, v3, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, j:I
    array-length v0, p0

    :goto_1
    if-ge v0, v6, :cond_2

    .line 114
    aget-byte v5, p0, v1

    aput-byte v5, v3, v0

    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #temp:[B
    :cond_1
    move-object v3, p0

    .line 121
    .restart local v3       #temp:[B
    :cond_2
    const/4 v4, 0x0

    .line 122
    .local v4, value:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v6, :cond_3

    .line 123
    const/4 v5, 0x3

    sub-int/2addr v5, v0

    mul-int/lit8 v2, v5, 0x8

    .line 124
    .local v2, shift:I
    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v2

    add-int/2addr v4, v5

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 126
    .end local v2           #shift:I
    :cond_3
    return v4
.end method


# virtual methods
.method public parseHeader([B)Z
    .locals 9
    .parameter "partHeadData"

    .prologue
    const/4 v8, 0x0

    .line 46
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->name:[B

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    const/16 v4, 0x20

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->file_attributes:[B

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    const/16 v4, 0x22

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->version:[B

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    const/16 v4, 0x24

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->creation_time:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    const/16 v4, 0x28

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->modification_time:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    const/16 v4, 0x2c

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->backup_time:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    const/16 v4, 0x30

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->modification_number:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    const/16 v4, 0x34

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->app_info:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    const/16 v4, 0x38

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->sort_info:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    const/16 v4, 0x3c

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->type:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    const/16 v4, 0x40

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->creator:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    const/16 v4, 0x44

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->unique_id_seed:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    const/16 v4, 0x48

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->next_record_list:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    const/16 v4, 0x4c

    iget-object v5, p0, Lcom/asus/reader/bookconverter/PdbBook;->num_records:[B

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v4, p0, Lcom/asus/reader/bookconverter/PdbBook;->num_records:[B

    invoke-static {v4}, Lcom/asus/reader/bookconverter/PdbBook;->byteArrayToInt([B)I

    move-result v4

    iput v4, p0, Lcom/asus/reader/bookconverter/PdbBook;->numRecords:I

    .line 78
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/asus/reader/bookconverter/PdbBook;->numRecords:I

    if-ge v1, v4, :cond_0

    .line 79
    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v3, v4, 0x4e

    .line 81
    .local v3, tempOffset:I
    const/4 v2, 0x0

    .line 82
    .local v2, temp:[B
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 83
    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v4, p0, Lcom/asus/reader/bookconverter/PdbBook;->record_header:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 89
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget-object v4, p0, Lcom/asus/reader/bookconverter/PdbBook;->record_header_offset:Ljava/util/List;

    invoke-static {v2}, Lcom/asus/reader/bookconverter/PdbBook;->byteArrayToInt([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1           #i:I
    .end local v2           #temp:[B
    .end local v3           #tempOffset:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    move v4, v8

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return v4

    .restart local v1       #i:I
    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.class public Lcom/mobipocket/common/library/reader/IndexDescriptor;
.super Ljava/lang/Object;
.source "IndexDescriptor.java"


# static fields
.field static final IDX_DESC_FOREIGN_KEY_TABLE:I = 0x2

.field static final IDX_DESC_STANDARD_FILTERED_TABLE:I = 0x1

.field static final IDX_DESC_STANDARD_TABLE:I


# instance fields
.field final pBookTitle:Ljava/lang/String;

.field final pDicLangIn:I

.field final pDicLangOut:I

.field final pFileIdentifier:Ljava/lang/String;

.field final pIndexName:Ljava/lang/String;

.field final pIndexType:I

.field final pKeyIndexName:Ljava/lang/String;

.field final pKeyItemName:Ljava/lang/String;

.field final pMasterRecIndex:I

.field final pPrimarySearchViewCaption:Ljava/lang/String;

.field final pSecondarySearchViewCaption:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pFileIdentifier:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pBookTitle:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexName:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/IndexDescriptor;->computeCaptionSpecialCaracters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pPrimarySearchViewCaption:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pSecondarySearchViewCaption:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pMasterRecIndex:I

    .line 86
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangIn:I

    .line 87
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangOut:I

    .line 88
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "fileIdentifier"
    .parameter "bookTitle"
    .parameter "masterRecIndex"
    .parameter "langIn"
    .parameter "langOut"
    .parameter "indexName"
    .parameter "keyIndexName"
    .parameter "keyFilter"
    .parameter "primarySearchCaption"
    .parameter "SecondarySearchViewCaption"
    .parameter "indexType"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pFileIdentifier:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pBookTitle:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexName:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p9}, Lcom/mobipocket/common/library/reader/IndexDescriptor;->computeCaptionSpecialCaracters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pPrimarySearchViewCaption:Ljava/lang/String;

    .line 63
    iput-object p10, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pSecondarySearchViewCaption:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pMasterRecIndex:I

    .line 65
    iput p4, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangIn:I

    .line 66
    iput p5, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangOut:I

    .line 67
    iput p11, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    .line 68
    return-void
.end method

.method private computeCaptionSpecialCaracters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "expression"

    .prologue
    const/4 v5, -0x1

    .line 138
    move-object v1, p1

    .line 139
    .local v1, retExp:Ljava/lang/String;
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    const/4 v0, 0x0

    .line 146
    .local v0, firstIndex:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%key"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 147
    if-eq v0, v5, :cond_1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%key"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_1
    if-ne v0, v5, :cond_0

    .line 158
    .end local v0           #firstIndex:I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getSearchBoxCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pPrimarySearchViewCaption:Ljava/lang/String;

    return-object v0
.end method

.method isForeignKeyIndex()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method saveState(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 98
    .local v0, dos:Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pFileIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pBookTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pPrimarySearchViewCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pSecondarySearchViewCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    iget v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pMasterRecIndex:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 106
    iget v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangIn:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 107
    iget v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangOut:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 108
    iget v1, p0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 109
    return-void
.end method

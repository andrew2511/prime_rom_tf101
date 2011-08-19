.class public Lcom/mobipocket/common/library/reader/IndexItem;
.super Ljava/lang/Object;
.source "IndexItem.java"


# static fields
.field public static final MATCH_CANONIZATION:I = 0x2

.field public static final MATCH_DESINFLECTION:I = 0x3

.field public static final MATCH_NOT_A_MATCH:I = 0x1


# instance fields
.field private final pBookPos:I

.field private final pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

.field private final pIndexItemTitle:Ljava/lang/String;

.field private final pMatchType:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexItemTitle:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pBookPos:I

    .line 79
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pMatchType:I

    .line 80
    new-instance v1, Lcom/mobipocket/common/library/reader/IndexDescriptor;

    invoke-direct {v1, p1}, Lcom/mobipocket/common/library/reader/IndexDescriptor;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    .line 81
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILcom/mobipocket/common/library/reader/IndexDescriptor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexItemTitle:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pBookPos:I

    .line 63
    iput p3, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pMatchType:I

    .line 64
    iput-object p4, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    .line 65
    return-void
.end method


# virtual methods
.method public getDicTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pBookTitle:Ljava/lang/String;

    return-object v0
.end method

.method getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pFileIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method getIndexDescriptor()Lcom/mobipocket/common/library/reader/IndexDescriptor;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    return-object v0
.end method

.method public getLanguageIn()B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangIn:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public getLanguageOut()B
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangOut:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public getMatchType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pMatchType:I

    return v0
.end method

.method getPos()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pBookPos:I

    return v0
.end method

.method public getSubLanguageIn()B
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangIn:I

    shr-int/lit8 v0, v0, 0xa

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public getSubLanguageOut()B
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangOut:I

    shr-int/lit8 v0, v0, 0xa

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 208
    .local v0, dos:Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexItemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 209
    iget v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pBookPos:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 210
    iget v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pMatchType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/IndexDescriptor;->saveState(Ljava/io/OutputStream;)V

    .line 212
    return-void
.end method

.method public willOpenAnotherIndex()Z
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/IndexDescriptor;->isForeignKeyIndex()Z

    move-result v0

    .line 169
    :cond_0
    return v0
.end method

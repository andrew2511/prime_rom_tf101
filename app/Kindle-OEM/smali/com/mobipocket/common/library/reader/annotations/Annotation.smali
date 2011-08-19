.class public Lcom/mobipocket/common/library/reader/annotations/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/annotations/Annotation$NotAnAnnotationException;
    }
.end annotation


# static fields
.field public static final BKMK:I = 0x424b4d4b

.field private static final BKSIZE:I = 0x3c

.field private static final NONE:I = -0x1


# instance fields
.field private final begin:I

.field private final effect:I

.field private final end:I

.field private final page:I

.field private final pos:I

.field private rawDataRecordID:I

.field private secondaryBKRecordID:I

.field private stackRecordID:I

.field private subjectRecordID:I

.field private textRecordID:I

.field private final type:I

.field private unknowInformation:[B

.field private urlRecordID:I

.field private urlencRecordID:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .parameter "_begin"
    .parameter "_end"
    .parameter "pageBeginPos"
    .parameter "pageNumber"
    .parameter "_effect"
    .parameter "_type"

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->subjectRecordID:I

    .line 37
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->textRecordID:I

    .line 38
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->stackRecordID:I

    .line 39
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->rawDataRecordID:I

    .line 40
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->secondaryBKRecordID:I

    .line 41
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlRecordID:I

    .line 42
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlencRecordID:I

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->unknowInformation:[B

    .line 55
    iput p1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->begin:I

    .line 56
    iput p2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->end:I

    .line 57
    iput p3, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->pos:I

    .line 58
    iput p4, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->page:I

    .line 59
    iput p5, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->effect:I

    .line 60
    iput p6, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->type:I

    .line 62
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/annotations/Annotation$NotAnAnnotationException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->subjectRecordID:I

    .line 37
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->textRecordID:I

    .line 38
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->stackRecordID:I

    .line 39
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->rawDataRecordID:I

    .line 40
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->secondaryBKRecordID:I

    .line 41
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlRecordID:I

    .line 42
    iput v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlencRecordID:I

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->unknowInformation:[B

    .line 68
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 69
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    const v2, 0x424b4d4b

    if-eq v1, v2, :cond_0

    .line 70
    new-instance v0, Lcom/mobipocket/common/library/reader/annotations/Annotation$NotAnAnnotationException;

    const-string v1, "Not an annotation"

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/annotations/Annotation$NotAnAnnotationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    move-exception v0

    new-instance v0, Lcom/mobipocket/common/library/reader/annotations/Annotation$NotAnAnnotationException;

    const-string v1, "Annotation corrupted"

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/annotations/Annotation$NotAnAnnotationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    .line 73
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->begin:I

    .line 76
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->end:I

    .line 77
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->pos:I

    .line 78
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->page:I

    .line 79
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->effect:I

    .line 80
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->type:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    :try_start_2
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->subjectRecordID:I

    .line 87
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->textRecordID:I

    .line 88
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->stackRecordID:I

    .line 89
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->rawDataRecordID:I

    .line 90
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->secondaryBKRecordID:I

    .line 91
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlRecordID:I

    .line 92
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlencRecordID:I

    .line 93
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->unknowInformation:[B
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    :goto_0
    return-void

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getBegin()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->begin:I

    return v0
.end method

.method public getBeginPagePos()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->pos:I

    return v0
.end method

.method public getEffect()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->effect:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->end:I

    return v0
.end method

.method public getIDOfRawDataRecord()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->rawDataRecordID:I

    return v0
.end method

.method public getIDOfSecondaryBKRecord()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->secondaryBKRecordID:I

    return v0
.end method

.method public getIDOfStackRecord()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->stackRecordID:I

    return v0
.end method

.method public getIDOfSubjectRecord()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->subjectRecordID:I

    return v0
.end method

.method public getIDOfTextRecord()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->textRecordID:I

    return v0
.end method

.method public getIDOfUrlRecord()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlRecordID:I

    return v0
.end method

.method public getIDOfUrlencRecord()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlencRecordID:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->page:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->type:I

    return v0
.end method

.method public saveAnnotationStack(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 124
    iput p1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->stackRecordID:I

    .line 125
    return-void
.end method

.method public saveAnnotationSubject(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 106
    iput p1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->subjectRecordID:I

    .line 107
    return-void
.end method

.method public saveAnnotationText(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 115
    iput p1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->textRecordID:I

    .line 116
    return-void
.end method

.method public serialize()[B
    .locals 4

    .prologue
    .line 195
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 196
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 198
    const v2, 0x424b4d4b

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 199
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->unknowInformation:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x34

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 200
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->begin:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 201
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->end:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 202
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->pos:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 203
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->page:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 204
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->effect:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 205
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->type:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 206
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->subjectRecordID:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 207
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->textRecordID:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 208
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->stackRecordID:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 209
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->rawDataRecordID:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 210
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->secondaryBKRecordID:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlRecordID:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 212
    iget v2, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->urlencRecordID:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 213
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 214
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->unknowInformation:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/annotations/Annotation;->unknowInformation:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

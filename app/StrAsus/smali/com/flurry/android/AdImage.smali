.class public final Lcom/flurry/android/AdImage;
.super Lcom/flurry/android/aa;
.source "SourceFile"


# instance fields
.field a:J

.field b:I

.field c:I

.field d:[B

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/flurry/android/aa;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/flurry/android/aa;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/android/AdImage;->load(Ljava/io/DataInput;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/flurry/android/AdImage;->c:I

    return v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/flurry/android/AdImage;->a:J

    return-wide v0
.end method

.method public final getImageData()[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/AdImage;->d:[B

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/AdImage;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/flurry/android/AdImage;->b:I

    return v0
.end method

.method public final load(Ljava/io/DataInput;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/AdImage;->a:J

    .line 49
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdImage;->b:I

    .line 50
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdImage;->c:I

    .line 51
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/AdImage;->e:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/android/AdImage;->d:[B

    .line 55
    iget-object v0, p0, Lcom/flurry/android/AdImage;->d:[B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 56
    return-void
.end method

.method public final persist(Ljava/io/DataOutput;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/flurry/android/AdImage;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 62
    iget v0, p0, Lcom/flurry/android/AdImage;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/flurry/android/AdImage;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/flurry/android/AdImage;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/flurry/android/AdImage;->d:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/flurry/android/AdImage;->d:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 68
    return-void
.end method

.class final Lcom/flurry/android/o;
.super Lcom/flurry/android/aa;
.source "SourceFile"


# instance fields
.field a:J

.field b:J

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:Ljava/lang/Long;

.field g:[B

.field h:Lcom/flurry/android/AdImage;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/flurry/android/aa;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/android/aa;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/flurry/android/o;->b(Ljava/io/DataInput;)V

    .line 22
    return-void
.end method

.method private b(Ljava/io/DataInput;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/o;->a:J

    .line 67
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/o;->b:J

    .line 68
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/o;->d:Ljava/lang/String;

    .line 69
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/o;->c:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/o;->e:J

    .line 71
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/o;->f:Ljava/lang/Long;

    .line 73
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 74
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/android/o;->g:[B

    .line 75
    iget-object v0, p0, Lcom/flurry/android/o;->g:[B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataInput;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/flurry/android/o;->b(Ljava/io/DataInput;)V

    .line 29
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/flurry/android/AdImage;

    invoke-direct {v0}, Lcom/flurry/android/AdImage;-><init>()V

    .line 33
    invoke-virtual {v0, p1}, Lcom/flurry/android/AdImage;->load(Ljava/io/DataInput;)V

    .line 35
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/flurry/android/o;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

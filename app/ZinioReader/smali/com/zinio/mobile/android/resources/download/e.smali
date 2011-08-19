.class public Lcom/zinio/mobile/android/resources/download/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/resources/download/j;


# static fields
.field private static f:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/zinio/mobile/android/resources/download/i;

    invoke-direct {v0}, Lcom/zinio/mobile/android/resources/download/i;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/resources/download/e;->f:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/zinio/mobile/android/resources/download/e;->a:I

    .line 14
    iput v0, p0, Lcom/zinio/mobile/android/resources/download/e;->b:I

    .line 15
    iput-object v1, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    .line 32
    iput p1, p0, Lcom/zinio/mobile/android/resources/download/e;->a:I

    .line 33
    iput-object p2, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zinio/mobile/android/resources/download/e;->e:J

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/zinio/mobile/android/resources/download/e;->a:I

    .line 14
    iput v0, p0, Lcom/zinio/mobile/android/resources/download/e;->b:I

    .line 15
    iput-object v1, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/resources/download/e;->a:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zinio/mobile/android/resources/download/e;->e:J

    .line 117
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/zinio/mobile/android/resources/download/e;->a:I

    .line 44
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/zinio/mobile/android/resources/download/e;->e:J

    .line 69
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/zinio/mobile/android/resources/download/e;->a:I

    return v0
.end method

.method public b_()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource downloaded at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    instance-of v0, p1, Lcom/zinio/mobile/android/resources/download/e;

    if-nez v0, :cond_0

    move v0, v2

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    check-cast p1, Lcom/zinio/mobile/android/resources/download/e;

    .line 77
    iget-object v0, p1, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    iget v0, p0, Lcom/zinio/mobile/android/resources/download/e;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-wide v0, p0, Lcom/zinio/mobile/android/resources/download/e;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    return-void
.end method

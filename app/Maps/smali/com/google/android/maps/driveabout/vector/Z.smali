.class public Lcom/google/android/maps/driveabout/vector/Z;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:I


# instance fields
.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/Z;->a:[I

    sget-object v0, Lcom/google/android/maps/driveabout/vector/Z;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    sput v0, Lcom/google/android/maps/driveabout/vector/Z;->b:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x8ft 0x2t 0x0t 0x0t
        0xbdt 0x5t 0x0t 0x0t
        0x26t 0xat 0x0t 0x0t
        0xbet 0xft 0x0t 0x0t
        0x78t 0x16t 0x0t 0x0t
        0x43t 0x1et 0x0t 0x0t
        0xdt 0x27t 0x0t 0x0t
        0xbft 0x30t 0x0t 0x0t
        0x41t 0x3bt 0x0t 0x0t
        0x7at 0x46t 0x0t 0x0t
        0x4ft 0x52t 0x0t 0x0t
        0xa0t 0x5et 0x0t 0x0t
        0x52t 0x6bt 0x0t 0x0t
        0x43t 0x78t 0x0t 0x0t
        0x55t 0x85t 0x0t 0x0t
        0x66t 0x92t 0x0t 0x0t
        0x58t 0x9ft 0x0t 0x0t
        0x9t 0xact 0x0t 0x0t
        0x5bt 0xb8t 0x0t 0x0t
        0x2ft 0xc4t 0x0t 0x0t
        0x68t 0xcft 0x0t 0x0t
        0xebt 0xd9t 0x0t 0x0t
        0x9dt 0xe3t 0x0t 0x0t
        0x66t 0xect 0x0t 0x0t
        0x32t 0xf4t 0x0t 0x0t
        0xect 0xfat 0x0t 0x0t
        0x84t 0x0t 0x1t 0x0t
        0xect 0x4t 0x1t 0x0t
        0x1at 0x8t 0x1t 0x0t
        0x6t 0xat 0x1t 0x0t
        0xaat 0xat 0x1t 0x0t
        0x6t 0xat 0x1t 0x0t
        0x1at 0x8t 0x1t 0x0t
        0xect 0x4t 0x1t 0x0t
        0x84t 0x0t 0x1t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;)I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->c:J

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/Z;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-ltz v0, :cond_1

    sget v1, Lcom/google/android/maps/driveabout/vector/Z;->b:I

    if-lt v0, v1, :cond_2

    :cond_1
    const/high16 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/Z;->a:[I

    shr-int/lit8 v0, v0, 0x3

    aget v0, v1, v0

    goto :goto_0
.end method

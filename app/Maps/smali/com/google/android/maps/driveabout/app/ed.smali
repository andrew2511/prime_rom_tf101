.class public Lcom/google/android/maps/driveabout/app/ed;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b001c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->a:Ljava/lang/String;

    const v0, 0x7f0b001e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->b:Ljava/lang/String;

    const v0, 0x7f0b0020

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->c:Ljava/lang/String;

    const v0, 0x7f0b0022

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->d:Ljava/lang/String;

    const v0, 0x7f0b0024

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->e:Ljava/lang/String;

    const v0, 0x7f0b001d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->f:Ljava/lang/String;

    const v0, 0x7f0b001f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->g:Ljava/lang/String;

    const v0, 0x7f0b0021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->h:Ljava/lang/String;

    const v0, 0x7f0b0023

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->i:Ljava/lang/String;

    const v0, 0x7f0b0025

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->j:Ljava/lang/String;

    const v0, 0x7f0b0026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->k:Ljava/lang/String;

    const v0, 0x7f0b0027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imperial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ed;->l:I

    :goto_0
    return-void

    :cond_0
    const-string v1, "imperial_yards"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ed;->l:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ed;->l:I

    goto :goto_0
.end method

.method private static a(II)I
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method private static a(JI)I
    .locals 5

    const/16 v4, 0x8

    shl-long v0, p0, v4

    shl-int/lit8 v2, p2, 0x7

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    div-long/2addr v0, v2

    shr-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method private a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    int-to-long v0, p1

    const-wide/32 v2, 0x8028

    mul-long/2addr v0, v2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    const-wide/32 v2, 0x4c9960

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    long-to-int v2, v0

    div-int/lit16 v2, v2, 0x2710

    mul-int/lit16 v3, v2, 0x2710

    int-to-long v3, v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1388

    cmp-long v0, v0, v3

    if-ltz v0, :cond_a

    add-int/lit8 v0, v2, 0x1

    :goto_0
    if-eqz p3, :cond_0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ed;->a(II)I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    const-wide/32 v2, 0x4c9960

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    long-to-int v2, v0

    div-int/lit16 v2, v2, 0x2710

    mul-int/lit16 v3, v2, 0x2710

    int-to-long v3, v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1388

    cmp-long v0, v0, v3

    if-ltz v0, :cond_9

    add-int/lit8 v0, v2, 0x1

    :goto_2
    if-eqz p3, :cond_2

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ed;->a(II)I

    move-result v0

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-wide/32 v2, 0x2fd6180

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/ed;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x509100

    invoke-static {v0, v1, v5}, Lcom/google/android/maps/driveabout/app/ed;->a(JI)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p5, v2}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-wide/32 v2, 0x325aa00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ed;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const-wide/32 v2, 0x325aa00

    div-long v2, v0, v2

    const-wide/32 v4, 0x325aa00

    rem-long/2addr v0, v4

    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_7

    const-wide/32 v4, 0x192d500

    cmp-long v4, v0, v4

    if-ltz v4, :cond_7

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    move-wide v7, v2

    move-wide v2, v0

    move-wide v0, v7

    :cond_6
    :goto_3
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const v4, 0x509100

    invoke-static {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/ed;->a(JI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0xa

    cmp-long v4, v0, v4

    if-nez v4, :cond_6

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    move-wide v7, v2

    move-wide v2, v0

    move-wide v0, v7

    goto :goto_3

    :cond_8
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ed;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p5, v4}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method private a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x3cf

    if-ge p1, v0, :cond_1

    if-eqz p2, :cond_6

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/ed;->a(II)I

    move-result v0

    :goto_1
    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p3, v1}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_2

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ed;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p4, v0}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v2, v6, :cond_3

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    move v0, v4

    :goto_3
    if-lt v1, v6, :cond_4

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p4, v0}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    int-to-long v0, v0

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Lcom/google/android/maps/driveabout/app/ed;->a(JI)I

    move-result v0

    if-ne v0, v6, :cond_5

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    move v0, v4

    goto :goto_3

    :cond_4
    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ed;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p4, v2}, Lcom/google/android/maps/driveabout/app/ed;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    move v0, p1

    goto/16 :goto_1
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, -0x1

    const/16 v5, 0x7b

    const-string v0, "${I18N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_1
    if-eq v1, v6, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :goto_2
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_1

    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v6, :cond_2

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    if-nez v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_4

    array-length v3, p1

    if-ge v2, v3, :cond_4

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" param("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/ed;->a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/ed;->a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IIZI)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    if-gez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_7

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ed;->l:I

    :goto_1
    if-ne v0, v2, :cond_2

    if-ne p4, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ed;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/ed;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ed;->i:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/ed;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-ne p4, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ed;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/ed;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ed;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/ed;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    if-ne p4, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ed;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/ed;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ed;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ed;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/ed;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, ""

    goto :goto_0

    :cond_7
    move v0, p2

    goto :goto_1
.end method

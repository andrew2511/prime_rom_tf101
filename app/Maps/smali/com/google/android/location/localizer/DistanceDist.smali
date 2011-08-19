.class public Lcom/google/android/location/localizer/DistanceDist;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:[F


# direct methods
.method constructor <init>(III[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/location/localizer/DistanceDist;->a:I

    iput p3, p0, Lcom/google/android/location/localizer/DistanceDist;->c:I

    iput p2, p0, Lcom/google/android/location/localizer/DistanceDist;->b:I

    iput-object p4, p0, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    return-void
.end method

.method static a(Law/e;)Lcom/google/android/location/localizer/DistanceDist;
    .locals 8

    const/4 v7, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    invoke-virtual {p0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v2

    invoke-virtual {p0, v7}, Law/e;->i(I)I

    move-result v3

    new-array v4, v3, [F

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {p0, v7, v5}, Law/e;->c(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/location/localizer/DistanceDist;

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/google/android/location/localizer/DistanceDist;-><init>(III[F)V

    return-object v3
.end method

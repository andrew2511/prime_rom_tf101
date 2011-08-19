.class public Lcom/google/googlenav/aW;
.super Ljava/lang/Object;


# static fields
.field private static a:[I

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/googlenav/aW;->a:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/googlenav/aW;->b:[I

    return-void

    :array_0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x23t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILaw/e;Z)V
    .locals 6

    const/16 v5, 0x28

    const/4 v4, 0x4

    const/16 v3, 0x29

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    return-void

    :sswitch_0
    const/16 v0, 0x1d

    invoke-virtual {p1, v0, v1}, Law/e;->b(IZ)V

    invoke-virtual {p1, v5, v1}, Law/e;->b(IZ)V

    move v0, v2

    :goto_0
    sget-object v1, Lcom/google/googlenav/aW;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/googlenav/aW;->a:[I

    aget v1, v1, v0

    invoke-virtual {p1, v3, v1}, Law/e;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v5, v1}, Law/e;->b(IZ)V

    move v0, v2

    :goto_1
    sget-object v1, Lcom/google/googlenav/aW;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/googlenav/aW;->a:[I

    aget v1, v1, v0

    invoke-virtual {p1, v3, v1}, Law/e;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_2
    sget-object v1, Lcom/google/googlenav/aW;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/googlenav/aW;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v3, v1}, Law/e;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Law/e;->b(IZ)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Law/e;->b(IZ)V

    if-eqz p2, :cond_2

    move v0, v2

    :goto_3
    sget-object v1, Lcom/google/googlenav/aW;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/google/googlenav/aW;->a:[I

    aget v1, v1, v0

    invoke-virtual {p1, v4, v1}, Law/e;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v0, v2

    :goto_4
    sget-object v1, Lcom/google/googlenav/aW;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/googlenav/aW;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v4, v1}, Law/e;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2e -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

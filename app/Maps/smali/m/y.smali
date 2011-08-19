.class public Lm/y;
.super Ljava/lang/Object;

# interfaces
.implements Lm/i;


# static fields
.field public static final a:[J

.field public static final b:[J

.field public static final c:[J

.field public static final d:[J

.field public static final e:[J


# instance fields
.field private final f:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lm/y;->a:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lm/y;->b:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_2

    sput-object v0, Lm/y;->c:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lm/y;->d:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    sput-object v0, Lm/y;->e:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lm/y;->f:Landroid/os/Vibrator;

    return-void
.end method

.method public static a(ILF/y;)[J
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v0, Lm/y;->d:[J

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, LF/y;->b()I

    move-result v0

    invoke-static {v0}, LF/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lm/y;->c:[J

    goto :goto_0

    :pswitch_0
    sget-object v0, Lm/y;->a:[J

    goto :goto_0

    :pswitch_1
    sget-object v0, Lm/y;->b:[J

    goto :goto_0

    :cond_1
    sget-object v0, Lm/y;->e:[J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lm/w;)Lm/p;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lm/w;->c()I

    move-result v0

    invoke-virtual {p1}, Lm/w;->d()LF/w;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lm/w;->d()LF/w;

    move-result-object v1

    invoke-virtual {v1}, LF/w;->e()LF/y;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lm/y;->a(ILF/y;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lm/V;

    iget-object v2, p0, Lm/y;->f:Landroid/os/Vibrator;

    invoke-direct {v1, v2, v0}, Lm/V;-><init>(Landroid/os/Vibrator;[J)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

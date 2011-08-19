.class public Lcom/google/googlenav/ui/android/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/android/w;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/android/w;

    return-void
.end method

.method public static a(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xc

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    :sswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(IILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {p1}, Lcom/google/googlenav/ui/android/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    new-instance v1, Lax/c;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/y;->a(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, p1, v2, v3}, Lax/c;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->b(Lax/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/android/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    new-instance v1, Lax/c;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/y;->a(I)I

    move-result v2

    invoke-direct {v1, p1, v3, v2, v3}, Lax/c;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->b(Lax/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/android/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    new-instance v1, Lax/c;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/y;->a(I)I

    move-result v2

    invoke-direct {v1, p1, p1, v2, v3}, Lax/c;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lax/c;)V

    move v0, v3

    goto :goto_0
.end method

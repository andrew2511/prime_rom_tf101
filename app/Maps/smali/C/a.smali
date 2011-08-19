.class public LC/a;
.super LC/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, LC/g;-><init>(J)V

    iput-object p3, p0, LC/a;->a:Ljava/lang/String;

    packed-switch p4, :pswitch_data_0

    const/4 v0, -0x1

    iput v0, p0, LC/a;->b:I

    :goto_0
    return-void

    :pswitch_0
    iput p4, p0, LC/a;->b:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "NOT_SUPPORTED"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "AVAILABLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "OUT_OF_SERVICE"

    goto :goto_0

    :pswitch_2
    const-string v0, "TEMPORARILY_UNAVAILABLE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/io/Writer;)V
    .locals 4

    const-string v0, "<%s %s=\'%s\' %s=\'%s\' %s=\'%s\' />\n"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "provider-status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, LC/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "provider"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, LC/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, LC/a;->b:I

    invoke-static {v3}, LC/a;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

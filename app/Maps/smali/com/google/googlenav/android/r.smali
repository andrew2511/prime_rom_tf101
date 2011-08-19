.class Lcom/google/googlenav/android/r;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/Q;

.field private final b:Lcom/google/googlenav/p;

.field private final c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>(Lcom/google/googlenav/android/Q;Ljava/lang/String;Lcom/google/googlenav/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/r;->a:Lcom/google/googlenav/android/Q;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/android/r;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/android/r;->b:Lcom/google/googlenav/p;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/android/Q;Ljava/lang/String;Lcom/google/googlenav/p;Lcom/google/googlenav/android/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/android/r;-><init>(Lcom/google/googlenav/android/Q;Ljava/lang/String;Lcom/google/googlenav/p;)V

    return-void
.end method

.method private a()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/r;->a:Lcom/google/googlenav/android/Q;

    invoke-static {v0}, Lcom/google/googlenav/android/Q;->a(Lcom/google/googlenav/android/Q;)Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private a(J)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/android/r;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/google/googlenav/android/r;->b:Lcom/google/googlenav/p;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lcom/google/googlenav/p;->a(JZ)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/android/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/android/r;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/android/r;->d:J

    invoke-direct {p0}, Lcom/google/googlenav/android/r;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-wide v2, p0, Lcom/google/googlenav/android/r;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x61a8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/android/r;->a(J)V

    :cond_0
    iput-wide v0, p0, Lcom/google/googlenav/android/r;->e:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/google/googlenav/android/r;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/googlenav/android/r;->d:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/android/r;->a(J)V

    goto :goto_0
.end method

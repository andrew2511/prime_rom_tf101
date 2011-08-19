.class final Lcom/google/googlenav/bp;
.super Lcom/google/googlenav/bx;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bx;-><init>(Lcom/google/googlenav/bq;)V

    return-void
.end method


# virtual methods
.method public a(Law/e;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/h;

    new-instance v1, Lcom/google/googlenav/c;

    invoke-direct {v1, p1}, Lcom/google/googlenav/c;-><init>(Law/e;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/c;)V

    invoke-static {v0}, Lcom/google/googlenav/RatingReminderAlarmManager;->a(Lcom/google/googlenav/h;)V

    return-void
.end method

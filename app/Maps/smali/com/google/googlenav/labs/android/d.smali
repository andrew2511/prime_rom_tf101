.class Lcom/google/googlenav/labs/android/d;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/labs/android/PhoneCallService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/labs/android/PhoneCallService;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/labs/android/d;->b:Lcom/google/googlenav/labs/android/PhoneCallService;

    iput p2, p0, Lcom/google/googlenav/labs/android/d;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PhoneCallLab"

    const-string v1, "Removing notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/googlenav/labs/android/d;->b:Lcom/google/googlenav/labs/android/PhoneCallService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/labs/android/PhoneCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/google/googlenav/labs/android/d;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/google/googlenav/labs/android/d;->b:Lcom/google/googlenav/labs/android/PhoneCallService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/labs/android/PhoneCallService;->b(Lcom/google/googlenav/labs/android/PhoneCallService;Ljava/lang/String;)V

    return-void
.end method

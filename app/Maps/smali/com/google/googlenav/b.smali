.class Lcom/google/googlenav/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bN;


# instance fields
.field private a:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/googlenav/b;->a:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public a(ILandroid/app/Notification;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/b;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

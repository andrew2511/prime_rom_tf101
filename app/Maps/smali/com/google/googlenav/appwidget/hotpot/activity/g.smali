.class Lcom/google/googlenav/appwidget/hotpot/activity/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/g;->a:Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/g;->a:Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->finish()V

    return-void
.end method

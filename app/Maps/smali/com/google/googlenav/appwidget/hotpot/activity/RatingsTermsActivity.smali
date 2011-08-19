.class public Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Landroid/content/DialogInterface$OnCancelListener;

.field private e:Lcom/google/googlenav/aK;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b:Z

    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->c:Z

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/activity/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/h;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->d:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/activity/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/k;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->e:Lcom/google/googlenav/aK;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "terms-reply"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0x55

    const-string v1, "os"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "s=w"

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iput-object v5, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030104

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/activity/i;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/i;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)V

    invoke-static {v0, p1, v1, p0}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/view/View;Ljava/lang/String;Lcom/google/googlenav/ui/view/android/E;Landroid/content/Context;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->c:Z

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "terms-reply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v1, "terms-accepted"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "user-identity"

    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->showDialog(I)V

    new-instance v0, Lo/aL;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->e:Lcom/google/googlenav/aK;

    const/4 v5, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lo/aL;-><init>(ZIILo/aE;Lo/aA;)V

    invoke-virtual {v0, p1}, Lo/aL;->a(Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->showDialog(I)V

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/activity/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/j;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lab/c;

    invoke-direct {v2, v0}, Lab/c;-><init>(Lab/b;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x321

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->c:Z

    if-nez v0, :cond_0

    const-string v0, "w"

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b:Z

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

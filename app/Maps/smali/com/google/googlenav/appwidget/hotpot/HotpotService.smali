.class public Lcom/google/googlenav/appwidget/hotpot/HotpotService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/googlenav/appwidget/hotpot/b;
.implements Lcom/google/googlenav/appwidget/hotpot/i;


# instance fields
.field private volatile a:Landroid/os/Looper;

.field private volatile b:Lcom/google/googlenav/appwidget/hotpot/y;

.field private final c:Landroid/os/IBinder;

.field private d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

.field private e:Lcom/google/googlenav/appwidget/hotpot/v;

.field private f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

.field private g:Landroid/os/PowerManager$WakeLock;

.field private h:Landroid/app/AlarmManager;

.field private i:Landroid/os/PowerManager;

.field private j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

.field private k:Lcom/google/googlenav/appwidget/hotpot/z;

.field private l:Landroid/app/PendingIntent;

.field private m:Lcom/google/googlenav/appwidget/hotpot/j;

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/f;-><init>(Lcom/google/googlenav/appwidget/hotpot/HotpotService;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->c:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->o:I

    return-void
.end method

.method private a(Landroid/content/Intent;I)I
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/appwidget/hotpot/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m:Lcom/google/googlenav/appwidget/hotpot/j;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/appwidget/hotpot/j;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p0, v5}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    move v0, v7

    goto :goto_0

    :cond_3
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p0, v5}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_4
    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p0, p2}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_2

    const-string v0, "hotpot_sign_in_result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "sign-in-success"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->l:Landroid/app/PendingIntent;

    const-string v0, "hotpot_widget_install"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Z)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f()V

    goto :goto_1

    :cond_7
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m:Lcom/google/googlenav/appwidget/hotpot/j;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/j;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m:Lcom/google/googlenav/appwidget/hotpot/j;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/j;)V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->e()V

    goto :goto_1

    :cond_8
    const-string v0, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m:Lcom/google/googlenav/appwidget/hotpot/j;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/j;->a(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_9
    const-string v0, "hotpot_update_polling_intervals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k()V

    goto :goto_1

    :cond_a
    const-string v0, "com.google.googlenav.android.LAUNCH_RESOLVE_PLACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j()V

    goto/16 :goto_1

    :cond_b
    const-string v0, "com.google.googlenav.appwidget.hotpot.USER_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v4, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    iget-object v5, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    iget-object v6, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m:Lcom/google/googlenav/appwidget/hotpot/j;

    move-object v1, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/HotpotService;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/j;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "hotpot_terms_result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "terms-accepted"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "user-identity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "hotpot_rated_placemark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/z;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/HotpotService;)Lcom/google/googlenav/appwidget/hotpot/v;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    const/16 v0, 0x55

    const-string v1, "wd"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lac/g;->a(ZLjava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/googlenav/appwidget/hotpot/d;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->f()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->c()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m:Lcom/google/googlenav/appwidget/hotpot/j;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/j;->a()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->h:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->b()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->h:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/z;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->n:Z

    invoke-virtual {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->stopSelf(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->n:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->n:Z

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(Z)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->l:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "hotpot_sign_in_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "hotpot_widget_install"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->l:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->l:Landroid/app/PendingIntent;

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "placemark_cid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "placemark_is_new"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->h()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(I)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-static {v0}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "placemark"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v2}, Lcom/google/googlenav/c;->a(Ljava/io/DataInput;)Lcom/google/googlenav/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    iget-object v3, v0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(Ljava/lang/String;Law/e;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(I)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->p()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object p0

    check-cast p0, Lz/b;

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lz/b;->a(Ljava/util/Locale;)V

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->f()V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->c()V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/googlenav/appwidget/hotpot/d;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/z;->c()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/z;->d()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/googlenav/android/S;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/google/googlenav/android/S;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    const/16 v1, 0x1c5

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/16 v0, 0x55

    const-string v1, "we"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->c(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->l()V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/google/googlenav/android/S;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    const/16 v1, 0x1c6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/google/googlenav/android/S;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    const/16 v1, 0x1d3

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->g()Lcom/google/googlenav/appwidget/hotpot/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, v0, Lcom/google/googlenav/appwidget/hotpot/widget/d;->b:I

    iget v2, v0, Lcom/google/googlenav/appwidget/hotpot/widget/d;->c:I

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/widget/d;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->b(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, v0, Lcom/google/googlenav/appwidget/hotpot/widget/d;->c:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->h()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lcom/google/googlenav/appwidget/hotpot/widget/d;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V

    goto :goto_0
.end method

.method private b(IILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "additional_data_listing_url"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "additional_data_star_rating"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "additional_data_original_star_rating"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/hotpot/HotpotService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->h()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "hotpot_terms_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ln/a;->a(Z)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/login/b;->a(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->a()V

    goto :goto_0
.end method

.method private e()V
    .locals 9

    const-wide/32 v7, 0x36ee80

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->b()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->h:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->d()Lcom/google/googlenav/appwidget/hotpot/widget/e;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/appwidget/hotpot/widget/e;->a:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v3

    invoke-virtual {v1}, Lab/d;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x75300

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    const-wide/32 v3, 0xea60

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->h:Landroid/app/AlarmManager;

    const/4 v5, 0x1

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v6

    add-long v2, v6, v3

    invoke-virtual {v1, v5, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    const-wide/32 v5, 0xdbba0

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    const-wide/32 v3, 0x1d4c0

    goto :goto_1

    :cond_3
    cmp-long v1, v3, v7

    if-gez v1, :cond_4

    const-wide/32 v3, 0x493e0

    goto :goto_1

    :cond_4
    move-wide v3, v7

    goto :goto_1
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->l:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->f()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->l:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->o:I

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private k()V
    .locals 2

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 7

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->h:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private m()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "hotpot_update_polling_intervals"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->o:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->o:I

    iget v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->o:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "additional_data_listing_index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/z;->e()V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/widget/d;

    invoke-direct {v1, p3, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/widget/d;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lcom/google/googlenav/appwidget/hotpot/widget/d;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->h()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(I)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/az;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->c()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->b(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized a(ILjava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->b:Lcom/google/googlenav/appwidget/hotpot/y;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/y;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->o:I

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->b:Lcom/google/googlenav/appwidget/hotpot/y;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/y;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/google/googlenav/appwidget/hotpot/widget/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Hotpot-Controller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a:Landroid/os/Looper;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/y;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/appwidget/hotpot/y;-><init>(Lcom/google/googlenav/appwidget/hotpot/HotpotService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->b:Lcom/google/googlenav/appwidget/hotpot/y;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->i:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->i:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "Rate Places"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->h:Landroid/app/AlarmManager;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/widget/f;

    const-string v1, "hotpot-prefs"

    invoke-virtual {p0, v1, v3}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/f;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/v;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/googlenav/appwidget/hotpot/v;-><init>(Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->m:Lcom/google/googlenav/appwidget/hotpot/j;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/z;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->j:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->d:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v5, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->f:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/hotpot/z;-><init>(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/i;Lcom/google/googlenav/appwidget/hotpot/persistence/i;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    invoke-virtual {v0}, LT/c;->d()V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->k:Lcom/google/googlenav/appwidget/hotpot/z;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/z;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/Intent;I)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Landroid/content/Intent;I)I

    move-result v0

    return v0
.end method

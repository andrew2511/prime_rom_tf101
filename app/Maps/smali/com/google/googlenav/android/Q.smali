.class public Lcom/google/googlenav/android/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/ae;
.implements Lcom/google/googlenav/g;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/google/googlenav/android/w;

.field private final c:Lcom/google/googlenav/android/ae;

.field private d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://mobile\\.opentable\\.com/opentable/\\?restId=(\\d*)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/Q;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/Q;->d:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    iput-object p0, p0, Lcom/google/googlenav/android/Q;->c:Lcom/google/googlenav/android/ae;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/Q;)Lcom/google/googlenav/android/w;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    return-object v0
.end method

.method private a(Ljava/util/regex/Matcher;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reserve://opentable.com/%s?refId=6703"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.opentable.action.RESERVE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Li/x;->h(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V

    move v0, v5

    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public static b(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.maps.IntentCatcher.CATEGORY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method private e(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.im.category.GTALK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "im:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/M;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V

    return-void

    :cond_0
    const-string v1, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/bu;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bu;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v2}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-static {v0, p1}, Lcom/google/googlenav/android/ab;->a(Lcom/google/googlenav/android/w;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mailto"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/p;Z)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "tel"

    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/google/googlenav/android/r;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/googlenav/android/r;-><init>(Lcom/google/googlenav/android/Q;Ljava/lang/String;Lcom/google/googlenav/p;Lcom/google/googlenav/android/b;)V

    invoke-static {v1}, Lcom/google/googlenav/android/r;->a(Lcom/google/googlenav/android/r;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    if-eqz p3, :cond_2

    const-string v2, "android.intent.action.CALL"

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/google/googlenav/android/Q;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->c:Lcom/google/googlenav/android/ae;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ae;->a(Landroid/content/Intent;)V

    sget-object v0, Lcom/google/googlenav/labs/android/h;->a:Lcom/google/googlenav/labs/android/h;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/googlenav/labs/android/h;->a:Lcom/google/googlenav/labs/android/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/labs/android/h;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "android.intent.action.DIAL"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->c:Lcom/google/googlenav/android/ae;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/ae;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    const-string v1, "searchUiSource"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "searchNearBy"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/maps/MapsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->c:Lcom/google/googlenav/android/ae;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ae;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/Q;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "full_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "postal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "postal_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->c:Lcom/google/googlenav/android/ae;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ae;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/Q;->d:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/Q;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->e()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SearchManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/SearchManager;->stopSearch()V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapsActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/Q;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->c:Lcom/google/googlenav/android/ae;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ae;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/google/googlenav/android/Q;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/Q;->a(Ljava/util/regex/Matcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/google/googlenav/android/Q;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "google.streetview:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    const-string v4, "instrumentation_entrance_time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/googlenav/android/Q;->c:Lcom/google/googlenav/android/ae;

    invoke-interface {v2, v1}, Lcom/google/googlenav/android/ae;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lac/d;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "google.navigation:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v2}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v2

    const-string v3, "Using Navigation requires a build that includes DriveAbout."

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v2}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->e()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/ac;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->c:Lcom/google/googlenav/android/ae;

    const-class v1, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/ae;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/w;->a(Lcom/google/android/maps/q;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lz/b;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    return-void
.end method

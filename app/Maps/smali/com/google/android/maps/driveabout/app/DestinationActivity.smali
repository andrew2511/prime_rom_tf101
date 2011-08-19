.class public Lcom/google/android/maps/driveabout/app/DestinationActivity;
.super Landroid/app/ListActivity;


# static fields
.field private static final a:[I

.field private static final b:[Lcom/google/android/maps/driveabout/app/eH;


# instance fields
.field private A:Lcom/google/android/maps/driveabout/app/ee;

.field private B:Z

.field private C:Z

.field private D:Z

.field private c:[Lcom/google/android/maps/driveabout/app/eH;

.field private d:Lcom/google/android/maps/driveabout/app/eH;

.field private e:[LF/K;

.field private f:Landroid/os/Handler;

.field private g:Lcom/google/android/maps/driveabout/app/ax;

.field private h:Landroid/location/LocationManager;

.field private i:Landroid/location/LocationListener;

.field private j:Laa/E;

.field private k:Lcom/google/android/maps/driveabout/app/bo;

.field private l:Lcom/google/android/maps/driveabout/app/bk;

.field private final m:Landroid/content/BroadcastReceiver;

.field private n:Lcom/google/android/maps/driveabout/app/cB;

.field private final o:Lcom/google/android/maps/driveabout/app/bc;

.field private final p:Ljava/lang/Runnable;

.field private final q:Lad/f;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/google/android/maps/driveabout/app/D;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/view/View;

.field private y:LF/A;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [I

    const v1, 0x10100a0

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[I

    new-array v0, v6, [Lcom/google/android/maps/driveabout/app/eH;

    new-instance v1, Lcom/google/android/maps/driveabout/app/eH;

    const v2, 0x7f0200ed

    const v3, 0x7f0b00bb

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/eH;-><init>(IIII)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/android/maps/driveabout/app/eH;

    const v2, 0x7f0200f0

    const v3, 0x7f0b00bc

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/app/eH;-><init>(IIII)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/eH;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/eH;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dO;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bc;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bc;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lcom/google/android/maps/driveabout/app/bc;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dP;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dP;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dM;

    const-string v1, "DestinationActivityIdleHandler"

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/dM;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Lad/f;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/aQ;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/aQ;)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/location/Location;)J
    .locals 4

    if-nez p0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Laa/E;)Laa/E;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Laa/E;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/eH;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TravelMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TravelMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sget-object v1, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    array-length v2, v1

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/eH;->a()I

    move-result v5

    if-ne v5, v0, :cond_1

    move-object v0, v4

    :goto_2
    return-object v0

    :cond_0
    const-string v0, "PickerTravelMode"

    invoke-static {p0, v0, v6}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    aget-object v0, v0, v6

    goto :goto_2
.end method

.method private a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->onSearchRequested()Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b00ae
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private a(LF/u;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "PickerTravelMode"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/eH;->a()I

    move-result v1

    invoke-static {p0, v0, v1}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "D"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "TravelMode"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/eH;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string v1, "Target"

    const-string v2, "Contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_1
    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/bb;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/app/bb;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/app/bb;->a(LF/u;)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/eH;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/bb;->a(I)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[LF/K;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/bb;->a([LF/K;)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/app/bb;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v0

    const-string v2, "v"

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/bb;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bb;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    const-string v1, "Target"

    const-string v2, "StarredItem"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;LF/u;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(LF/u;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/eH;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/eH;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;[LF/K;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a([LF/K;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/eH;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    invoke-static {p0}, Las/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    const v1, 0x7f0f0090

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/eH;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/eH;->a()I

    move-result v0

    invoke-static {v0}, LF/c;->b(I)[LF/K;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a([LF/K;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e()V

    return-void
.end method

.method private a(Lcom/google/googlenav/ac;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Laa/E;

    invoke-virtual {v0}, Laa/E;->m()Lf/h;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v0}, Lcom/google/android/maps/driveabout/app/eH;->a(Lcom/google/googlenav/ac;Lf/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    sget-object v4, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    aget-object v4, v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/app/eH;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/eH;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Contact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00b0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "StarredItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00b1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_0

    :cond_2
    const-string v0, "Speak"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cC;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b00af

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/cB;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "Search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00ae

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, LF/u;

    invoke-direct {v0, p1, v1, v1, v1}, LF/u;-><init>(Ljava/lang/String;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(LF/u;I)V

    return-void
.end method

.method private a([LF/K;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[LF/K;

    if-eqz p1, :cond_1

    array-length v0, p1

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, LF/K;->c()I

    move-result v2

    if-ne v2, v4, :cond_0

    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->A:Lcom/google/android/maps/driveabout/app/ee;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/ee;->b(Z)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->B:Z

    return p1
.end method

.method private static b(Lcom/google/android/maps/driveabout/app/aQ;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aQ;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Target"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Target"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bD;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/bD;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/bA;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/bA;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bo;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->C:Z

    return p1
.end method

.method private b(Lcom/google/googlenav/ac;)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    sget-object v1, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/eH;->a(Lcom/google/android/maps/driveabout/app/eH;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/ac;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b()[Lcom/google/android/maps/driveabout/app/eH;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/eH;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->D:Z

    return p1
.end method

.method static synthetic c()[I
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[I

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.suggest.android.SuggestProvider.INIT_SUGGEST_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[LF/K;

    if-eqz v0, :cond_1

    invoke-static {}, LF/c;->a()LF/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[LF/K;

    invoke-virtual {v0, v1}, LF/c;->b([LF/K;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->A:Lcom/google/android/maps/driveabout/app/ee;

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/ee;->a(IZ)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->A:Lcom/google/android/maps/driveabout/app/ee;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ee;->a(IZ)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cC;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->a(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/do;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Landroid/location/LocationListener;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o()Laa/E;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Laa/E;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Laa/E;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p()V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h()V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/q;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->z:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    if-nez v0, :cond_0

    const-string v0, "Show Disclaimer"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Lad/f;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .locals 6

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://maps.google.com/?myl=saddr&dirflg=d&daddr="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/googlenav/android/ac;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/maps/driveabout/app/bj;->k()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "PickerTravelMode"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/eH;->a()I

    move-result v2

    invoke-static {p0, v1, v2}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/eH;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bj;->a(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Laa/E;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Laa/E;

    return-object v0
.end method

.method private k()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/maps/driveabout/app/bp;->a(Landroid/app/Activity;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic l(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p()V

    return-void
.end method

.method private m()V
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cB;->c(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/cB;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic m(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i()V

    return-void
.end method

.method static synthetic n(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/bo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    return-object v0
.end method

.method private n()V
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cB;->b(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/cB;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private o()Laa/E;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v1, Laa/E;

    invoke-direct {v1, v0}, Laa/E;-><init>(Landroid/location/Location;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :goto_3
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v1

    const-wide/32 v3, 0xdbba00

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    new-instance v1, Laa/E;

    invoke-direct {v1, v0}, Laa/E;-><init>(Landroid/location/Location;)V

    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_3

    :cond_2
    move-object v0, v6

    goto :goto_2

    :cond_3
    move-object v1, v6

    goto :goto_1

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method private p()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/cB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Laa/E;

    invoke-virtual {v1}, Laa/E;->l()LG/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cB;->a(LG/y;)V

    return-void
.end method

.method private q()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->h()Lcom/google/googlenav/ac;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/googlenav/ac;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/eH;

    array-length v1, v1

    if-eqz v1, :cond_2

    const-string v0, "e"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->b()V

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/eH;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/eH;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/eH;

    array-length v0, v0

    if-eq v0, v2, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->A:Lcom/google/android/maps/driveabout/app/ee;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/ee;->a(Z)V

    :goto_1
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/googlenav/ac;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/googlenav/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s()V

    goto :goto_1
.end method

.method private r()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    const v1, 0x7f0b0003

    const v2, 0x7f0b0004

    const v3, 0x7f0b0044

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/app/bE;

    invoke-direct {v5, p0}, Lcom/google/android/maps/driveabout/app/bE;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bo;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private s()V
    .locals 7

    new-instance v5, Lcom/google/android/maps/driveabout/app/bF;

    invoke-direct {v5, p0}, Lcom/google/android/maps/driveabout/app/bF;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    new-instance v6, Lcom/google/android/maps/driveabout/app/bC;

    invoke-direct {v6, p0}, Lcom/google/android/maps/driveabout/app/bC;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    const v1, 0x7f0b0048

    const v2, 0x7f0b00a9

    const v3, 0x7f0b006a

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bo;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bB;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bB;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/by;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/by;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/bo;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Lcom/google/android/maps/driveabout/app/D;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/D;

    const v1, 0x7f0f0091

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/bN;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/eH;

    invoke-direct {v2, p0, v3}, Lcom/google/android/maps/driveabout/app/bN;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/eH;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/D;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Lcom/google/android/maps/driveabout/app/D;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Lcom/google/android/maps/driveabout/app/D;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/D;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Lcom/google/android/maps/driveabout/app/D;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bz;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bz;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/D;->a(Lcom/google/android/maps/driveabout/app/aB;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Lcom/google/android/maps/driveabout/app/D;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/D;->show()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[LF/K;

    new-instance v2, Lcom/google/android/maps/driveabout/app/bG;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/bG;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bo;->a([LF/K;Lcom/google/android/maps/driveabout/app/dw;)V

    return-void
.end method

.method public handleContactsClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bk;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/bk;->a()V

    return-void
.end method

.method public handleSpeakDestinationClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bk;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/bk;->a()V

    return-void
.end method

.method public handleStarredItemsClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bk;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/bk;->a()V

    return-void
.end method

.method public handleTypeDestinationClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->onSearchRequested()Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bk;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/bk;->a()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dU;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dU;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-static {p0, p2, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/bp;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Las/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setContentView(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bc;->a(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/cA;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/cA;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bk;

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setDefaultKeyMode(I)V

    invoke-static {v6}, Lcom/google/android/maps/driveabout/app/aN;->a(Z)V

    invoke-static {p0}, Las/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setContentView(I)V

    :goto_1
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bc;->a:[Ljava/lang/String;

    const-string v1, "DriveAbout"

    const v2, 0x7f060003

    new-instance v3, Lcom/google/googlenav/android/q;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/android/q;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bc;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILac/y;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/maps/driveabout/app/ax;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ax;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ax;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bo;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dN;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dN;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1, v5}, Lcom/google/android/maps/driveabout/app/bo;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-static {p0}, Las/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ax;

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/cB;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ax;)Lcom/google/android/maps/driveabout/app/cB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/cB;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2

    new-instance v0, Lcom/google/android/maps/driveabout/app/cY;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/cY;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->A:Lcom/google/android/maps/driveabout/app/ee;

    :goto_2
    new-instance v0, Lcom/google/android/maps/driveabout/app/dR;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dR;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->y:LF/A;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->y:LF/A;

    invoke-static {v0}, LF/c;->a(LF/A;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/ds;

    invoke-direct {v1, p0, v5}, Lcom/google/android/maps/driveabout/app/ds;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/eH;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/eH;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Speak"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cC;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0b00af

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/cB;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.googlenav.suggest.android.SuggestProvider.SUGGEST_PROVIDER_CREATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/d;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/d;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bk;

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setContentView(I)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/maps/driveabout/app/cl;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/cl;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->A:Lcom/google/android/maps/driveabout/app/ee;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ax;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cC;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/cB;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ax;Z)Lcom/google/android/maps/driveabout/app/cB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/cB;

    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/dS;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dS;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0090

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->z:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dT;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dT;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0094

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dQ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dQ;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0093

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Landroid/view/View;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dC;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/dC;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->A:Lcom/google/android/maps/driveabout/app/ee;

    goto/16 :goto_2

    :cond_4
    const-string v1, "Show Disclaimer"

    invoke-static {p0, v1, v6}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Lad/f;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-static {p0}, Las/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ax;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ax;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ax;

    :cond_0
    invoke-static {p0}, Las/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->y:LF/A;

    invoke-static {v0}, LF/c;->b(LF/A;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->a()V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bc;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Z

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bc;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/cB;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/cB;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/eH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/eH;

    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/eH;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k()V

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a()V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0385
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->c()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Lad/f;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v1, 0x7f0f0385

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/cJ;

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const v0, 0x7f0f0387

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->B:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->C:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->C:Z

    if-nez v1, :cond_2

    const v1, 0x7f02008f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->D:Z

    if-eqz v1, :cond_3

    const v1, 0x7f020091

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    const v1, 0x7f020090

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->b()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h()V

    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/cB;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

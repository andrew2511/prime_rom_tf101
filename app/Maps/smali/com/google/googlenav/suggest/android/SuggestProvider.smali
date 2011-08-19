.class public Lcom/google/googlenav/suggest/android/SuggestProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static volatile d:Z


# instance fields
.field private b:Lcom/google/googlenav/suggest/android/a;

.field private c:I

.field private final e:Landroid/content/BroadcastReceiver;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.android.maps.SuggestionProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/suggest/android/SuggestProvider;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/suggest/android/SuggestProvider;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/google/googlenav/suggest/android/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/k;-><init>(Lcom/google/googlenav/suggest/android/SuggestProvider;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->e:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->f:Z

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/suggest/android/SuggestProvider;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/SuggestProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    new-instance v1, LJ/g;

    invoke-direct {v1}, LJ/g;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LJ/h;->a(LJ/m;I)V

    new-instance v1, LJ/b;

    invoke-direct {v1}, LJ/b;-><init>()V

    invoke-virtual {v0, v1}, LJ/h;->a(LJ/m;)V

    new-instance v1, LJ/d;

    invoke-direct {v1}, LJ/d;-><init>()V

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x3e8

    sput-wide v2, LJ/d;->a:J

    :cond_0
    invoke-virtual {v0, v1}, LJ/h;->a(LJ/m;)V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->d()Lv/t;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/h;->j()V

    invoke-static {v2, v2, v0, v2}, LJ/h;->a(Lf/Y;LH/f;Lv/t;LaU/a;)V

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->b()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Lv/t;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/login/b;->a(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;

    :cond_0
    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lv/A;->a(Lh/eY;)Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->c()Lv/t;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/j;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lv/t;->R_()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->c()Lv/t;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.googlenav.suggest.android.SuggestProvider.INIT_SUGGEST_PROVIDER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->f:Z

    invoke-static {v4, v4, v4, v4}, LJ/h;->a(Lf/Y;LH/f;Lv/t;LaU/a;)V

    new-instance v0, Lcom/google/googlenav/suggest/android/a;

    invoke-direct {v0}, Lcom/google/googlenav/suggest/android/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/suggest/android/f;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/suggest/android/f;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, LJ/h;->a(LJ/m;I)V

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {v0}, LJ/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LJ/i;->a(Landroid/content/Context;)V

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-static {}, LJ/i;->f()LJ/i;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, LJ/h;->a(LJ/m;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.suggest.android.SuggestProvider.SUGGEST_PROVIDER_CREATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput v5, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->c:I

    array-length v1, p4

    if-le v1, v2, :cond_6

    aget-object v0, p4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->c:I

    new-array v0, v3, [I

    aput v3, v0, v5

    move-object v1, v0

    :goto_0
    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {v0, v3}, LJ/h;->c(I)LJ/m;

    move-result-object v0

    check-cast v0, LJ/d;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->c:I

    invoke-virtual {v0, v2}, LJ/d;->a(I)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-nez v0, :cond_4

    array-length v0, p4

    if-le v0, v3, :cond_1

    const-string v0, "return_immediately"

    aget-object v2, p4, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    aget-object v2, p4, v5

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/a;->a(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    aget-object v2, p4, v5

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/a;->a(Ljava/lang/String;[I)V

    monitor-enter p0

    move v0, v5

    :goto_2
    int-to-long v1, v0

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    :try_start_0
    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v1

    invoke-virtual {v1}, LJ/h;->h()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/google/googlenav/suggest/android/SuggestProvider;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/a;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-boolean v5, Lcom/google/googlenav/suggest/android/SuggestProvider;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0xc8

    :try_start_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "SuggestProvider"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    aget-object v2, p4, v5

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/a;->a(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/a;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v2

    invoke-virtual {v2}, LJ/h;->h()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/a;

    goto :goto_1

    :cond_5
    move v2, v5

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

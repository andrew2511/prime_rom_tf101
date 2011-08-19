.class public Lcom/google/googlenav/suggest/android/a;
.super Lcom/google/googlenav/provider/d;

# interfaces
.implements LJ/j;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# instance fields
.field private volatile c:LJ/a;

.field private d:Landroid/os/Bundle;

.field private e:LJ/a;

.field private f:Z

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_query"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_extra_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/suggest/android/a;->a:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_query"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_extra_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/suggest/android/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/provider/d;-><init>()V

    new-instance v0, Lcom/google/googlenav/suggest/android/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/g;-><init>(Lcom/google/googlenav/suggest/android/a;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/a;->g:Ljava/lang/Runnable;

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {v0, p0}, LJ/h;->a(LJ/j;)V

    return-void
.end method

.method private a(LJ/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/a;->c:LJ/a;

    return-void
.end method


# virtual methods
.method public a(I)LJ/o;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->c:LJ/a;

    invoke-virtual {v0, p1}, LJ/a;->a(I)LJ/o;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(LJ/a;Z)V
    .locals 1

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/a;->f:Z

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/a;->e:LJ/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/a;->onChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {v0, p1}, LJ/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LJ/h;->a(Ljava/lang/String;[I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/suggest/android/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/google/googlenav/suggest/android/a;->b:[Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->c:LJ/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->c:LJ/a;

    invoke-virtual {v0}, LJ/a;->c()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->d:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/a;->d:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLong(I)J
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/googlenav/suggest/android/a;->mPos:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getString(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/suggest/android/a;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/googlenav/suggest/android/a;->mPos:I

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/a;->c:LJ/a;

    invoke-virtual {v1}, LJ/a;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/googlenav/suggest/android/a;->mPos:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/a;->a(I)LJ/o;

    move-result-object v0

    invoke-virtual {v0}, LJ/o;->g()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    packed-switch p1, :pswitch_data_0

    :cond_0
    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, LJ/o;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, LJ/o;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, LJ/o;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, LJ/o;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    if-ne v1, v3, :cond_1

    const-string v0, "android.intent.action.VIEW"

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :pswitch_5
    if-ne v1, v3, :cond_2

    const-string v0, "google.star:"

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, LJ/o;->j()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public requery()Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->e:LJ/a;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/a;->c:LJ/a;

    invoke-virtual {v0, v1}, LJ/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/a;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/googlenav/suggest/android/a;->f:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->e:LJ/a;

    invoke-direct {p0, v0}, Lcom/google/googlenav/suggest/android/a;->a(LJ/a;)V

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/a;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    iget-boolean v2, p0, Lcom/google/googlenav/suggest/android/a;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/google/googlenav/provider/d;->requery()Z

    move-result v0

    goto :goto_0
.end method

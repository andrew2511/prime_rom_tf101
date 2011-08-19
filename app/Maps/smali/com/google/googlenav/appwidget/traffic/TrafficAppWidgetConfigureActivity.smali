.class public Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/google/googlenav/suggest/android/SuggestView;

.field private c:Landroid/widget/Button;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/google/googlenav/appwidget/traffic/d;

.field private g:Lcom/google/googlenav/appwidget/traffic/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    return-void
.end method

.method private a()V
    .locals 2

    const v0, 0x7f0f035a

    const/16 v1, 0x42a

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a(II)V

    const v0, 0x7f0f035c

    const/16 v1, 0x1ab

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a(II)V

    const v0, 0x7f0f035b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->f:Lcom/google/googlenav/appwidget/traffic/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->f:Lcom/google/googlenav/appwidget/traffic/d;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->f:Lcom/google/googlenav/appwidget/traffic/d;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->f:Lcom/google/googlenav/appwidget/traffic/d;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->f:Lcom/google/googlenav/appwidget/traffic/d;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/traffic/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0f0138

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->c:Landroid/widget/Button;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/traffic/b;-><init>(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->c:Landroid/widget/Button;

    const/16 v1, 0x42b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->c:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/appwidget/traffic/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/traffic/c;-><init>(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method private declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

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

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->g:Lcom/google/googlenav/appwidget/traffic/l;

    iget v3, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/appwidget/traffic/l;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->f:Lcom/google/googlenav/appwidget/traffic/d;

    if-nez v0, :cond_0

    const-string v0, "wa"

    :goto_0
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    invoke-static {v2, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    invoke-static {v1}, Lcom/google/googlenav/appwidget/traffic/e;->c(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "we"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->c()V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "id"

    iget v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    invoke-static {v1, v2, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->g:Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/traffic/l;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, "c"

    invoke-static {v2, v1, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/googlenav/ui/android/S;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/S;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/android/S;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(Lcom/google/googlenav/ui/aV;)V

    const v0, 0x7f030141

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a(I)V

    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "errorMsg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    new-instance v0, Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/l;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->g:Lcom/google/googlenav/appwidget/traffic/l;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->g:Lcom/google/googlenav/appwidget/traffic/l;

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->d:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/traffic/l;->b(I)Lcom/google/googlenav/appwidget/traffic/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->f:Lcom/google/googlenav/appwidget/traffic/d;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method

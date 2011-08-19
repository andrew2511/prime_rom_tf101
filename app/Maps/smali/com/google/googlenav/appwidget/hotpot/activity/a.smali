.class public Lcom/google/googlenav/appwidget/hotpot/activity/a;
.super Landroid/widget/CursorAdapter;


# instance fields
.field private final a:Lcom/google/googlenav/appwidget/hotpot/persistence/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-direct {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->c(Landroid/database/Cursor;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v1

    const v0, 0x7f0f01b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0f01b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/activity/a;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v0
.end method

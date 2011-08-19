.class Lcom/google/googlenav/suggest/android/h;
.super Landroid/widget/CursorAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;Lcom/google/googlenav/suggest/android/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/suggest/android/h;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/h;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->c(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->d(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x1020015

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v1}, LR/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/suggest/android/h;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/h;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/h;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/googlenav/suggest/android/h;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/h;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/h;->a()V

    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->e(Lcom/google/googlenav/suggest/android/SuggestView;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1, v4}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;Z)Z

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v3, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v3}, Lcom/google/googlenav/suggest/android/SuggestView;->c(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->f(Lcom/google/googlenav/suggest/android/SuggestView;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v5

    const-string v0, ""

    aput-object v0, v1, v4

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v3}, Lcom/google/googlenav/suggest/android/SuggestView;->f(Lcom/google/googlenav/suggest/android/SuggestView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    move-object v4, v1

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/suggest/android/SuggestProvider;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/h;->a()V

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v5

    move-object v4, v1

    goto :goto_1
.end method

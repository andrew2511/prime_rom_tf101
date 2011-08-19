.class Lcom/google/googlenav/ui/android/i;
.super Lcom/google/googlenav/ui/android/u;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/u;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/i;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v3, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/D;

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-static {v1, v0, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/D;Z)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;)I

    move-result v1

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->e()I

    move-result v3

    add-int/2addr v3, v1

    move v4, v9

    :goto_0
    invoke-virtual {v0}, Lcom/google/googlenav/D;->i()I

    move-result v1

    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Lcom/google/googlenav/D;->a(I)Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->c()Lcom/google/googlenav/aZ;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v5, v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/K;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v8}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/googlenav/K;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x3

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v8, 0x3f80

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a:I

    invoke-virtual {v2, v9, v0, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v2
.end method

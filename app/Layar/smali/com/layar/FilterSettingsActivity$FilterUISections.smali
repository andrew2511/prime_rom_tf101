.class public Lcom/layar/FilterSettingsActivity$FilterUISections;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FilterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterUISections"
.end annotation


# static fields
.field public static final LAYER_SECTION:I = 0x1

.field public static final RANGE_SECTION:I


# instance fields
.field public final sections:[Lcom/layar/FilterSettingsActivity$FilterUISection;

.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/layar/FilterSettingsActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$FilterUISections;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layar/FilterSettingsActivity$FilterUISection;

    const/4 v1, 0x0

    .line 355
    new-instance v2, Lcom/layar/FilterSettingsActivity$FilterUISection;

    const v3, 0x7f0901ad

    invoke-virtual {p1, v3}, Lcom/layar/FilterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/layar/FilterSettingsActivity$FilterUISection;-><init>(Lcom/layar/FilterSettingsActivity;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 356
    new-instance v2, Lcom/layar/FilterSettingsActivity$FilterUISection;

    const v3, 0x7f0901af

    invoke-virtual {p1, v3}, Lcom/layar/FilterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/layar/FilterSettingsActivity$FilterUISection;-><init>(Lcom/layar/FilterSettingsActivity;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity$FilterUISections;->sections:[Lcom/layar/FilterSettingsActivity$FilterUISection;

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/layar/FilterSettingsActivity$FilterUIControl;I)V
    .locals 1
    .parameter "control"
    .parameter "section"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$FilterUISections;->sections:[Lcom/layar/FilterSettingsActivity$FilterUISection;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity$FilterUISection;->controls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public buildViews(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 6
    .parameter "viewRoot"
    .parameter "inflater"

    .prologue
    .line 360
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$FilterUISections;->sections:[Lcom/layar/FilterSettingsActivity$FilterUISection;

    array-length v3, v4

    .line 361
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 370
    return-void

    .line 362
    :cond_0
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$FilterUISections;->sections:[Lcom/layar/FilterSettingsActivity$FilterUISection;

    aget-object v2, v4, v1

    .line 363
    .local v2, section:Lcom/layar/FilterSettingsActivity$FilterUISection;
    invoke-virtual {v2}, Lcom/layar/FilterSettingsActivity$FilterUISection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_2
    iget-object v4, v2, Lcom/layar/FilterSettingsActivity$FilterUISection;->title:Ljava/lang/String;

    invoke-static {p1, p2, v4}, Lcom/layar/FilterSettingsActivity;->access$7(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;)V

    .line 366
    iget-object v4, v2, Lcom/layar/FilterSettingsActivity$FilterUISection;->controls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/FilterSettingsActivity$FilterUIControl;

    .line 367
    .local v0, control:Lcom/layar/FilterSettingsActivity$FilterUIControl;
    invoke-interface {v0}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->getUI()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setTitle(ILjava/lang/String;)V
    .locals 1
    .parameter "section"
    .parameter "title"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$FilterUISections;->sections:[Lcom/layar/FilterSettingsActivity$FilterUISection;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/layar/FilterSettingsActivity$FilterUISection;->title:Ljava/lang/String;

    .line 374
    return-void
.end method

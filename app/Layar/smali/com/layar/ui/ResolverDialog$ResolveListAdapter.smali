.class final Lcom/layar/ui/ResolverDialog$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/ResolverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/layar/ui/ResolverDialog;


# direct methods
.method public constructor <init>(Lcom/layar/ui/ResolverDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->this$0:Lcom/layar/ui/ResolverDialog;

    .line 110
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 111
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 112
    iget-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    const-string v5, "layout_inflater"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 117
    .local v2, pm:Landroid/content/pm/PackageManager;
    const v5, 0x10040

    .line 116
    invoke-virtual {v2, p3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    .line 118
    iget-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    .local v0, N:I
    const/4 v5, 0x1

    if-le v0, v5, :cond_0

    .line 123
    iget-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 124
    .local v3, r0:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 140
    iget-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v6, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v6, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #r0:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void

    .line 125
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v3       #r0:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 132
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v5, v6, :cond_2

    .line 133
    iget-boolean v5, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v6, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v5, v6, :cond_3

    .line 134
    :cond_2
    :goto_1
    if-lt v1, v0, :cond_4

    .line 124
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_4
    iget-object v5, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .parameter "view"
    .parameter "info"

    .prologue
    .line 184
    const v4, 0x7f0700b5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 185
    .local v3, text:Landroid/widget/TextView;
    const v4, 0x7f070024

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 187
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->this$0:Lcom/layar/ui/ResolverDialog;

    invoke-virtual {v4}, Lcom/layar/ui/ResolverDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 189
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 190
    .local v1, label:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 191
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    if-nez p2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 175
    const v2, 0x7f030049

    const/4 v3, 0x0

    .line 174
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, view:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V

    .line 180
    return-object v0

    .line 177
    .end local v0           #view:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 5
    .parameter "position"

    .prologue
    .line 146
    iget-object v2, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 147
    const/4 v2, 0x0

    .line 156
    .end local p0
    :goto_0
    return-object v2

    .line 150
    .restart local p0
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 151
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 154
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    .line 155
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v2, v1

    .line 156
    goto :goto_0
.end method

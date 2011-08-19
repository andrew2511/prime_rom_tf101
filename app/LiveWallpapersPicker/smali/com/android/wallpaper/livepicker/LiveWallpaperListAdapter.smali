.class public Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveWallpaperListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$1;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mWallpapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->generatePlaceholderViews(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    .line 71
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;

    invoke-direct {v1, p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    return-object v0
.end method

.method private generatePlaceholderViews(I)Ljava/util/List;
    .locals 3
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 77
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)V

    .line 78
    .local v1, info:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v1           #info:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 100
    if-nez p2, :cond_3

    .line 101
    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;

    invoke-direct {v1, p0, v6}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$1;)V

    .line 104
    .local v1, holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    const v3, 0x7f090002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 105
    const v3, 0x7f090003

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 106
    const v3, 0x7f090001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    :goto_0
    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    .line 113
    .local v2, wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    iget-object v5, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 120
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_1
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_2

    .line 127
    :try_start_0
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    iget-object v5, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/app/WallpaperInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_2
    :goto_1
    return-object p2

    .line 109
    .end local v1           #holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    .end local v2           #wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    goto :goto_0

    .line 130
    .restart local v2       #wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 131
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.class public Lcom/google/android/finsky/layout/AppSecurityPermissions;
.super Landroid/widget/FrameLayout;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/widget/TextView;

.field private mOnlyShowDangerous:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mOnlyShowDangerous:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/AppSecurityPermissions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mOnlyShowDangerous:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHeaderView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public bindInfo(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    const/4 v5, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 61
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    const v2, 0x7f090080

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 63
    .local v0, listView:Landroid/widget/ListView;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mOnlyShowDangerous:Z

    .line 69
    new-instance v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Landroid/content/Context;Ljava/util/List;)V

    .line 73
    .local v1, permissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040037

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHeaderView:Landroid/widget/TextView;

    .line 77
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHeaderView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0073

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 86
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->hasMorePermissions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040030

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFooterView:Landroid/view/View;

    .line 89
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFooterView:Landroid/view/View;

    new-instance v3, Lcom/google/android/finsky/layout/AppSecurityPermissions$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$1;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Landroid/widget/ListView;Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHeaderView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0072

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

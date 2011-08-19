.class final Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;
.super Ljava/lang/Object;
.source "RecentAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field private activityDescription:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;

.field private descriptionView:Landroid/widget/TextView;

.field private iconView:Landroid/widget/ImageView;

.field private labelView:Landroid/widget/TextView;

.field private thumbnailView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->iconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->labelView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->labelView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->descriptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->descriptionView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->activityDescription:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->activityDescription:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;

    return-object p1
.end method

.class final Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActvityDescriptionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 119
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 120
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$000(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$000(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030012

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 138
    new-instance v2, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;-><init>()V

    .line 139
    .local v2, holder:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;
    const v4, 0x7f0b0064

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$102(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 140
    const v4, 0x7f0b0065

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$202(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 141
    const v4, 0x7f0b0067

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$302(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 142
    const v4, 0x7f0b000f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$402(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 143
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$000(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, p1

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .line 151
    .local v1, activityId:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$000(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;

    .line 152
    .local v0, activityDescription:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    .line 153
    .local v3, thumb:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$100(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$500(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$600(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$200(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$300(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$400(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->description:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$100(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 158
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$702(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;

    .line 160
    return-object p2

    .line 145
    .end local v0           #activityDescription:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
    .end local v1           #activityId:I
    .end local v2           #holder:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;
    .end local v3           #thumb:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;

    .restart local v2       #holder:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;
    goto :goto_0
.end method

.class public Lcom/asus/reader/VibeActivity$CategoryAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "VibeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/VibeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$CategoryAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 1246
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1253
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1262
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1257
    const/4 v0, 0x0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1299
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 1287
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/VibeAgent;->getCategoryCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 1291
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1275
    if-eqz p3, :cond_0

    .line 1276
    move-object v0, p3

    check-cast v0, Lcom/asus/reader/ui/CategoryItem;

    move-object v1, v0

    .line 1280
    .local v1, i:Lcom/asus/reader/ui/CategoryItem;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/asus/reader/ui/CategoryItem;->setPosition(I)V

    .line 1281
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$CategoryAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$100(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/asus/reader/ui/CategoryListView;->setState(Lcom/asus/reader/ui/CategoryItem;)V

    .line 1282
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/asus/reader/vibe2/VibeAgent;->getCategoryName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$CategoryAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$2200(Lcom/asus/reader/VibeActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/ui/CategoryItem;->bindVibeGroup(Ljava/lang/String;Z)V

    .line 1283
    return-object v1

    .line 1278
    .end local v1           #i:Lcom/asus/reader/ui/CategoryItem;
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$CategoryAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v2, v2, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/CategoryItem;

    .restart local v1       #i:Lcom/asus/reader/ui/CategoryItem;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1270
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1266
    const/4 v0, 0x1

    return v0
.end method

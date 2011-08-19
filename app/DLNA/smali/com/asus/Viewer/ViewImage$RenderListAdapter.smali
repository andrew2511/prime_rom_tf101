.class Lcom/asus/Viewer/ViewImage$RenderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;


# direct methods
.method public constructor <init>(Lcom/asus/Viewer/ViewImage;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$RenderListAdapter;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1130
    iput-object p2, p0, Lcom/asus/Viewer/ViewImage$RenderListAdapter;->mcontext:Landroid/content/Context;

    .line 1131
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$RenderListAdapter;->mcontext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage$RenderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1132
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$RenderListAdapter;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$3500(Lcom/asus/Viewer/ViewImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0xf

    .line 1149
    if-nez p2, :cond_0

    .line 1150
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage$RenderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1155
    .local v1, v:Landroid/view/View;
    :goto_0
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1156
    .local v0, tv:Landroid/widget/TextView;
    const/high16 v2, 0x4190

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1157
    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1158
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage$RenderListAdapter;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v2}, Lcom/asus/Viewer/ViewImage;->access$3500(Lcom/asus/Viewer/ViewImage;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    return-object v1

    .line 1152
    .end local v0           #tv:Landroid/widget/TextView;
    .end local v1           #v:Landroid/view/View;
    .restart local p0
    :cond_0
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

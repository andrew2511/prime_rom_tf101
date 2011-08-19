.class Lcom/amazon/kcp/info/InfoActivity$1;
.super Landroid/widget/ArrayAdapter;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/info/InfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/amazon/kcp/info/InfoActivity$InfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/info/InfoActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/InfoActivity;Landroid/content/Context;I[Lcom/amazon/kcp/info/InfoActivity$InfoItem;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/info/InfoActivity$1;->this$0:Lcom/amazon/kcp/info/InfoActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/amazon/kcp/info/InfoActivity$1;->this$0:Lcom/amazon/kcp/info/InfoActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/info/InfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, view:Landroid/view/View;
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/info/InfoActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    iget v2, p0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->textId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    return-object v0
.end method

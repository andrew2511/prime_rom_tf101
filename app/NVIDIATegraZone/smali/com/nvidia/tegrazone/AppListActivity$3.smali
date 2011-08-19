.class final Lcom/nvidia/tegrazone/AppListActivity$3;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/AppListActivity;->checkLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/AppListActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/AppListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/AppListActivity$3;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity$3;->this$0:Lcom/nvidia/tegrazone/AppListActivity;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/AppListActivity;->handleMoreClicked()V

    .line 573
    return-void
.end method

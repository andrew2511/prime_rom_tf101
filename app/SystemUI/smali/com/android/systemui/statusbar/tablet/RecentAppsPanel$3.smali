.class Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$3;
.super Ljava/lang/Object;
.source "RecentAppsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$800(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$000(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 396
    return-void
.end method

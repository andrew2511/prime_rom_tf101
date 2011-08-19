.class Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;
.super Ljava/lang/Object;
.source "RecentAppsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

.field final synthetic val$distanceFromBottom:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    iput p2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;->val$distanceFromBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$800(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    iget v1, v1, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mLastVisibleItem:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->access$800(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;->val$distanceFromBottom:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 349
    return-void
.end method

.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field final synthetic val$_id:I

.field final synthetic val$_pkg:Ljava/lang/String;

.field final synthetic val$_tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->val$_pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->val$_tag:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->val$_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1695
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->val$_pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->val$_tag:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->val$_id:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    :goto_0
    return-void

    .line 1696
    :catch_0
    move-exception v0

    goto :goto_0
.end method

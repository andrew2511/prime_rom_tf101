.class Lcom/android/systemui/statusbar/tablet/TabletTicker$1;
.super Ljava/lang/Object;
.source "TabletTicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletTicker;->makeTickerView(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletTicker;

.field final synthetic val$clicker:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletTicker;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker$1;->this$0:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker$1;->val$clicker:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker$1;->this$0:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker$1;->val$clicker:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 323
    return-void
.end method

.class Lcom/android/vending/AssetOverviewPanel$1;
.super Ljava/lang/Object;
.source "AssetOverviewPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetOverviewPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetOverviewPanel;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetOverviewPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel$1;->this$0:Lcom/android/vending/AssetOverviewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/AssetOverviewPanel$1$1;-><init>(Lcom/android/vending/AssetOverviewPanel$1;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/vending/AssetOverviewPanel$1$1;->start()V

    .line 233
    :cond_0
    return-void
.end method

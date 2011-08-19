.class Lcom/android/deskclock/DeskClock$10;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$10;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$10;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$1200(Lcom/android/deskclock/DeskClock;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$10;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1}, Lcom/android/deskclock/DeskClock;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.apps.genie.geniewidget"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 768
    .local v0, genieAppQuery:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 769
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$10;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

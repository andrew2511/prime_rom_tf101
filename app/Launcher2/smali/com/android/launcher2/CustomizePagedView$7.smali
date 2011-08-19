.class Lcom/android/launcher2/CustomizePagedView$7;
.super Ljava/lang/Object;
.source "CustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizePagedView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizePagedView;

.field final synthetic val$clickView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizePagedView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$7;->this$0:Lcom/android/launcher2/CustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher2/CustomizePagedView$7;->val$clickView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 631
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$7;->val$clickView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 632
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, createWallpapersIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .local v2, name:Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 636
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$7;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher2/CustomizePagedView;->access$200(Lcom/android/launcher2/CustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Launcher;->processWallpaper(Landroid/content/Intent;)V

    .line 637
    return-void
.end method

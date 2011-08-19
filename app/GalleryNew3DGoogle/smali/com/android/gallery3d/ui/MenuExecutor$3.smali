.class Lcom/android/gallery3d/ui/MenuExecutor$3;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;->createShareMenu(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$selectionManager:Lcom/android/gallery3d/ui/SelectionManager;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$3;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$3;->val$selectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$3;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$3;->val$component:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$3;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$3;->val$selectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$3;->val$mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$3;->val$component:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 227
    const/4 v0, 0x1

    return v0
.end method

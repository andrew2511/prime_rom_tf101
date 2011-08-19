.class Lcom/android/launcher2/Workspace$12;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$cellLayout:Lcom/android/launcher2/CellLayout;

.field final synthetic val$children:Lcom/android/launcher2/CellLayoutChildren;

.field final synthetic val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field final synthetic val$info:Lcom/android/launcher2/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayoutChildren;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2395
    iput-object p1, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$12;->val$children:Lcom/android/launcher2/CellLayoutChildren;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$12;->val$info:Lcom/android/launcher2/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$12;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iput-object p5, p0, Lcom/android/launcher2/Workspace$12;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->val$children:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$12;->val$info:Lcom/android/launcher2/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$12;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher2/Workspace$12;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutChildren;->addResizeFrame(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2399
    return-void
.end method

.class Lcom/google/android/youtube/core/ui/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/ui/Workspace;->setTabRow(Lcom/google/android/youtube/core/ui/TabRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/ui/Workspace;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/ui/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/Workspace$1;->this$0:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabClicked(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace$1;->this$0:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    .line 143
    return-void
.end method

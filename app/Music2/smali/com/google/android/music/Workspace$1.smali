.class Lcom/google/android/music/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/google/android/music/TabRow$OnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/Workspace;->setTabHolder(Lcom/google/android/music/TabRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/Workspace;


# direct methods
.method constructor <init>(Lcom/google/android/music/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/music/Workspace$1;->this$0:Lcom/google/android/music/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabClicked(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/music/Workspace$1;->this$0:Lcom/google/android/music/Workspace;

    invoke-virtual {v0, p1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 138
    return-void
.end method

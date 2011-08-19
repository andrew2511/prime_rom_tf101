.class Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;
.super Ljava/lang/Object;
.source "ActiveTabsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->notifyChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->access$402(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;Z)Z

    .line 208
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->notifyDataSetChanged()V

    .line 209
    return-void
.end method

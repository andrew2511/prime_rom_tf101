.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 998
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    if-eqz p1, :cond_0

    .line 1000
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 1001
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 1002
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1003
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1004
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method
